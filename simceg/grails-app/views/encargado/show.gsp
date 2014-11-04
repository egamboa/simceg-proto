
<%@ page import="org.una.simceg.Encargado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'encargado.label', default: 'Encargado')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-encargado" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-encargado" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list encargado">
			
				<g:if test="${encargadoInstance?.celular}">
				<li class="fieldcontain">
					<span id="celular-label" class="property-label"><g:message code="encargado.celular.label" default="Celular" /></span>
					
						<span class="property-value" aria-labelledby="celular-label"><g:fieldValue bean="${encargadoInstance}" field="celular"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${encargadoInstance?.direccion}">
				<li class="fieldcontain">
					<span id="direccion-label" class="property-label"><g:message code="encargado.direccion.label" default="Direccion" /></span>
					
						<span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${encargadoInstance}" field="direccion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${encargadoInstance?.estadoCivil}">
				<li class="fieldcontain">
					<span id="estadoCivil-label" class="property-label"><g:message code="encargado.estadoCivil.label" default="Estado Civil" /></span>
					
						<span class="property-value" aria-labelledby="estadoCivil-label"><g:fieldValue bean="${encargadoInstance}" field="estadoCivil"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${encargadoInstance?.nacionalidad}">
				<li class="fieldcontain">
					<span id="nacionalidad-label" class="property-label"><g:message code="encargado.nacionalidad.label" default="Nacionalidad" /></span>
					
						<span class="property-value" aria-labelledby="nacionalidad-label"><g:fieldValue bean="${encargadoInstance}" field="nacionalidad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${encargadoInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="encargado.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${encargadoInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${encargadoInstance?.viveAlumno}">
				<li class="fieldcontain">
					<span id="viveAlumno-label" class="property-label"><g:message code="encargado.viveAlumno.label" default="Vive Alumno" /></span>
					
						<span class="property-value" aria-labelledby="viveAlumno-label"><g:formatBoolean boolean="${encargadoInstance?.viveAlumno}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:encargadoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${encargadoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
