package org.una.simceg

class Comunicacion {
	
	User usuarioA, usuarioB
	
	String asunto
	
	static hasMany = [mensajes: Mensaje]
	
    static constraints = {
    }
}
