package org.una.simceg
import java.sql.Date


class Estudiante {
	
	Encargado encargado

	boolean activo, 
			adecuacion

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