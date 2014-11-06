
<%@ page import="org.una.simceg.Estudiante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'estudiante.label', default: 'Estudiante')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-estudiante" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-estudiante" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="activo" title="${message(code: 'estudiante.activo.label', default: 'Activo')}" />
					
						<g:sortableColumn property="adecuacion" title="${message(code: 'estudiante.adecuacion.label', default: 'Adecuacion')}" />
					
						<g:sortableColumn property="direccion" title="${message(code: 'estudiante.direccion.label', default: 'Direccion')}" />
					
						<th><g:message code="estudiante.encargado.label" default="Encargado" /></th>
					
						<g:sortableColumn property="fechaIngreso" title="${message(code: 'estudiante.fechaIngreso.label', default: 'Fecha Ingreso')}" />
					
						<g:sortableColumn property="fechaNacimiento" title="${message(code: 'estudiante.fechaNacimiento.label', default: 'Fecha Nacimiento')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${estudianteInstanceList}" status="i" var="estudianteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${estudianteInstance.id}">${fieldValue(bean: estudianteInstance, field: "activo")}</g:link></td>
					
						<td><g:formatBoolean boolean="${estudianteInstance.adecuacion}" /></td>
					
						<td>${fieldValue(bean: estudianteInstance, field: "direccion")}</td>
					
						<td>${fieldValue(bean: estudianteInstance, field: "encargado")}</td>
					
						<td><g:formatDate date="${estudianteInstance.fechaIngreso}" /></td>
					
						<td><g:formatDate date="${estudianteInstance.fechaNacimiento}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${estudianteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
