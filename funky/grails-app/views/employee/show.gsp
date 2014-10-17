
<%@ page import="com.una.simceg.Student" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="modal">
		<g:set var="entityName" value="${message(code: 'Student.label', default: 'Student')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-Student" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list Student">
			
				<g:if test="${StudentInstance?.avatar}">
				<li class="fieldcontain">
					<span id="avatar-label" class="property-label"><g:message code="Student.avatar.label" default="Avatar" /></span>
					<span class="property-value" aria-labelledby="avatar-label"><img class="img-circle" src="${createLink(controller:'Student', action:'avatar_image', id:StudentInstance.id)}" style="width: 50px; height: 50px;"/></span>
					<span class="property-value" aria-labelledby="avatar-label"></span>
				</li>
				</g:if>
			
				<g:if test="${StudentInstance?.avatarType}">
				<li class="fieldcontain">
					<span id="avatarType-label" class="property-label"><g:message code="Student.avatarType.label" default="Avatar Type" /></span>
					
						<span class="property-value" aria-labelledby="avatarType-label"><g:fieldValue bean="${StudentInstance}" field="avatarType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${StudentInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="Student.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${StudentInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${StudentInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="Student.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${StudentInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${StudentInstance?.isManager}">
				<li class="fieldcontain">
					<span id="isManager-label" class="property-label"><g:message code="Student.isManager.label" default="Is Manager" /></span>
					
						<span class="property-value" aria-labelledby="isManager-label"><g:formatBoolean boolean="${StudentInstance?.isManager}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${StudentInstance?.position}">
				<li class="fieldcontain">
					<span id="position-label" class="property-label"><g:message code="Student.position.label" default="Position" /></span>
					
						<span class="property-value" aria-labelledby="position-label"><g:link controller="position" action="show" id="${StudentInstance?.position?.id}">${StudentInstance?.position?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:StudentInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${StudentInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
