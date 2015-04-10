<%@ page import="org.una.simceg.Estudiante" %>

<div class="row">
	<div class="col-md-7 col-md-offset-1 ">
		<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'nombre', 'error')} required form-group">
			<label for="nombre" class="control-label">
				<g:message code="estudiante.nombre.label" default="Nombre" />
			</label>
				<g:textField name="nombre" class="form-control" required="" value="${estudianteInstance?.nombre}"/>
		</div>
		<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'primerApellido', 'error')} required form-group">
			<label for="primerApellido" class="control-label">
				<g:message code="estudiante.primerApellido.label" default="Primer Apellido" />
			</label>
				<g:textField class="form-control" name="primerApellido" required="" value="${estudianteInstance?.primerApellido}"/>
		</div>

		<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'segundoApellido', 'error')} required form-group">
			<label for="segundoApellido" class="control-label">
				<g:message code="estudiante.segundoApellido.label" default="Segundo Apellido" />
			</label>
				<g:textField name="segundoApellido" class="form-control" required="" value="${estudianteInstance?.segundoApellido}"/>
		</div>

		<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'direccion', 'error')} required form-group">
			<label for="direccion" class="control-label">
				<g:message code="estudiante.direccion.label" default="Direccion" />
			</label>
			<g:textField name="direccion" class="form-control" required="" value="${estudianteInstance?.direccion}"/>
		</div>

		<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'nacionalidad', 'error')} required form-group">
			<label for="nacionalidad" class="control-label">
				<g:message code="estudiante.nacionalidad.label" default="Nacionalidad" />
			</label>
			<g:textField name="nacionalidad" class="form-control" required="" value="${estudianteInstance?.nacionalidad}"/>
		</div>

		<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'tipoSangre', 'error')} required form-group">
			<label for="tipoSangre" class="control-label">
				<g:message code="estudiante.tipoSangre.label" default="Tipo Sangre" />
			</label>
			<g:textField name="tipoSangre" class="form-control" required="" value="${estudianteInstance?.tipoSangre}"/>
		</div>

		<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'encargado', 'error')} required form-group">
			<label for="encargado" class="control-label">
				<g:message code="estudiante.encargado.label" default="Encargado" />
			</label>
			<%
				def padres = []
				org.una.simceg.User.list().each{ user ->
					if(org.una.simceg.UserRole.findByUser(user).role.authority == 'ROLE_USER')
						padres.add(user)
				}
			 %>
			<div class="select-style">
				<g:select id="encargado" name="encargado.id" class="form-control" from="${padres}" optionKey="id" optionValue="${{it.nombreCompleto()}}" required="" value="${estudianteInstance?.encargado?.id}" class="many-to-one"/>
			</div>
		</div>

		<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'fechaIngreso', 'error')} required form-group">
			<label for="fechaIngreso" class="control-label">
				<g:message code="estudiante.fechaIngreso.label" default="Fecha Ingreso" />
			</label>
			<div class="date">
				<g:datePicker name="fechaIngreso" precision="day" class="form-control" value="${estudianteInstance?.fechaIngreso}"  />
			</div>
		</div>

		<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'fechaNacimiento', 'error')} required form-group">
			<label for="fechaNacimiento" class="control-label">
				<g:message code="estudiante.fechaNacimiento.label" default="Fecha Nacimiento" />
			</label>
			<div class="date">
				<g:datePicker name="fechaNacimiento" class="form-control" precision="day"  value="${estudianteInstance?.fechaNacimiento}"  />
			</div>
		</div>

	</div>

	<div class="col-md-4 text-left">
		<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'activo', 'error')}">
			<div class="checkbox">
	      		<label>
	        		<g:checkBox name="enabled" value="${estudianteInstance?.activo}" /> Activo
	       		</label>
	     	</div>
		</div>
		
		<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'adecuacion', 'error')}">
			<div class="checkbox">
	      		<label>
	        		<g:checkBox name="adecuacion" value="${estudianteInstance?.adecuacion}" /> Adecuaci&oacute;n
	       		</label>
	     	</div>
		</div>
		
		<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'viveEncargado', 'error')}">
			<div class="checkbox">
	      		<label>
	        		<g:checkBox name="viveEncargado" value="${estudianteInstance?.viveEncargado}" /> Vive con el encargado?
	       		</label>
	     	</div>
		</div>
	</div>
</div>