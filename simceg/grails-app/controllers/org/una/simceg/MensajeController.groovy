package org.una.simceg

import grails.plugin.springsecurity.annotation.Secured
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.una.simceg.User

@Transactional(readOnly = true)
class MensajeController {

    def springSecurityService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Mensaje.list(params), model:[mensajeInstanceCount: Mensaje.count()]
    }

    def show(Mensaje mensajeInstance) {
        respond mensajeInstance
    }

    @Secured(['ROLE_ADMIN', 'ROLE_USER','ROLE_TEACHER'])
    def create() {
        ArrayList users = User.list()
        def user = springSecurityService.currentUser
        users.remove(user)
        respond new Mensaje(params), model: [users: users]
    }

    def checkStatus(){
        render ":D"
    }

    @Secured(['ROLE_ADMIN', 'ROLE_USER','ROLE_TEACHER'])
    @Transactional
    def save(Mensaje mensajeInstance) {
        if (mensajeInstance == null) {
            notFound()
            return
        }
        def user = springSecurityService.currentUser
        mensajeInstance.emisor = user
        mensajeInstance.fechaEnvio = new Date()

        if (mensajeInstance.hasErrors()) {
            respond mensajeInstance.errors, view:'create'
            return
        }

        mensajeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'mensaje.label', default: 'Mensaje'), mensajeInstance.id])
                redirect mensajeInstance
            }
            '*' { respond mensajeInstance, [status: CREATED] }
        }
    }

    def edit(Mensaje mensajeInstance) {
        respond mensajeInstance
    }

    @Transactional
    def update(Mensaje mensajeInstance) {
        if (mensajeInstance == null) {
            notFound()
            return
        }

        if (mensajeInstance.hasErrors()) {
            respond mensajeInstance.errors, view:'edit'
            return
        }

        mensajeInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Mensaje.label', default: 'Mensaje'), mensajeInstance.id])
                redirect mensajeInstance
            }
            '*'{ respond mensajeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Mensaje mensajeInstance) {

        if (mensajeInstance == null) {
            notFound()
            return
        }

        mensajeInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Mensaje.label', default: 'Mensaje'), mensajeInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'mensaje.label', default: 'Mensaje'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
