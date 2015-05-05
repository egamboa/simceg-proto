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

	byte[] avatar
  	String avatarType

	static transients = ['springSecurityService']

	static constraints = {
		username blank: false, unique: true
		password blank: false
		cedula unique: true, blank: false
		email email: true, blank: false
		avatar(nullable:true, maxSize: 16384 /* 16K */)
    	avatarType(nullable:true)
	}

	static mapping = {
		password column: '`password`'
		sort "primerApellido"
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role }
	}

	def beforeInsert() {
		encodePassword()
	}
	
	String nombreCompleto(){
		nombre + ' ' + primerApellido + ' ' + segundoApellido
	}

	String toString(){
		return this.nombreCompleto()
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
