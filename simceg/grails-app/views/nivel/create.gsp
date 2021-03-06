<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'nivel.label', default: 'Nivel')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav nav-inner" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li><g:link class="list" action="index">Lista de Niveles</g:link></li>
			</ul>
		</div>
		<div id="create-nivel" class="content scaffold-create" role="main">
			<h1 class="text-left main-title">Crear Nivel</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${nivelInstance}">
				<ul class="errors" role="alert">
					<g:eachError bean="${nivelInstance}" var="error">
						<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
					</g:eachError>
				</ul>
			</g:hasErrors>
			<g:form url="[resource:nivelInstance, action:'save']" >
				<fieldset class="form">
					<div class="col-md-5 text-left">
						<g:render template="form"/>
					</div>
				</fieldset>
				<fieldset class="buttons">
					<div class="col-md-5 text-right">
						<g:submitButton name="create" class="save btn btn-default" value="${message(code: 'default.button.create.label', default: 'Create')}" />
					</div>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
