package org.una.simceg

import java.sql.Date

class Empleado {

	boolean activo
	
	String 	nombre, 
			email, 
			avatarType, 
			telefono, 
			direccion,
			gradoProfesional,
			descripcion,
			nacionalidad

	byte[] avatar

	Date 	fechaIngreso, 
			fechaSalida, 
			fechaNacimiento

    static constraints = {
		avatar nullable:true ,maxSize:307200 /* 300kb*/
		avatarType nullable: true
		nombre blank:false 
		email blank:false ,email:true ,unique:true
    }
	public String toString(){
		return this.name
	}
}