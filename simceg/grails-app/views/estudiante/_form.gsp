<%@ page import="org.una.simceg.Estudiante" %>



<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="estudiante.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${estudianteInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'adecuacion', 'error')} ">
	<label for="adecuacion">
		<g:message code="estudiante.adecuacion.label" default="Adecuacion" />
		
	</label>
	<g:checkBox name="adecuacion" value="${estudianteInstance?.adecuacion}" />

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'direccion', 'error')} required">
	<label for="direccion">
		<g:message code="estudiante.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="direccion" required="" value="${estudianteInstance?.direccion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'encargado', 'error')} required">
	<label for="encargado">
		<g:message code="estudiante.encargado.label" default="Encargado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="encargado" name="encargado.id" from="${org.una.simceg.Encargado.list()}" optionKey="id" required="" value="${estudianteInstance?.encargado?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'fechaIngreso', 'error')} required">
	<label for="fechaIngreso">
		<g:message code="estudiante.fechaIngreso.label" default="Fecha Ingreso" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaIngreso" precision="day"  value="${estudianteInstance?.fechaIngreso}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'fechaNacimiento', 'error')} required">
	<label for="fechaNacimiento">
		<g:message code="estudiante.fechaNacimiento.label" default="Fecha Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaNacimiento" precision="day"  value="${estudianteInstance?.fechaNacimiento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'nacionalidad', 'error')} required">
	<label for="nacionalidad">
		<g:message code="estudiante.nacionalidad.label" default="Nacionalidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nacionalidad" required="" value="${estudianteInstance?.nacionalidad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="estudiante.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${estudianteInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'primerApellido', 'error')} required">
	<label for="primerApellido">
		<g:message code="estudiante.primerApellido.label" default="Primer Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="primerApellido" required="" value="${estudianteInstance?.primerApellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'segundoApellido', 'error')} required">
	<label for="segundoApellido">
		<g:message code="estudiante.segundoApellido.label" default="Segundo Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="segundoApellido" required="" value="${estudianteInstance?.segundoApellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'tipoSangre', 'error')} required">
	<label for="tipoSangre">
		<g:message code="estudiante.tipoSangre.label" default="Tipo Sangre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tipoSangre" required="" value="${estudianteInstance?.tipoSangre}"/>

</div>

