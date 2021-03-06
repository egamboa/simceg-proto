<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'estudiante.label', default: 'Estudiante')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav nav-inner" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li><g:link class="list" action="index">Lista Estudiantes</g:link></li>
			</ul>
		</div>
		<div id="create-estudiante" class="content scaffold-create" role="main">
			<h1 class="main-title text-left">Crear Estudiante</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${estudianteInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${estudianteInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:estudianteInstance, action:'save']" class="edit-form text-left">
				<fieldset class="form">
					<g:render template="form"/>
					<div class="text-right col-md-8">
						<g:submitButton name="create" class="save btn btn-default" value="Crear" />
					</div>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
