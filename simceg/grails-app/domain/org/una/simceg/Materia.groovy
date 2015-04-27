package org.una.simceg

class Materia {

	String descripcion

    static constraints = {
    }

    static mapping = {
        sort "descripcion"
    }

    String toString(){
    	return descripcion
    }
}
