<%@ page import="org.una.simceg.PeriodoLectivo" %>



<div class="fieldcontain ${hasErrors(bean: periodoLectivoInstance, field: 'anio', 'error')} required">
	<label for="anio">
		<g:message code="periodoLectivo.anio.label" default="Anio" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="anio" type="number" value="${periodoLectivoInstance.anio}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: periodoLectivoInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="periodoLectivo.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${periodoLectivoInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: periodoLectivoInstance, field: 'tiempoFinal', 'error')} required">
	<label for="tiempoFinal">
		<g:message code="periodoLectivo.tiempoFinal.label" default="Tiempo Final" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="tiempoFinal" precision="day"  value="${periodoLectivoInstance?.tiempoFinal}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: periodoLectivoInstance, field: 'tiempoInicio', 'error')} required">
	<label for="tiempoInicio">
		<g:message code="periodoLectivo.tiempoInicio.label" default="Tiempo Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="tiempoInicio" precision="day"  value="${periodoLectivoInstance?.tiempoInicio}"  />

</div>

