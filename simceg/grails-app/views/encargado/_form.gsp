<%@ page import="org.una.simceg.Encargado" %>



<div class="fieldcontain ${hasErrors(bean: encargadoInstance, field: 'celular', 'error')} required">
	<label for="celular">
		<g:message code="encargado.celular.label" default="Celular" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="celular" required="" value="${encargadoInstance?.celular}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: encargadoInstance, field: 'direccion', 'error')} required">
	<label for="direccion">
		<g:message code="encargado.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="direccion" required="" value="${encargadoInstance?.direccion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: encargadoInstance, field: 'estadoCivil', 'error')} required">
	<label for="estadoCivil">
		<g:message code="encargado.estadoCivil.label" default="Estado Civil" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estadoCivil" required="" value="${encargadoInstance?.estadoCivil}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: encargadoInstance, field: 'nacionalidad', 'error')} required">
	<label for="nacionalidad">
		<g:message code="encargado.nacionalidad.label" default="Nacionalidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nacionalidad" required="" value="${encargadoInstance?.nacionalidad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: encargadoInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="encargado.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefono" required="" value="${encargadoInstance?.telefono}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: encargadoInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="encargado.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${org.una.simceg.Usuario.list()}" optionKey="id" required="" value="${encargadoInstance?.usuario?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: encargadoInstance, field: 'viviAlumno', 'error')} ">
	<label for="viviAlumno">
		<g:message code="encargado.viviAlumno.label" default="Vivi Alumno" />
		
	</label>
	<g:checkBox name="viviAlumno" value="${encargadoInstance?.viviAlumno}" />

</div>

