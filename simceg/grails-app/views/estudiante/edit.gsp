<%@ page import="org.una.simceg.Estudiante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'estudiante.label', default: 'Estudiante')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li> <g:link controller="dashboard">Principal</g:link> </li>
				<li><g:link class="list" action="index">Lista Estudiante</g:link></li>
				<li><g:link class="create" action="create">Nuevo Estudiante</g:link></li>
			</ul>
		</div>
		<div id="edit-estudiante" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
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
			<g:form url="[resource:estudianteInstance, action:'update']" method="PUT" class="form-horizontal text-left">
				<g:hiddenField name="version" value="${estudianteInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons text-right">
					<g:actionSubmit class="save btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
