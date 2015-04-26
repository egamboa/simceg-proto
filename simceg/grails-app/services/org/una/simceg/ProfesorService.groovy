package org.una.simceg

import org.una.simceg.Grupo
import org.una.simceg.Profesor
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Transactional
class ProfesorService {
	
	def springSecurityService

    ArrayList gruposProfesor() {
		def user = springSecurityService.currentUser
		return Grupo.findAllByProfesor(Profesor.findByUsuario(user))
    }
}
