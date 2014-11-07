import org.una.simceg.Role
import org.una.simceg.User
import org.una.simceg.UserRole
import org.una.simceg.Estudiante
import org.una.simceg.CatalogoMateria

class BootStrap {

    def init = { servletContext ->
		
		if(CatalogoMateria.count() == 0 ){
			ArrayList materias = ['Matemáticas', 'Estudios Sociales', 'Ciencias', 'Español', 'Ingles', 'Música']
			materias.each { it->
				new CatalogoMateria(descripcion: it).save flush: true
			}
		}
		
		assert CatalogoMateria.count() == 6
		
		if(Role.count() == 0 && User.count() == 0 && Estudiante.count() == 0){
			def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
			def teacherRole = new Role(authority: 'ROLE_TEACHER').save(flush: true)		
			def userRole = new Role(authority: 'ROLE_USER').save(flush: true)
			
			def testUser = new User(username: 'padre', 
									password: 'padre', 
									cedula: '1111-1111', 
									direccion: 'Alguna dirección', 
									nombre: 'Ramesh', 
									primerApellido: 'Yada',
									segundoApellido: 'Sanchez',
									telefono: '8888-8888',
									email: 'algun@email.com',
									nacionalidad: 'Costarricense',
									estadoCivil: 'soltero'
									)
			testUser.save flush: true
			UserRole.create testUser, userRole, true
			
			def testAdmin = new User(username: 'admin', 
									password: 'admin',
									cedula: '1111-1111',
									direccion: 'Alguna dirección',
									nombre: 'Juan',
									primerApellido: 'Vargas',
									segundoApellido: 'Sanchez',
									telefono: '8888-8888',
									email: 'algun@email.com',
									nacionalidad: 'Costarricense',
									estadoCivil: 'soltero'
									)
			testAdmin.save flush: true
			UserRole.create testAdmin, adminRole, true
			
			def testProfe = new User(username: 'profe', 
									password: 'profe',
									cedula: '1111-1111',
									direccion: 'Alguna dirección',
									nombre: 'Juana',
									primerApellido: 'Vargas',
									segundoApellido: 'Sanchez',
									telefono: '8888-8888',
									email: 'algun@email.com',
									nacionalidad: 'Costarricense',
									estadoCivil: 'soltero'
									)
			testProfe.save flush: true
			UserRole.create testProfe, teacherRole, true
				
			def testEstudiante = new Estudiante(
				nombre: 'Pablo',
				primerApellido: 'Yada',
				segundoApellido: 'Perez',
				direccion: 'Algun lugar',
				tipoSangre: 'o+',
				nacionalidad: 'Costarricense',
				fechaIngreso: new Date(114, 0, 1),
				fechaNacimiento: new Date(105, 0, 1),
				encargado: testUser
				)
			 
			 testEstudiante.save flush: true, failOnError: true
			
		}
		
		assert Estudiante.count() == 1
		assert User.count() == 3
		assert Role.count() == 3
		assert UserRole.count() == 3
    }
    def destroy = {
    }
}
