package org.una.simceg

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class NivelController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Nivel.list(params), model:[nivelInstanceCount: Nivel.count()]
    }

    def show(Nivel nivelInstance) {
        redirect(controllerName: 'index')
    }

    def create() {
        respond new Nivel(params)
    }

    @Transactional
    def save(Nivel nivelInstance) {
        if (nivelInstance == null) {
            notFound()
            return
        }
        if (nivelInstance.hasErrors()) {
            respond nivelInstance.errors, view:'create'
            return
        }

        nivelInstance.save failOnError:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'nivel.label', default: 'Nivel'), nivelInstance.id])
                redirect nivelInstance
            }
            '*' { respond nivelInstance, [status: CREATED] }
        }
    }

    def edit(Nivel nivelInstance) {
        respond nivelInstance
    }

    @Transactional
    def update(Nivel nivelInstance) {
        if (nivelInstance == null) {
            notFound()
            return
        }

        if (nivelInstance.hasErrors()) {
            respond nivelInstance.errors, view:'edit'
            return
        }

        nivelInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Nivel.label', default: 'Nivel'), nivelInstance.id])
                redirect nivelInstance
            }
            '*'{ respond nivelInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Nivel nivelInstance) {

        if (nivelInstance == null) {
            notFound()
            return
        }

        nivelInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Nivel.label', default: 'Nivel'), nivelInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'nivel.label', default: 'Nivel'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
