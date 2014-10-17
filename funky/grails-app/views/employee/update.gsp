<%@ page import="com.una.simceg.Student" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="modal">
		<g:set var="entityName" value="${message(code: 'Student.label', default: 'Student')}" />
	</head>
	<body>
		<div id="edit-Student" class="content scaffold-edit" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${StudentInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${StudentInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<div class="modals" id="create-Student">			
			<div class="submit-form">
            <div class="login-label">
		        <div class="alert alert-danger alert-dismissable">
		        Updated ${StudentInstance.name} 
		        </div>
				<fieldset class="form">
					<g:render template="updated"/>
				</fieldset>
       		</div>
		</div>
		</div>
	</body>
</html>
