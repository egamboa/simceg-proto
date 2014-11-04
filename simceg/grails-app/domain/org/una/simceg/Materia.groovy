package org.una.simceg

class Materia {
	
	CatalogoMateria materia
	Profesor profesor
	
	static belongsTo = [grupo:Grupo]

    static constraints = {
    }
	
}
