package org.una.simceg

class Mensaje {
	String mensaje
	User emisor, receptor
	Date fechaEnvio
	Boolean visto = false
	
    static mapping = {
        mensaje type: 'text'
        visto defaultValue: false
        sort fechaEnvio: "asc"
    }
    static constraints = {
    	mensaje 	maxSize: 500
    	emisor 		nullable: true
    	fechaEnvio 	nullable: true
    	visto 		nullable: true
    }
}
