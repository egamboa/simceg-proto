
<%@ page import="org.una.simceg.Mensaje" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mensaje.label', default: 'Mensaje')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-mensaje" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-mensaje" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list mensaje">
			
				<g:if test="${mensajeInstance?.mensaje}">
				<li class="fieldcontain">
					<span id="mensaje-label" class="property-label"><g:message code="mensaje.mensaje.label" default="Mensaje" /></span>
					
						<span class="property-value" aria-labelledby="mensaje-label"><g:fieldValue bean="${mensajeInstance}" field="mensaje"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mensajeInstance?.emisor}">
				<li class="fieldcontain">
					<span id="emisor-label" class="property-label"><g:message code="mensaje.emisor.label" default="Emisor" /></span>
					
						<span class="property-value" aria-labelledby="emisor-label"><g:link controller="user" action="show" id="${mensajeInstance?.emisor?.id}">${mensajeInstance?.emisor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${mensajeInstance?.fechaEnvio}">
				<li class="fieldcontain">
					<span id="fechaEnvio-label" class="property-label"><g:message code="mensaje.fechaEnvio.label" default="Fecha Envio" /></span>
					
						<span class="property-value" aria-labelledby="fechaEnvio-label"><g:formatDate date="${mensajeInstance?.fechaEnvio}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${mensajeInstance?.receptor}">
				<li class="fieldcontain">
					<span id="receptor-label" class="property-label"><g:message code="mensaje.receptor.label" default="Receptor" /></span>
					
						<span class="property-value" aria-labelledby="receptor-label"><g:link controller="user" action="show" id="${mensajeInstance?.receptor?.id}">${mensajeInstance?.receptor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${mensajeInstance?.visto}">
				<li class="fieldcontain">
					<span id="visto-label" class="property-label"><g:message code="mensaje.visto.label" default="Visto" /></span>
					
						<span class="property-value" aria-labelledby="visto-label"><g:formatBoolean boolean="${mensajeInstance?.visto}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:mensajeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${mensajeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
