package com.una.simceg
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured

@Transactional(readOnly = true)
@Secured(['ROLE_ADMIN', 'ROLE_USER','ROLE_EDITOR'])
class StudentController {
    def list =[]
    static allowedMethods = [save: "POST", update: "POST"]
    
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Student.list(params), model:[StudentInstanceCount: Student.count()]
    }

    def show(Student StudentInstance) {
        respond StudentInstance
    }
     def searchAJAX = {
        def members = Student.findAllByNameLike("%${params.query}%")

        //Create XML response
        render(contentType: "text/xml") {
        results() {
            members.each { member ->
            result(){
                        name(member.name)
                        id(member.id)
                        email(member.email)
            }
        }
            }
        }
    }
    @Secured(['ROLE_ADMIN','ROLE_EDITOR'])
    def create() {
        respond new Student(params)
    }

    def avatar_image() {
          def avatarUser = Student.get(params.id)
          if (!avatarUser || !avatarUser.avatar || !avatarUser.avatarType) {
            response.sendError(404)
            return
          }
          response.contentType = avatarUser.avatarType
          response.contentLength = avatarUser.avatar.size()
          OutputStream out = response.outputStream
          out.write(avatarUser.avatar)
          out.close()
        }

    private static final okcontents = ['image/png', 'image/jpeg', 'image/gif']    
    @Transactional
    @Secured(['ROLE_ADMIN','ROLE_EDITOR'])
    def save(Student StudentInstance) {
        if (StudentInstance == null) {
            notFound()
            return
        }

        if (StudentInstance.hasErrors()) {
            respond StudentInstance.errors, view:'create'
            return
        }
        if(StudentInstance.avatar){
            def f = request.getFile('avatar')
            if (!okcontents.contains(f.getContentType())) {
                flash.message = "Avatar must be one of: ${okcontents}"
                render(view:'select_avatar', model:[userInstance:user])
                return
            }
            StudentInstance.avatar = f.bytes
            StudentInstance.avatarType = f.contentType
        }
        else{
            def foto = grailsAttributes.getApplicationContext().getResource("/img/Students/place-holder-black.jpg").getFile()
            StudentInstance.avatar = foto.bytes
            StudentInstance.avatarType="image/jpeg"
        }
        //fin ingreso empleado equipo

            StudentInstance.save flush:true
            if(StudentInstance.isManager){
                equipo.save flush:true
            }
            redirect(action: "create")
            flash.message = message(code: 'default.created.message', args: [message(code: 'Student.label', default: 'Student'), StudentInstance.name])
        }
    @Secured(['ROLE_ADMIN','ROLE_EDITOR'])
    def edit(Student StudentInstance) {
         StudentInstance.date.clearTime()
         println StudentInstance.date.clearTime()
        respond StudentInstance
    }

    @Transactional
    @Secured(['ROLE_ADMIN','ROLE_EDITOR'])
    def update(Student StudentInstance) {
        if (StudentInstance == null) {
            notFound()
            return
        }

        if (StudentInstance.hasErrors()) {
            respond StudentInstance.errors, view:'edit'
            return
        }
        //Ingreso foto
         if (params.nuevaFoto.size > 0){
            StudentInstance.avatar=params.nuevaFoto.bytes
        }
        //fin ingreso foto

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Student.label', default: 'Student'), StudentInstance.id])
                redirect StudentInstance
            }
            '*'{ respond StudentInstance, [status: OK] }
        }
    }

    def deactivateStudent(Student StudentInstance){
        respond StudentInstance
    }

    @Transactional
    @Secured(['ROLE_ADMIN','ROLE_EDITOR'])
    def delete(Student StudentInstance) {

        if (StudentInstance == null) {
            notFound()
            return
        }
        StudentInstance.enabled=false

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Student.label', default: 'Student'), StudentInstance])
                redirect action:"deactivateStudent"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'StudentInstance.label', default: 'Student'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
