package com.una.simceg

class Role {

	String authority

	static mapping = {
		cache true
	}

	static constraints = {
		authority blank: false, unique: true
	}
	public String toString(){
		return this.authority
	}
}
