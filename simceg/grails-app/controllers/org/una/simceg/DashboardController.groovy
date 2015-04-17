package org.una.simceg

import grails.converters.*
import org.una.simceg.Evento
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN', 'ROLE_USER','ROLE_TEACHER'])
class DashboardController {
	
	def springSecurityService
	
    def index() {
		def user = springSecurityService.currentUser
		render(view: "index", model:[user: user])
	}
	
	def eventos(){
		//render(view:'eventos')
	}

	def mensajes(){
		render(view:'mensajes')
	}

	def nuevoMensaje(){
		render(view:'nuevoMensaje')
	}

	def nuevoEvento(){
		render(view: 'nuevoEvento')
	}

	def calificar(){
		render(view:'calificar')
	}
	
	def calendario(){
		ArrayList eventos = Evento.list()
		render(view: 'calendar', model:[eventos: eventos as JSON])
	}
	
	def estudiantes(){
		render(view: 'estudiantes')
	}

	def notas(){
		def user = springSecurityService.currentUser
		render(view:'notas', model:[user: user])
	}
}
