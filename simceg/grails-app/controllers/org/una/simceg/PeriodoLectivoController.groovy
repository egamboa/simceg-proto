package org.una.simceg



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

import grails.plugin.springsecurity.annotation.Secured
@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class PeriodoLectivoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PeriodoLectivo.list(params), model:[periodoLectivoInstanceCount: PeriodoLectivo.count()]
    }

    def show(PeriodoLectivo periodoLectivoInstance) {
        respond periodoLectivoInstance
    }

    def create() {
        respond new PeriodoLectivo(params)
    }

    @Transactional
    def save(PeriodoLectivo periodoLectivoInstance) {
        if (periodoLectivoInstance == null) {
            notFound()
            return
        }

        if (periodoLectivoInstance.hasErrors()) {
            respond periodoLectivoInstance.errors, view:'create'
            return
        }

        periodoLectivoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'periodoLectivo.label', default: 'PeriodoLectivo'), periodoLectivoInstance.id])
                redirect periodoLectivoInstance
            }
            '*' { respond periodoLectivoInstance, [status: CREATED] }
        }
    }

    def edit(PeriodoLectivo periodoLectivoInstance) {
        respond periodoLectivoInstance
    }

    @Transactional
    def update(PeriodoLectivo periodoLectivoInstance) {
        if (periodoLectivoInstance == null) {
            notFound()
            return
        }

        if (periodoLectivoInstance.hasErrors()) {
            respond periodoLectivoInstance.errors, view:'edit'
            return
        }

        periodoLectivoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PeriodoLectivo.label', default: 'PeriodoLectivo'), periodoLectivoInstance.id])
                redirect periodoLectivoInstance
            }
            '*'{ respond periodoLectivoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PeriodoLectivo periodoLectivoInstance) {

        if (periodoLectivoInstance == null) {
            notFound()
            return
        }

        periodoLectivoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PeriodoLectivo.label', default: 'PeriodoLectivo'), periodoLectivoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'periodoLectivo.label', default: 'PeriodoLectivo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
