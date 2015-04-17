
<%@ page import="org.una.simceg.Mensaje" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mensaje.label', default: 'Mensaje')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-mensaje" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-mensaje" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="mensaje" title="${message(code: 'mensaje.mensaje.label', default: 'Mensaje')}" />
					
						<th><g:message code="mensaje.emisor.label" default="Emisor" /></th>
					
						<g:sortableColumn property="fechaEnvio" title="${message(code: 'mensaje.fechaEnvio.label', default: 'Fecha Envio')}" />
					
						<th><g:message code="mensaje.receptor.label" default="Receptor" /></th>
					
						<g:sortableColumn property="visto" title="${message(code: 'mensaje.visto.label', default: 'Visto')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${mensajeInstanceList}" status="i" var="mensajeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${mensajeInstance.id}">${fieldValue(bean: mensajeInstance, field: "mensaje")}</g:link></td>
					
						<td>${fieldValue(bean: mensajeInstance, field: "emisor")}</td>
					
						<td><g:formatDate date="${mensajeInstance.fechaEnvio}" /></td>
					
						<td>${fieldValue(bean: mensajeInstance, field: "receptor")}</td>
					
						<td><g:formatBoolean boolean="${mensajeInstance.visto}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${mensajeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
