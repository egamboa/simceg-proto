
<%@ page import="org.una.simceg.PeriodoLectivo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'periodoLectivo.label', default: 'PeriodoLectivo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-periodoLectivo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-periodoLectivo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list periodoLectivo">
			
				<g:if test="${periodoLectivoInstance?.anio}">
				<li class="fieldcontain">
					<span id="anio-label" class="property-label"><g:message code="periodoLectivo.anio.label" default="Anio" /></span>
					
						<span class="property-value" aria-labelledby="anio-label"><g:fieldValue bean="${periodoLectivoInstance}" field="anio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${periodoLectivoInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="periodoLectivo.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${periodoLectivoInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${periodoLectivoInstance?.tiempoFinal}">
				<li class="fieldcontain">
					<span id="tiempoFinal-label" class="property-label"><g:message code="periodoLectivo.tiempoFinal.label" default="Tiempo Final" /></span>
					
						<span class="property-value" aria-labelledby="tiempoFinal-label"><g:formatDate date="${periodoLectivoInstance?.tiempoFinal}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${periodoLectivoInstance?.tiempoInicio}">
				<li class="fieldcontain">
					<span id="tiempoInicio-label" class="property-label"><g:message code="periodoLectivo.tiempoInicio.label" default="Tiempo Inicio" /></span>
					
						<span class="property-value" aria-labelledby="tiempoInicio-label"><g:formatDate date="${periodoLectivoInstance?.tiempoInicio}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:periodoLectivoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${periodoLectivoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
