<%@ page import="org.una.simceg.Estudiante" %>


<div class="row">
	<div class="col-md-2"></div>
	
	<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'activo', 'error')} form-group col-md-2">
		<div class="checkbox">
      		<label>
        		<g:checkBox name="enabled" value="${estudianteInstance?.activo}" /> Activo
       		</label>
     	</div>
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'adecuacion', 'error')} form-group col-md-2">
		<div class="checkbox">
      		<label>
        		<g:checkBox name="adecuacion" value="${estudianteInstance?.adecuacion}" /> Adecuaci&oacute;n
       		</label>
     	</div>
	</div>
	
	<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'viveEncargado', 'error')} form-group col-md-3">
		<div class="checkbox">
      		<label>
        		<g:checkBox name="viveEncargado" value="${estudianteInstance?.viveEncargado}" /> Vive con el encargado?
       		</label>
     	</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'nombre', 'error')} required form-group">
	<label for="nombre" class="col-sm-3 control-label">
		<g:message code="estudiante.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:textField name="nombre" class="form-control" required="" value="${estudianteInstance?.nombre}"/>
	</div>
</div>
<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'primerApellido', 'error')} required form-group">
	<label for="primerApellido" class="col-sm-3 control-label">
		<g:message code="estudiante.primerApellido.label" default="Primer Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:textField class="form-control" name="primerApellido" required="" value="${estudianteInstance?.primerApellido}"/>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'segundoApellido', 'error')} required form-group">
	<label for="segundoApellido" class="col-sm-3 control-label">
		<g:message code="estudiante.segundoApellido.label" default="Segundo Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:textField name="segundoApellido" class="form-control" required="" value="${estudianteInstance?.segundoApellido}"/>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'encargado', 'error')} required form-group">
	<label for="encargado" class="col-sm-3 control-label">
		<g:message code="estudiante.encargado.label" default="Encargado" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
	<%
		def padres = []
		org.una.simceg.User.list().each{ user ->
			if(org.una.simceg.UserRole.findByUser(user).role.authority == 'ROLE_USER')
				padres.add(user)
		}
	 %>
		<g:select id="encargado" name="encargado.id" class="form-control" from="${padres}" optionKey="id" optionValue="nombre" required="" value="${estudianteInstance?.encargado?.id}" class="many-to-one"/>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'fechaIngreso', 'error')} required form-group">
	<label for="fechaIngreso" class="col-sm-3 control-label">
		<g:message code="estudiante.fechaIngreso.label" default="Fecha Ingreso" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:datePicker name="fechaIngreso" precision="day" class="form-control" value="${estudianteInstance?.fechaIngreso}"  />
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'fechaNacimiento', 'error')} required form-group">
	<label for="fechaNacimiento" class="col-sm-3 control-label">
		<g:message code="estudiante.fechaNacimiento.label" default="Fecha Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:datePicker name="fechaNacimiento" class="form-control" precision="day"  value="${estudianteInstance?.fechaNacimiento}"  />
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'direccion', 'error')} required form-group">
	<label for="direccion" class="col-sm-3 control-label">
		<g:message code="estudiante.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:textField name="direccion" class="form-control" required="" value="${estudianteInstance?.direccion}"/>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'nacionalidad', 'error')} required form-group">
	<label for="nacionalidad" class="col-sm-3 control-label">
		<g:message code="estudiante.nacionalidad.label" default="Nacionalidad" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:textField name="nacionalidad" class="form-control" required="" value="${estudianteInstance?.nacionalidad}"/>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'tipoSangre', 'error')} required form-group">
	<label for="tipoSangre" class="col-sm-3 control-label">
		<g:message code="estudiante.tipoSangre.label" default="Tipo Sangre" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:textField name="tipoSangre" class="form-control" required="" value="${estudianteInstance?.tipoSangre}"/>
	</div>
</div>