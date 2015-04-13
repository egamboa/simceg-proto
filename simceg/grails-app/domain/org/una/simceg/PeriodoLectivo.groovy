package org.una.simceg

class PeriodoLectivo {
	
	String descripcion
	Date tiempoInicio, tiempoFinal
	Integer anio
	
    static constraints = {
    	anio unique: true
    }
    
    String toString(){
        descripcion
    }
}
