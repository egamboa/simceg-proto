package com.una.simceg
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
import grails.plugin.springsecurity.SpringSecurityService

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN','ROLE_USER','ROLE_EDITOR'])
class IndexController {
	SpringSecurityService springSecurityService
    def index() {        
        def roles = springSecurityService.getPrincipal().getAuthorities()
        for(def role in roles){
         if(role.getAuthority() == "ROLE_EDITOR"){ 
            redirect(action: "maintenance")
         }
        } 
        User currentLoggedInUser = springSecurityService.getCurrentUser();
    	Student currentStudent = Student.findByEmail(currentLoggedInUser.email)
        render(view:"index", model:[
            currentStudent:currentLoggedInUser,
            allStudents:Student.listOrderByName()])   
    }
    def maintenance(){
        User currentLoggedInUser = springSecurityService.getCurrentUser();
    	Student currentStudent = Student.findByEmail(currentLoggedInUser.email)
        render(view:"maintenance", model:[
    
            allUsers:User.list(),
            StudentInstanceCount: Student.count(),
            currentStudent:currentStudent,
            allStudents:Student.listOrderByName()]) 

    }
}
