package org.una.simceg

import grails.converters.*
import org.una.simceg.Evento
import org.una.simceg.Mensaje
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN', 'ROLE_USER','ROLE_TEACHER'])
class DashboardController {
	
	def springSecurityService
	
    def index() {
    	def user = springSecurityService.currentUser

    	def today = new Date().clearTime()
		ArrayList eventos = Evento.withCriteria {
		    ge('tiempoInicio', today.minus(15))
		    lt('tiempoInicio', today.plus(15))
		}

		ArrayList mensajes = Mensaje.withCriteria {
			eq('receptor', user)
			eq('visto', false)
		}

		ArrayList notificaciones = eventos + mensajes

		render(view: "index", model:[notificaciones:notificaciones, eventosCount:eventos.size(), mensajesCount: mensajes.size()])
	}

	def calendario(){
		ArrayList eventos = Evento.list()
		render(view: 'calendar', model:[eventos: eventos as JSON])
	}
}
