
<%@ page import="org.una.simceg.PeriodoLectivo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'periodoLectivo.label', default: 'PeriodoLectivo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-periodoLectivo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-periodoLectivo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="anio" title="${message(code: 'periodoLectivo.anio.label', default: 'Anio')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'periodoLectivo.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="tiempoFinal" title="${message(code: 'periodoLectivo.tiempoFinal.label', default: 'Tiempo Final')}" />
					
						<g:sortableColumn property="tiempoInicio" title="${message(code: 'periodoLectivo.tiempoInicio.label', default: 'Tiempo Inicio')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${periodoLectivoInstanceList}" status="i" var="periodoLectivoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${periodoLectivoInstance.id}">${fieldValue(bean: periodoLectivoInstance, field: "anio")}</g:link></td>
					
						<td>${fieldValue(bean: periodoLectivoInstance, field: "descripcion")}</td>
					
						<td><g:formatDate date="${periodoLectivoInstance.tiempoFinal}" /></td>
					
						<td><g:formatDate date="${periodoLectivoInstance.tiempoInicio}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${periodoLectivoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
