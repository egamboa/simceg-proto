
<%@ page import="com.una.simceg.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="modal">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="show-user" class="content scaffold-show" role="main">

			<div class="modals" id="create-Student">
				<div class="alert alert-danger">
		        Updated ${userInstance?.name}
		     	</div>
				<ol class="property-list user">
				
					<g:if test="${userInstance?.username}">
					<li class="fieldcontain">
						<span id="username-label" class="property-label"><g:message code="user.username.label" default="Username" /></span>
						<g:textField name="name" value="${userInstance?.username}" class="form-control" required="" readonly="readonly"/>
					</li>
					</g:if>
				
					<g:if test="${userInstance?.password}">
					<li class="fieldcontain">
						<span id="password-label" class="property-label"><g:message code="user.password.label" default="Password" /></span>
						<g:textField name="name" value="${userInstance?.password}" class="form-control" required="" readonly="readonly"/>
					</li>
					</g:if>
				
					<g:if test="${userInstance?.email}">
					<li class="fieldcontain">
						<span id="email-label" class="property-label"><g:message code="user.email.label" default="Email" /></span>
						<g:textField name="name" value="${userInstance?.email}" class="form-control" required="" readonly="readonly"/>
					</li>
					</g:if>
				
					<g:if test="${userInstance?.accountExpired}">
					<li class="fieldcontain">
						<span id="accountExpired-label" class="property-label"><g:message code="user.accountExpired.label" default="Account Expired" /></span>
						<g:textField name="name" value="${userInstance?.accountExpired}" class="form-control" required="" readonly="readonly"/>
					</li>
					</g:if>
				
					<g:if test="${userInstance?.accountLocked}">
					<li class="fieldcontain">
						<span id="accountLocked-label" class="property-label"><g:message code="user.accountLocked.label" default="Account Locked" /></span>
						<g:textField name="name" value="${userInstance?.accountLocked}" class="form-control" required="" readonly="readonly"/>
					</li>
					</g:if>
				
					<g:if test="${userInstance?.enabled}">
					<li class="fieldcontain">
						<span id="enabled-label" class="property-label"><g:message code="user.enabled.label" default="Enabled" /></span>
						<g:textField name="name" value="${userInstance?.enabled}" class="form-control" required="" readonly="readonly"/>
					</li>
					</g:if>				
					<g:if test="${userInstance?.name}">
					<li class="fieldcontain">
						<span id="name-label" class="property-label"><g:message code="user.name.label" default="Name" /></span>
						<g:textField name="name" value="${userInstance?.name}" class="form-control" required="" readonly="readonly"/>
					</li>
					</g:if>
				
					<g:if test="${userInstance?.passwordExpired}">
					<li class="fieldcontain">
						<span id="passwordExpired-label" class="property-label"><g:message code="user.passwordExpired.label" default="Password Expired" /></span>
						<g:textField name="name" value="${userInstance?.passwordExpired}" class="form-control" required="" readonly="readonly"/>
					</li>
					</g:if>				
				</ol>
			</div>
			<g:form url="[resource:userInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:actionSubmit class="btn btn-lg btn-warning" action="delete" value="Delete Username" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
