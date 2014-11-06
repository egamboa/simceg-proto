
<%@ page import="org.una.simceg.Evento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'evento.label', default: 'Evento')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-evento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-evento" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descripcion" title="${message(code: 'evento.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="locacion" title="${message(code: 'evento.locacion.label', default: 'Locacion')}" />
					
						<g:sortableColumn property="tiempoFinal" title="${message(code: 'evento.tiempoFinal.label', default: 'Tiempo Final')}" />
					
						<g:sortableColumn property="tiempoInicio" title="${message(code: 'evento.tiempoInicio.label', default: 'Tiempo Inicio')}" />
					
						<g:sortableColumn property="titulo" title="${message(code: 'evento.titulo.label', default: 'Titulo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${eventoInstanceList}" status="i" var="eventoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${eventoInstance.id}">${fieldValue(bean: eventoInstance, field: "descripcion")}</g:link></td>
					
						<td>${fieldValue(bean: eventoInstance, field: "locacion")}</td>
					
						<td><g:formatDate date="${eventoInstance.tiempoFinal}" /></td>
					
						<td><g:formatDate date="${eventoInstance.tiempoInicio}" /></td>
					
						<td>${fieldValue(bean: eventoInstance, field: "titulo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${eventoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
