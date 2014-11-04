package org.una.simceg



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

import grails.plugin.springsecurity.annotation.Secured

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class EncargadoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Encargado.list(params), model:[encargadoInstanceCount: Encargado.count()]
    }

    def show(Encargado encargadoInstance) {
        respond encargadoInstance
    }

    def create() {
        respond new Encargado(params)
    }

    @Transactional
    def save(Encargado encargadoInstance) {
        if (encargadoInstance == null) {
            notFound()
            return
        }

        if (encargadoInstance.hasErrors()) {
            respond encargadoInstance.errors, view:'create'
            return
        }

        encargadoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'encargado.label', default: 'Encargado'), encargadoInstance.id])
                redirect encargadoInstance
            }
            '*' { respond encargadoInstance, [status: CREATED] }
        }
    }

    def edit(Encargado encargadoInstance) {
        respond encargadoInstance
    }

    @Transactional
    def update(Encargado encargadoInstance) {
        if (encargadoInstance == null) {
            notFound()
            return
        }

        if (encargadoInstance.hasErrors()) {
            respond encargadoInstance.errors, view:'edit'
            return
        }

        encargadoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Encargado.label', default: 'Encargado'), encargadoInstance.id])
                redirect encargadoInstance
            }
            '*'{ respond encargadoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Encargado encargadoInstance) {

        if (encargadoInstance == null) {
            notFound()
            return
        }

        encargadoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Encargado.label', default: 'Encargado'), encargadoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'encargado.label', default: 'Encargado'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
