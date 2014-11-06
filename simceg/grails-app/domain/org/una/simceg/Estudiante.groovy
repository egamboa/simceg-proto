package org.una.simceg
import java.util.Date


class Estudiante {
	
	User encargado

	boolean activo, 
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

}