import java.util.Date;

import org.una.simceg.Role
import org.una.simceg.User
import org.una.simceg.UserRole
import org.una.simceg.Estudiante
import org.una.simceg.CatalogoMateria
import org.una.simceg.PeriodoLectivo
import org.una.simceg.Nivel
import org.una.simceg.Grupo
import org.una.simceg.Materia
import org.una.simceg.Profesor

class BootStrap {

    def init = { servletContext ->
		
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
		
		if(CatalogoMateria.count() == 0 ){
			ArrayList materias = ['Matemáticas', 'Estudios Sociales', 'Ciencias', 'Español', 'Ingles', 'Música']
			materias.each { materia->
				new CatalogoMateria(descripcion: materia).save flush: true
			}
		}
		
		if( PeriodoLectivo.count() == 0 && Nivel.count() == 0 && Grupo.count() == 0 && Materia.count() == 0 && Profesor.count() == 0 ){
			
			def periodo = new PeriodoLectivo(descripcion:'Perido 2014', tiempoInicio: new Date(114, 0, 1), tiempoFinal: new Date(114, 11, 31), anio: 2014 )
			periodo.save flush: true
			
			ArrayList niveles = ['Primero', 'Segundo', 'Tercero', 'Cuarto', 'Quinto', 'Sexto']
			niveles.each{ nivel ->
				new Nivel(descripcion: nivel).save flush: true
			}
			
			def grupo = new Grupo(descripcion:'1-A', periodo: periodo, nivel: Nivel.findByDescripcion('Primero'))
			grupo.save flush: true
			
			def profesor = new Profesor(activo: true, 
										gradoProfesional: 'Master', 
										descripcion: 'Soy un profesor buenisimo', 
										fechaIngreso: new Date(114, 0, 1), 
										fechaSalida: null )
			profesor.save flush: true
			
			def materia = new Materia(profesor: profesor, 
									  materia: CatalogoMateria.findByDescripcion('Primero'))
			materia.save flush: true
			
		}
		
		assert Materia.count() == 1
		assert Profesor.count() == 1
		assert PeriodoLectivo.count() == 1
		assert Nivel.count() == 6
		assert Grupo.count() == 1
		assert CatalogoMateria.count() == 6
		assert Estudiante.count() == 1
		assert User.count() == 3
		assert Role.count() == 3
		assert UserRole.count() == 3
    }
    def destroy = {
    }
}
