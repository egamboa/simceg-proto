<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'materia.label', default: 'Materia')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav nav-inner" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li><g:link class="list" action="index">Lista de Materias</g:link></li>
			</ul>
		</div>
		<div id="create-materia" class="content scaffold-create" role="main">
			<h1 class="main-title text-left">Crear Materia</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${materiaInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${materiaInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:materiaInstance, action:'save']">
				<fieldset class="form">
					<div class="col-md-5 text-left">
						<g:render template="form"/>
						<div class="text-right">
							<g:actionSubmit class="save btn btn-primary" action="update" value="Editar" />
						</div>
					</div>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
