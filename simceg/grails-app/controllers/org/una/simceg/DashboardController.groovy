package org.una.simceg

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN', 'ROLE_USER','ROLE_TEACHER'])
class DashboardController {
	
	def springSecurityService
	
    def index() {
		def user = springSecurityService.currentUser
		render(view: "index", model:[user: user])
	}
}
