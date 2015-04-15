package org.una.simceg
import grails.plugin.springsecurity.annotation.Secured
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured(['ROLE_ANONYMOUS'])
class RegisterController extends grails.plugin.springsecurity.ui.RegisterController {
	
}
