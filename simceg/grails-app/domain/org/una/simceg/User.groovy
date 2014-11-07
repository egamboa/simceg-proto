package org.una.simceg

class User {

	transient springSecurityService

	String username, password, 
		   nombre = "", 
		   primerApellido = "", 
		   segundoApellido = "", 
		   telefono = "", 
		   cedula = "", 
		   email = "", 
		   direccion = "", 
		   nacionalidad = "",
		   estadoCivil = ""
	
	boolean enabled = true
	
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	static transients = ['springSecurityService']

	static constraints = {
		username blank: false, unique: true
		password blank: false
	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role }
	}

	def beforeInsert() {
		encodePassword()
	}
	
	def nombreCompleto(){
		nombre + ' ' + primerApellido + ' ' + segundoApellido
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}
}
