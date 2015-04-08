package org.una.simceg

class Estudiante {
	
	User encargado

	boolean activo = true, 
			adecuacion = false,
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
	
	String nombreCompleto(){
		nombre + ' ' + primerApellido + ' ' + segundoApellido
	}

	String toString(){
		nombre + ' ' + primerApellido + ' ' + segundoApellido
	}
	static mapping = {
        sort "primerApellido"
    }
}