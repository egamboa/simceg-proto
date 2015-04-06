package org.una.simceg

class Nivel {
	
	String descripcion
	int ciclos
	
    static constraints = {
    }
    static hasMany = [materias: Materia]

    String listaMaterias(){
    	String result = ""
    	materias.eachWithIndex{ it, index ->
    		result += it
    		if(materias.size() > (index + 1))
    			result += ", "
    	}
    	return result
    }

    String toString(){
        descripcion
    }
}
