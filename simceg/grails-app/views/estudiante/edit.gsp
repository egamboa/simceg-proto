<%@ page import="org.una.simceg.Estudiante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'estudiante.label', default: 'Estudiante')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav nav-inner" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li><g:link class="list" action="index">Lista Estudiante</g:link></li>
				<li><g:link class="create" action="create">Nuevo Estudiante</g:link></li>
			</ul>
		</div>
		<div id="edit-estudiante" class="content scaffold-edit" role="main">
			<h1 class="main-title text-left">Editar Estudiante</h1>
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
			<g:form url="[resource:estudianteInstance, action:'update']" method="PUT" class="edit-form text-left">
				<g:hiddenField name="version" value="${estudianteInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
					<div class="text-right col-md-8">
						<g:actionSubmit class="save btn btn-primary" action="update" value="Editar" />
					</div>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
