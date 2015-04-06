package org.una.simceg

class Grupo {
	
	String descripcion
	Nivel nivel
	PeriodoLectivo periodo
	Profesor profesor
	
	static hasMany = [estudiantes: Estudiante]
	
    static constraints = {
    }

}
