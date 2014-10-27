import org.una.simceg.Role
import org.una.simceg.User
import org.apache.shiro.crypto.hash.Sha512Hash

class BootStrap {
   
    def shiroSecurityService
   
    def init = { servletContext ->
   
        def adminRole = new Role(name: "Administrador")
        adminRole.addToPermissions("*:*")
        adminRole.save()
       
		def employeeRole = new Role(name:"Empleado")
		employeeRole.addToPermissions("Home:index")
		employeeRole.save()
		
        def userRole = new Role(name:"Usuario")
        userRole.addToPermissions("Home:index")
        userRole.save()
       
        def admin = new User(username: "admin", passwordHash: new Sha512Hash("password").toHex())
        admin.addToRoles(adminRole)
        admin.save()
       
		def employee = new User(username: "profesor", passwordHash: new Sha512Hash("password").toHex())
		employee.addToRoles(employeeRole)
		employee.save()
		
        def user = new User(username: "padre", passwordHash: new Sha512Hash("password").toHex())
        user.addToRoles(userRole)
        user.save()
              
    }
   
    def destroy = {
    }
}