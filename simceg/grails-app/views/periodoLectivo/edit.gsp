<%@ page import="org.una.simceg.PeriodoLectivo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'periodoLectivo.label', default: 'PeriodoLectivo')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li> <g:link controller="dashboard">Principal</g:link> </li>
				<li><g:link class="list" action="index">Lista de Periodos</g:link></li>
				<li><g:link class="create" action="create">Nuevo Periodo</g:link></li>
			</ul>
		</div>
		<div id="edit-periodoLectivo" class="content scaffold-edit" role="main">
			<h1>Editar Periodo Lectivo</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${periodoLectivoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${periodoLectivoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:periodoLectivoInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${periodoLectivoInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons text-right">
					<g:actionSubmit class="save btn btn-primary" action="update" value="Editar" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
