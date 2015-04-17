<%@ page import="org.una.simceg.Mensaje" %>

<div class="fieldcontain form-group ${hasErrors(bean: mensajeInstance, field: 'receptor', 'error')} required">
	<label for="receptor">
		<g:message code="mensaje.receptor.label" default="Para: " />
	</label>
	<g:select id="receptor" class="form-control" name="receptor.id" from="${users}" optionKey="id" required="" value="${mensajeInstance?.receptor?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: mensajeInstance, field: 'mensaje', 'error')} required">
	<label for="mensaje">
		<g:message code="mensaje.mensaje.label" default="Mensaje" />
	</label>
	<g:textArea style="resize:none" name="mensaje" class="form-control" cols="40" rows="5" maxlength="500" required="" value="${mensajeInstance?.mensaje}"/>
</div>