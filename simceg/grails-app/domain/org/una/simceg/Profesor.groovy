package org.una.simceg

class Profesor {
	
	User usuario
	
	boolean activo
	
	String 	gradoProfesional,
			descripcion

	Date 	fechaIngreso, 
			fechaSalida

    static constraints = {
		fechaSalida nullable: true
    }

    String toString(){
    	return usuario?.nombreCompleto()
    }
}