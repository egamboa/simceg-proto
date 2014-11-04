package org.una.simceg
import java.sql.Date


class Estudiante {
	
	Encargado encargado

	boolean activo, 
			television, 
			supervisionTv, 
			adecuacion, 
			haceTareas,
			alergias,
			ortopedicos,
			lentes,
			medicamentos,
			talla,
			problemasLenguaje

	String 	alimentacion, 
			tipoAdecuacion, 
			religion, 
			habilidades, 
			direccion,
			descAlergias,
			tipoSangre,
			nacionalidad

	Date 	fechaIngreso, 
			fechaSalida, 
			fechaNacimiento

	Integer horasDormir,
			horasTv

    static constraints = {
    }

}