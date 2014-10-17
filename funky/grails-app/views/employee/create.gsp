<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="modal">
		<g:set var="entityName" value="${message(code: 'Student.label', default: 'Student')}" />
	</head>
	<body>
		<div id="create-Student" class="content scaffold-create" role="main">
			<g:if test="${flash.message}">
			<div class="flash-message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${StudentInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${StudentInstance}" var="error">
				<li 
				<g:if test="${error in org.springframework.validation.FieldError}">
				data-field-id="${error.field}"
				</g:if> >
				<g:message error="${error}"/>
				</li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<div class="modals" id="create-Student">
			<g:form url="[resource:StudentInstance, action:'save']"  enctype="multipart/form-data" id="new-form">
			<div class="submit-form">
            <div class="login-label">
                <h3>Create New Student</h3>
                <p>Please fill all the input fields to create a new account</p>
       	     </div>
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
			<br clear="all">  
       		</div>   
	      	<div class="submit-bg">
	            <button class="btn btn-lg btn-warning" type="submit">Create Student</button>   
	       	</div> 
			</g:form>
			</div>
		</div>
	</body>
</html>
