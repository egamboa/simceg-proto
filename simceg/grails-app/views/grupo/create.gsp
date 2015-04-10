<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'grupo.label', default: 'Grupo')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav nav-inner" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li><g:link class="list" action="index">Lista de Grupos</g:link></li>
			</ul>
		</div>
		<div id="create-grupo" class="content scaffold-create" role="main">
			<h1 class="main-title text-left">Crear Grupo</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${grupoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${grupoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:grupoInstance, action:'save']" class="text-left edit-form">
				<fieldset class="form">
					<div class="col-md-5">
						<g:render template="form"/>
						<div class="text-right">
							<g:actionSubmit name="create" class="save btn btn-primary" action="update" value="Crear" />
						</div>
					</div>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
