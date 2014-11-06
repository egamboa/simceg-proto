<%@ page import="org.una.simceg.Evento" %>



<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="evento.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${eventoInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'locacion', 'error')} required">
	<label for="locacion">
		<g:message code="evento.locacion.label" default="Locacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="locacion" required="" value="${eventoInstance?.locacion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'tiempoFinal', 'error')} required">
	<label for="tiempoFinal">
		<g:message code="evento.tiempoFinal.label" default="Tiempo Final" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="tiempoFinal" precision="day"  value="${eventoInstance?.tiempoFinal}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'tiempoInicio', 'error')} required">
	<label for="tiempoInicio">
		<g:message code="evento.tiempoInicio.label" default="Tiempo Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="tiempoInicio" precision="day"  value="${eventoInstance?.tiempoInicio}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="evento.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titulo" required="" value="${eventoInstance?.titulo}"/>

</div>

