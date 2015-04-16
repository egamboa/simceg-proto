package org.una.simceg

class Estudiante {
	
	User encargado

	boolean activo = true, 
			adecuacion = false,
			viveEncargado = true

	String 	nombre,
			primerApellido,
			segundoApellido,
			direccion,
			tipoSangre,
			nacionalidad,
			cedula

	Date 	fechaIngreso,
			fechaNacimiento

    static constraints = {
    	cedula unique: true, blank: false
    }

    def getAge(){
    	Date.metaClass.getAge = { new Date().year - fechaNacimiento.year } 
		return new Date(79, 11, 17).age 
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