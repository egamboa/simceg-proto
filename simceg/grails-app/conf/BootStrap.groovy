import java.util.Date;

import org.una.simceg.Role
import org.una.simceg.User
import org.una.simceg.UserRole
import org.una.simceg.Estudiante
import org.una.simceg.PeriodoLectivo
import org.una.simceg.Nivel
import org.una.simceg.Grupo
import org.una.simceg.Mensaje
import org.una.simceg.Materia
import org.una.simceg.Profesor
import grails.converters.JSON

class BootStrap {

    def init = { servletContext ->
    	TimeZone.setDefault(TimeZone.getTimeZone("GMT-6")) 
    	JSON.registerObjectMarshaller(Date) {
			return it?.format("yyyy-MM-dd'T'HH:mm:ssZ")
		}
    	JSON.registerObjectMarshaller( Mensaje ) { Mensaje mensaje ->
		    return [
		            id : mensaje.id,
		            emisor: mensaje.emisor,
		            receptor: mensaje.receptor,
		            fechaEnvio: mensaje.fechaEnvio.format("d-M-y | K:m a"),
		            visto: mensaje.visto,
		            mensaje: mensaje.mensaje
		    ]
		}
		
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
									email: 'estebangam1@gmail.com',
									nacionalidad: 'Costarricense',
									estadoCivil: 'soltero'
									)
			testUser.save flush: true
			UserRole.create testUser, userRole, true
			
			def testAdmin = new User(username: 'admin', 
									password: 'admin',
									cedula: '1111-1112',
									direccion: 'Alguna dirección',
									nombre: 'Juan',
									primerApellido: 'Vargas',
									segundoApellido: 'Sanchez',
									telefono: '8888-8888',
									email: 'estebangam1@gmail.com',
									nacionalidad: 'Costarricense',
									estadoCivil: 'soltero'
									)
			testAdmin.save flush: true
			UserRole.create testAdmin, adminRole, true
			
			def testProfe = new User(username: 'profe', 
									password: 'profe',
									cedula: '1111-1113',
									direccion: 'Alguna dirección',
									nombre: 'Juana',
									primerApellido: 'Vargas',
									segundoApellido: 'Sanchez',
									telefono: '8888-8888',
									email: 'estebangam1@gmail.com',
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
				cedula: '1111-1111',
				nacionalidad: 'Costarricense',
				fechaIngreso: new Date(114, 0, 1),
				fechaNacimiento: new Date(105, 0, 1),
				encargado: testUser
				)
			 
			testEstudiante.save flush: true, failOnError: true
			 
			def testEstudiante2 = new Estudiante(
				 nombre: 'Cesar',
				 primerApellido: 'Yada',
				 segundoApellido: 'Perez',
				 direccion: 'Algun lugar',
				 tipoSangre: 'o+',
				 cedula: '1111-1112',
				 nacionalidad: 'Costarricense',
				 fechaIngreso: new Date(114, 0, 1),
				 fechaNacimiento: new Date(105, 0, 1),
				 encargado: testUser
				)
			  
			testEstudiante2.save flush: true, failOnError: true

			assert Estudiante.count() == 2
			assert User.count() == 3
			assert Role.count() == 3
			assert UserRole.count() == 3
		}
		
		if(Materia.count() == 0 ){
			ArrayList materias = ['Matematicas', 'Estudios Sociales', 'Ciencias', 'Español', 'Ingles', 'Música']
			materias.each { materia->
				new Materia(descripcion: materia).save flush: true
			}
			assert Materia.count() == 6
		}
		
		if( PeriodoLectivo.count() == 0 && Nivel.count() == 0 && Grupo.count() == 0 && Profesor.count() == 0 ){
			
			def periodo = new PeriodoLectivo(descripcion:'Perido 2014', tiempoInicio: new Date(114, 0, 1), tiempoFinal: new Date(114, 11, 31), anio: 2014 )
			periodo.save flush: true
			
			ArrayList niveles = ['Primero', 'Segundo', 'Tercero', 'Cuarto', 'Quinto', 'Sexto']
			niveles.each{ nivel ->
				new Nivel(descripcion: nivel, ciclos: 3, periodo: periodo).save flush: true
			}
			
			def profesor = new Profesor(activo: true, 
										usuario: User.findById(3),
										gradoProfesional: 'Master', 
										descripcion: 'Soy un profesor buenisimo', 
										fechaIngreso: new Date(114, 0, 1), 
										fechaSalida: null )
			profesor.save flush: true
			
			def grupo = new Grupo(descripcion:'1-A', periodo: periodo, nivel: Nivel.findByDescripcion('Primero'), profesor:profesor)
			grupo.save flush: true, failOnError: true

			assert PeriodoLectivo.count() == 1
			assert Profesor.count() == 1
			assert Grupo.count() == 1
			assert Nivel.count() == 6
		}
    }
    def destroy = {
    }
}
