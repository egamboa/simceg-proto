<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'profesor.label', default: 'Profesor')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav nav-inner" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li><g:link class="list" action="index">Lista de Profesores</g:link></li>
			</ul>
		</div>
		<div id="create-profesor" class="content scaffold-create" role="main">
			<h1 class="text-left main-title">Crear Profesor</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${profesorInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${profesorInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:profesorInstance, action:'save']" class="edit-form text-left">
				<fieldset class="form">
					<g:render template="form"/>
					<div class="col-md-8 text-right">
						<g:submitButton name="create" class="save btn btn-default" value="Crear" />
					</div>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
