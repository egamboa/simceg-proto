package org.una.simceg

class Grupo {
	
	String descripcion
	Integer anio
	Nivel nivel
	PeriodoLectivo periodo
	
	static hasMany = [materias: Materia, estudiantes: Estudiante]
	
    static constraints = {
    }
}
