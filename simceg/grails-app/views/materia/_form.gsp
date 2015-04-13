<%@ page import="org.una.simceg.Materia" %>



<div class="fieldcontain form-group ${hasErrors(bean: materiaInstance, field: 'descripcion', 'error')} required">
	<g:textField name="descripcion" placeholder="Descripción" class="form-control" required="" value="${materiaInstance?.descripcion}"/>

</div>

