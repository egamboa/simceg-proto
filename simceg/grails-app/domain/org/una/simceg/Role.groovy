package org.una.simceg

class Role {

	String authority

	static mapping = {
		cache true
	}

	static constraints = {
		authority blank: false, unique: true
	}

	String toString(){
		if(this.authority == "ROLE_ADMIN"){
			return 'Administrador'
		}
		if(this.authority == "ROLE_TEACHER"){
			return 'Profesor'
		}
		if(this.authority == "ROLE_USER"){
			return 'Encargado'
		}
	}
}
