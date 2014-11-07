package org.una.simceg

class Estudiante {
	
	User encargado

	boolean activo = true, 
			adecuacion,
			viveEncargado

	String 	nombre,
			primerApellido,
			segundoApellido,
			direccion,
			tipoSangre,
			nacionalidad

	Date 	fechaIngreso,
			fechaNacimiento

    static constraints = {
    }
	
	def nombreCompleto(){
		nombre + ' ' + primerApellido + ' ' + segundoApellido
	}

}