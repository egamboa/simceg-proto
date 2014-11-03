
<%@ page import="org.una.simceg.Encargado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'encargado.label', default: 'Encargado')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-encargado" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-encargado" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table">
			<thead>
					<tr>
					
						<g:sortableColumn property="celular" title="${message(code: 'encargado.celular.label', default: 'Celular')}" />
					
						<g:sortableColumn property="direccion" title="${message(code: 'encargado.direccion.label', default: 'Direccion')}" />
					
						<g:sortableColumn property="estadoCivil" title="${message(code: 'encargado.estadoCivil.label', default: 'Estado Civil')}" />
					
						<g:sortableColumn property="nacionalidad" title="${message(code: 'encargado.nacionalidad.label', default: 'Nacionalidad')}" />
					
						<g:sortableColumn property="telefono" title="${message(code: 'encargado.telefono.label', default: 'Telefono')}" />
					
						<g:sortableColumn property="viveAlumno" title="${message(code: 'encargado.viveAlumno.label', default: 'Vive Alumno')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${encargadoInstanceList}" status="i" var="encargadoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${encargadoInstance.id}">${fieldValue(bean: encargadoInstance, field: "celular")}</g:link></td>
					
						<td>${fieldValue(bean: encargadoInstance, field: "direccion")}</td>
					
						<td>${fieldValue(bean: encargadoInstance, field: "estadoCivil")}</td>
					
						<td>${fieldValue(bean: encargadoInstance, field: "nacionalidad")}</td>
					
						<td>${fieldValue(bean: encargadoInstance, field: "telefono")}</td>
					
						<td><g:formatBoolean boolean="${encargadoInstance.viveAlumno}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${encargadoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
