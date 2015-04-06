<%@ page import="org.una.simceg.Nivel" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'nivel.label', default: 'Nivel')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav nav-inner" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li><g:link class="create" action="create">Nuevo Nivel</g:link></li>
			</ul>
		</div>
		<div id="edit-nivel" class="content scaffold-edit" role="main">
			<h1 class="text-left main-title"><g:message code="default.edit.label" args="[entityName]" /></h1>
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
			<g:form url="[resource:nivelInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${nivelInstance?.version}" />
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
