<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'periodoLectivo.label', default: 'PeriodoLectivo')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav nav-inner" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li><g:link class="list" action="index">Lista de Periodos</g:link></li>
			</ul>
		</div>
		<div id="create-periodoLectivo" class="content scaffold-create" role="main">
			<h1 class="text-left main-title">Crear Periodo Lectivo</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${periodoLectivoInstance}">
			<div class="row">
				<ul class="errors alert alert-danger col-lg-5" role="alert">
					<g:eachError bean="${periodoLectivoInstance}" var="error">
					<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
					</g:eachError>
				</ul>
			</div>
			</g:hasErrors>
			<g:form url="[resource:periodoLectivoInstance, action:'save']" class="edit-form">
				<fieldset class="form">
					<div class="row">
						<div class="col-md-5 text-left">
							<g:render template="form"/>
							<div class="text-right">
								<g:submitButton name="create" class="save btn btn-default" value="Crear" />
							</div>
						</div>
					</div>
				</fieldset>
				<fieldset class="buttons text-right">
					
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
