<%@ page import="org.una.simceg.Profesor" %>

<div class="row">
	<div class="col-md-7 col-md-offset-1 ">
		<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'usuario', 'error')} required form-group">
			<label for="usuario" class="control-label">
				<g:message code="profesor.usuario.label" default="Usuario" />
				<span class="required-indicator">*</span>
			</label>
			<%
				def profes = []
				org.una.simceg.User.list().each{ user ->
					if(org.una.simceg.UserRole.findByUser(user).role.authority == 'ROLE_TEACHER')
						profes.add(user)
				}
			 %>
			<div class="select-style">
				<g:select id="usuario" name="usuario.id" from="${profes}" optionKey="id" optionValue="${{it.nombreCompleto()}}" required="" value="${profesorInstance?.usuario?.id}" class="form-control many-to-one"/>
			</div>
		</div>

		<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'gradoProfesional', 'error')} required form-group">
			<label for="gradoProfesional" class="control-label">
				<g:message code="profesor.gradoProfesional.label" default="Grado Profesional" />
			</label>
			<g:textField class="form-control" name="gradoProfesional" required="" value="${profesorInstance?.gradoProfesional}"/>
		</div>

		<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'descripcion', 'error')} required form-group">
			<label for="descripcion" class="control-label">
				<g:message code="profesor.descripcion.label" default="Descripcion" />
			</label>
			<g:textField class="form-control" name="descripcion" required="" value="${profesorInstance?.descripcion}"/>
		</div>

		<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'fechaIngreso', 'error')} required form-group">
			<label for="fechaIngreso" class="control-label">
				<g:message code="profesor.fechaIngreso.label" default="Fecha Ingreso" />
			</label>
			<g:datePicker class="form-control" name="fechaIngreso" precision="day"  value="${profesorInstance?.fechaIngreso}"  />
		</div>

		<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'fechaSalida', 'error')} form-group">
			<label for="fechaSalida" class="control-label">
				<g:message code="profesor.fechaSalida.label" default="Fecha Salida" />
				
			</label>
			<g:datePicker class="form-control" name="fechaSalida" precision="day"  value="${profesorInstance?.fechaSalida}" default="none" noSelection="['': '']" />
		</div>

	</div>
	<div class="col-md-4 text-left">
		<div class="fieldcontain ${hasErrors(bean: profesorInstance, field: 'activo', 'error')}">
		<label for="activo">
			<g:checkBox name="activo" value="${profesorInstance?.activo}" /> Activo			
		</label>
	</div>
	</div>
</div>

