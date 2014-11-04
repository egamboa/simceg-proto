package org.una.simceg

import java.sql.Date

class Profesor {
	
	User usuario
	
	boolean activo
	
	String 	gradoProfesional,
			descripcion

	Date 	fechaIngreso, 
			fechaSalida

    static constraints = {
		
    }
}