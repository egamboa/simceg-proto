<%@ page import="org.una.simceg.Nivel" %>



<div class="fieldcontain ${hasErrors(bean: nivelInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="nivel.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${nivelInstance?.descripcion}"/>

</div>

