package org.una.simceg

import org.una.simceg.Grupo
import org.una.simceg.Nivel
import org.una.simceg.Nota
import org.una.simceg.Comentario
import org.una.simceg.PeriodoLectivo
import grails.converters.JSON
import groovy.json.StringEscapeUtils
import grails.transaction.Transactional
import static org.springframework.http.HttpStatus.*
import grails.plugin.springsecurity.annotation.Secured

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN'])
class EstudianteController {

    static allowedMethods = [save: "POST", salvaComentario: "POST", salvarNota: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Estudiante.list(params), model:[estudianteInstanceCount: Estudiante.count()]
    }
	@Secured(['ROLE_TEACHER', 'ROLE_ADMIN'])
    def show(Estudiante estudianteInstance) {
        respond estudianteInstance
    }

    def create() {
        respond new Estudiante(params)
    }

    @Transactional
    def save(Estudiante estudianteInstance) {
        if (estudianteInstance == null) {
            notFound()
            return
        }

        if (estudianteInstance.hasErrors()) {
            respond estudianteInstance.errors, view:'create'
            return
        }

        estudianteInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'estudiante.label', default: 'Estudiante'), estudianteInstance.toString()])
                redirect estudianteInstance
            }
            '*' { respond estudianteInstance, [status: CREATED] }
        }
    }

    def edit(Estudiante estudianteInstance) {
        respond estudianteInstance
    }

    @Transactional
    def update(Estudiante estudianteInstance) {
        if (estudianteInstance == null) {
            notFound()
            return
        }

        if (estudianteInstance.hasErrors()) {
            respond estudianteInstance.errors, view:'edit'
            return
        }

        estudianteInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Estudiante.label', default: 'Estudiante'), estudianteInstance.nombre])
                redirect estudianteInstance
            }
            '*'{ respond estudianteInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Estudiante estudianteInstance) {

        if (estudianteInstance == null) {
            notFound()
            return
        }

        estudianteInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Estudiante.label', default: 'Estudiante'), estudianteInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'estudiante.label', default: 'Estudiante'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    @Transactional
    @Secured(['ROLE_TEACHER', 'ROLE_ADMIN'])
    def calificar(Estudiante estudianteInstance) {
        def util = new StringEscapeUtils()
        Grupo grupo = Grupo.get(params.grupo)
        ArrayList materias = grupo?.nivel?.materias
        ArrayList comentarios = Comentario.findAllByEstudianteAndGrupo(estudianteInstance, grupo)
        ArrayList notas = Nota.findAllByEstudianteAndGrupo(estudianteInstance, grupo)

        def comentariosJson = comentarios as JSON
        comentariosJson =  util.escapeJavaScript(comentariosJson.toString())

        respond estudianteInstance, model : [
                                            grupo: grupo, 
                                            materias: materias.sort { it.descripcion }, 
                                            notas: notas as JSON, 
                                            comentarios: comentariosJson
                                            ]
    }

    @Transactional
    @Secured(['ROLE_TEACHER', 'ROLE_ADMIN'])
    def salvarNota() {
        Nota nuevaNota = Nota.get(params.id)
        if(nuevaNota){
            nuevaNota.properties = params
        }else{
            nuevaNota = new Nota(params)
        }
        nuevaNota.save flush:true
        response.status = 200
        render 'success' 
    }

    @Transactional
    @Secured(['ROLE_TEACHER', 'ROLE_ADMIN'])
    def salvaComentario() {
        print params.hola
        response.status = 200
        render 'success' 
    }
}
