package org.una.simceg

import grails.plugin.springsecurity.annotation.Secured
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import org.una.simceg.User
import grails.converters.JSON
import groovy.json.StringEscapeUtils

@Transactional(readOnly = true)
class MensajeController {

    def springSecurityService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    @Secured(['ROLE_ADMIN', 'ROLE_USER','ROLE_TEACHER'])
    def index(Integer max) {
        def util = new StringEscapeUtils()
        def user = springSecurityService.currentUser
        ArrayList users = User.where{ id != user.id }.list()
        ArrayList mensajes = Mensaje.findAllByEmisorOrReceptor(user, user)
        def mensajesJson = mensajes as JSON
        mensajesJson =  util.escapeJavaScript(mensajesJson.toString())
        render view: 'index', model:[
                                    mensajes: mensajesJson, 
                                    mensajeInstanceCount: mensajes.size(), 
                                    currentUser: user,
                                    users: users,
                                    activeChat: params.activeChat ? params.activeChat : null
                                    ]
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

    @Secured(['ROLE_ADMIN', 'ROLE_USER','ROLE_TEACHER'])
    @Transactional
    def changeStatus(){
        def mensajes = JSON.parse(params.mensajes)
        Mensaje elMensaje
        mensajes.each{id ->
            elMensaje = Mensaje.get(id)
            elMensaje.visto = true
            elMensaje.save(failOnError: true)
        }
        response.status = 200
        render 'success'  
    }

    @Secured(['ROLE_ANONYMOUS','ROLE_ADMIN', 'ROLE_USER','ROLE_TEACHER'])
    def getChats(){
        def chats = JSON.parse(params.chats)
        ArrayList fullChats = []
        User user
        chats.each{it->
            user = User.get(it)
            fullChats.add([
                    id:user.id,
                    nombre:user.nombreCompleto(), 
                    rol: user.getAuthorities()[0].toString()
                    ])
        }
        render fullChats as JSON
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
                redirect action:'index', params: [activeChat:mensajeInstance.receptor.id]
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
