<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="modal">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
	</head>
	<body>
		
		<div id="create-user" class="content scaffold-create" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${userInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${userInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			 <div class="modals" id="create-Student">
				<g:form url="[resource:userInstance, action:'save']" >
				<div class="submit-form">
        	 		<div class="login-label">
		                <h3>Create New User</h3>
		                <p>Please fill all the input fields to create a new user</p>
		       	    </div>
					<fieldset class="form">
						<g:render template="form"/>
					</fieldset>
				</div>
			<div class="submit-bg">
			   <button class="btn btn-lg btn-warning" type="submit">Create User</button>   
 	      </div> 
       				</g:form>
			</div>
		</div>
	</body>
</html>
