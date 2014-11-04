
<%@ page import="org.una.simceg.Estudiante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
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
					
						<g:sortableColumn property="alergias" title="${message(code: 'estudiante.alergias.label', default: 'Alergias')}" />
					
						<g:sortableColumn property="alimentacion" title="${message(code: 'estudiante.alimentacion.label', default: 'Alimentacion')}" />
					
						<g:sortableColumn property="avatar" title="${message(code: 'estudiante.avatar.label', default: 'Avatar')}" />
					
						<g:sortableColumn property="avatarType" title="${message(code: 'estudiante.avatarType.label', default: 'Avatar Type')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${estudianteInstanceList}" status="i" var="estudianteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${estudianteInstance.id}">${fieldValue(bean: estudianteInstance, field: "activo")}</g:link></td>
					
						<td><g:formatBoolean boolean="${estudianteInstance.adecuacion}" /></td>
					
						<td><g:formatBoolean boolean="${estudianteInstance.alergias}" /></td>
					
						<td>${fieldValue(bean: estudianteInstance, field: "alimentacion")}</td>
					
						<td>${fieldValue(bean: estudianteInstance, field: "avatar")}</td>
					
						<td>${fieldValue(bean: estudianteInstance, field: "avatarType")}</td>
					
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
