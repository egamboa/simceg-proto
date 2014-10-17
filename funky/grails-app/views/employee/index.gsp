
<%@ page import="com.una.simceg.Student" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="modal">
		<g:set var="entityName" value="${message(code: 'Student.label', default: 'Student')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-Student" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="avatar" title="${message(code: 'Student.avatar.label', default: 'Avatar')}" />
										
						<g:sortableColumn property="name" title="${message(code: 'Student.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'Student.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="isManager" title="${message(code: 'Student.isManager.label', default: 'Is Manager')}" />
					
						<th><g:message code="Student.position.label" default="Position" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${StudentInstanceList}" status="i" var="StudentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>
						
						<g:link action="show" id="${StudentInstance.id}">
						<img class="img-circle" src="${createLink(controller:'Student', action:'avatar_image', id:StudentInstance.id)}" style="width: 50px; height: 50px;"/>
						</g:link>
						</td>
										
						<td>${fieldValue(bean: StudentInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: StudentInstance, field: "email")}</td>
					
						<td><g:formatBoolean boolean="${StudentInstance.isManager}" /></td>
					
						<td>${fieldValue(bean: StudentInstance, field: "position")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${StudentInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
