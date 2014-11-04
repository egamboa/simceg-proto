import org.una.simceg.Role
import org.una.simceg.User
import org.una.simceg.UserRole

class BootStrap {

    def init = { servletContext ->
		
		def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
		def teacherRole = new Role(authority: 'ROLE_TEACHER').save(flush: true)		
		def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
  
		def testUser = new User(username: 'padre', password: 'password1')
		testUser.save flush: true, failOnError: true 
		UserRole.create testUser, userRole, true
		
		def testAdmin = new User(username: 'admin', password: 'password2')
		testAdmin.save flush: true, failOnError: true
		UserRole.create testAdmin, adminRole, true
		
		def testProfe = new User(username: 'profe', password: 'password3')
		testProfe.save flush: true, failOnError: true
		UserRole.create testProfe, teacherRole, true
  
		assert User.count() == 3
		assert Role.count() == 3
		assert UserRole.count() == 3
    }
    def destroy = {
    }
}
