<%@ page import="org.una.simceg.Materia" %>



<div class="fieldcontain form-group ${hasErrors(bean: materiaInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="materia.descripcion.label" default="Descripcion" />
	</label>
	<g:textField name="descripcion" class="form-control" required="" value="${materiaInstance?.descripcion}"/>

</div>

