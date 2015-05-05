package org.una.simceg

import org.una.simceg.Estudiante
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Transactional
class EncargadoService {
	
	def springSecurityService

    ArrayList hijos() {
    	def user = springSecurityService.currentUser
		return Estudiante.findAllByEncargado(user)
    }
}
