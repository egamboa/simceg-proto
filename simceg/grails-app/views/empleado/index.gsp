
<%@ page import="org.una.simceg.Empleado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empleado.label', default: 'Empleado')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-empleado" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-empleado" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="avatar" title="${message(code: 'empleado.avatar.label', default: 'Avatar')}" />
					
						<g:sortableColumn property="avatarType" title="${message(code: 'empleado.avatarType.label', default: 'Avatar Type')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'empleado.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'empleado.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="activo" title="${message(code: 'empleado.activo.label', default: 'Activo')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'empleado.descripcion.label', default: 'Descripcion')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${empleadoInstanceList}" status="i" var="empleadoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${empleadoInstance.id}">${fieldValue(bean: empleadoInstance, field: "avatar")}</g:link></td>
					
						<td>${fieldValue(bean: empleadoInstance, field: "avatarType")}</td>
					
						<td>${fieldValue(bean: empleadoInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: empleadoInstance, field: "email")}</td>
					
						<td><g:formatBoolean boolean="${empleadoInstance.activo}" /></td>
					
						<td>${fieldValue(bean: empleadoInstance, field: "descripcion")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${empleadoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
