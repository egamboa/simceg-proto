<%@ page import="org.una.simceg.Nivel" %>



<div class="fieldcontain ${hasErrors(bean: nivelInstance, field: 'descripcion', 'error')} required form-group">
	<label for="descripcion" class="col-sm-3 control-label">
		<g:message code="nivel.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:textField name="descripcion" class="form-control" required="" value="${nivelInstance?.descripcion}"/>
	</div>
</div>

