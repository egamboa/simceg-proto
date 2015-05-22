<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'mensaje.label', default: 'Mensaje')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav nav-inner" role="navigation">
			<ul class="nav nav-pills">
				<li>
					<g:link class="list" controller="mensaje" action="index">
						Mensajes
					</g:link>
				</li>
			</ul>
		</div>
		<div id="create-mensaje" class="content scaffold-create" role="main">
			<h1 class="main-title text-left">Nuevo Mensaje</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${mensajeInstance}">
			<ul class="errors alert alert-info" role="alert">
				<g:eachError bean="${mensajeInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:mensajeInstance, action:'save']" >
				<fieldset class="form row">
					<div class="col-lg-5 text-left">
						<g:render template="form"/>
						<div class="text-right">
							<g:submitButton name="create" class="save btn btn-default" value="Enviar" />
						</div>
					</div>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
