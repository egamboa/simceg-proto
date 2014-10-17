package com.una.simceg
import java.sql.Date

class Student {
	boolean enabled
	User encargado
	String name
	String email
	byte[] avatar
	String avatarType
	Date date
    static constraints = {
		avatar nullable:true ,maxSize:307200 /* 300kb*/
		avatarType nullable: true
		name blank:false 
		email blank:false ,email:true ,unique:true
    }
	public String toString(){
		return this.name
	}
	static mapping = {
		enabled defaultValue: 1
	} 
}
