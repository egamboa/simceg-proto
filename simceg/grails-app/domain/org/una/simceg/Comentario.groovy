package org.una.simceg

class Comentario {

	int ciclo
	String comentario
	Grupo grupo
	Estudiante estudiante

    static constraints = {

    }

	static mapping = {
		comentario type: 'text'
    }
}