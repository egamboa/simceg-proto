package org.una.simceg



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class GrupoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Grupo.list(params), model:[grupoInstanceCount: Grupo.count()]
    }

    def show(Grupo grupoInstance) {
        respond grupoInstance
    }

    def create() {
        respond new Grupo(params)
    }

    @Transactional
    def save(Grupo grupoInstance) {
        if (grupoInstance == null) {
            notFound()
            return
        }

        if (grupoInstance.hasErrors()) {
            respond grupoInstance.errors, view:'create'
            return
        }

        grupoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'grupo.label', default: 'Grupo'), grupoInstance.id])
                redirect grupoInstance
            }
            '*' { respond grupoInstance, [status: CREATED] }
        }
    }

    def editar(Grupo grupoInstance) {
        respond grupoInstance
    }

    @Transactional
    def update(Grupo grupoInstance) {
        if (grupoInstance == null) {
            notFound()
            return
        }

        if (grupoInstance.hasErrors()) {
            respond grupoInstance.errors, view:'edit'
            return
        }

        grupoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Grupo.label', default: 'Grupo'), grupoInstance.descripcion])
                redirect grupoInstance
            }
            '*'{ respond grupoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Grupo grupoInstance) {

        if (grupoInstance == null) {
            notFound()
            return
        }

        grupoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Grupo.label', default: 'Grupo'), grupoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'grupo.label', default: 'Grupo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
