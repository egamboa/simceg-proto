<%@ page import="org.una.simceg.PeriodoLectivo" %>



<div class="fieldcontain form-group ${hasErrors(bean: periodoLectivoInstance, field: 'anio', 'error')} required">
	<label for="anio">
		<g:message code="periodoLectivo.anio.label" default="Año" />
	</label>
	<g:field name="anio" class="form-control" type="number" value="${periodoLectivoInstance.anio}" required=""/>

</div>

<div class="fieldcontain form-group ${hasErrors(bean: periodoLectivoInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="periodoLectivo.descripcion.label" default="Descripcion" />
	</label>
	<g:textField name="descripcion" class="form-control" required="" value="${periodoLectivoInstance?.descripcion}"/>

</div>

<div class="fieldcontain form-group ${hasErrors(bean: periodoLectivoInstance, field: 'tiempoInicio', 'error')} required">
	<label for="tiempoInicio">
		<g:message code="periodoLectivo.tiempoInicio.label" default="Inicio" />
	</label>
	<div class="date">
		<g:datePicker name="tiempoInicio" class="form-control"  precision="day"  value="${periodoLectivoInstance?.tiempoInicio}"  />
	</div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: periodoLectivoInstance, field: 'tiempoFinal', 'error')} required">
	<label for="tiempoFinal">
		<g:message code="periodoLectivo.tiempoFinal.label" default="Final" />
	</label>
	<div class="date">	
		<g:datePicker name="tiempoFinal" class="form-control" precision="day"  value="${periodoLectivoInstance?.tiempoFinal}"  />
	</div>
</div>

