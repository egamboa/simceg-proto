<%@ page import="org.una.simceg.Grupo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'grupo.label', default: 'Grupo')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav nav-inner" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li><g:link class="list" action="index">Lista de Grupos</g:link></li>
				<li><g:link class="create" action="create">Nuevo Grupo</g:link></li>
			</ul>
		</div>
		<div id="edit-grupo" class="content scaffold-edit" role="main">
			<h1 class="text-left main-title"><g:message code="default.edit.label" args="[entityName]" /></h1>
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
			<g:form url="[resource:grupoInstance, action:'update']" method="PUT" class="text-left">
				<g:hiddenField name="version" value="${grupoInstance?.version}" />
				<fieldset class="form">
					<div class="col-md-5">
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
