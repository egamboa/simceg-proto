
<%@ page import="org.una.simceg.Estudiante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'estudiante.label', default: 'Estudiante')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-estudiante" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-estudiante" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list estudiante">
			
				<g:if test="${estudianteInstance?.activo}">
				<li class="fieldcontain">
					<span id="activo-label" class="property-label"><g:message code="estudiante.activo.label" default="Activo" /></span>
					
						<span class="property-value" aria-labelledby="activo-label"><g:formatBoolean boolean="${estudianteInstance?.activo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.adecuacion}">
				<li class="fieldcontain">
					<span id="adecuacion-label" class="property-label"><g:message code="estudiante.adecuacion.label" default="Adecuacion" /></span>
					
						<span class="property-value" aria-labelledby="adecuacion-label"><g:formatBoolean boolean="${estudianteInstance?.adecuacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.direccion}">
				<li class="fieldcontain">
					<span id="direccion-label" class="property-label"><g:message code="estudiante.direccion.label" default="Direccion" /></span>
					
						<span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${estudianteInstance}" field="direccion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.encargado}">
				<li class="fieldcontain">
					<span id="encargado-label" class="property-label"><g:message code="estudiante.encargado.label" default="Encargado" /></span>
					
						<span class="property-value" aria-labelledby="encargado-label"><g:link controller="user" action="show" id="${estudianteInstance?.encargado?.id}">${estudianteInstance?.encargado?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.fechaIngreso}">
				<li class="fieldcontain">
					<span id="fechaIngreso-label" class="property-label"><g:message code="estudiante.fechaIngreso.label" default="Fecha Ingreso" /></span>
					
						<span class="property-value" aria-labelledby="fechaIngreso-label"><g:formatDate date="${estudianteInstance?.fechaIngreso}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.fechaNacimiento}">
				<li class="fieldcontain">
					<span id="fechaNacimiento-label" class="property-label"><g:message code="estudiante.fechaNacimiento.label" default="Fecha Nacimiento" /></span>
					
						<span class="property-value" aria-labelledby="fechaNacimiento-label"><g:formatDate date="${estudianteInstance?.fechaNacimiento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.nacionalidad}">
				<li class="fieldcontain">
					<span id="nacionalidad-label" class="property-label"><g:message code="estudiante.nacionalidad.label" default="Nacionalidad" /></span>
					
						<span class="property-value" aria-labelledby="nacionalidad-label"><g:fieldValue bean="${estudianteInstance}" field="nacionalidad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="estudiante.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${estudianteInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.primerApellido}">
				<li class="fieldcontain">
					<span id="primerApellido-label" class="property-label"><g:message code="estudiante.primerApellido.label" default="Primer Apellido" /></span>
					
						<span class="property-value" aria-labelledby="primerApellido-label"><g:fieldValue bean="${estudianteInstance}" field="primerApellido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.segundoApellido}">
				<li class="fieldcontain">
					<span id="segundoApellido-label" class="property-label"><g:message code="estudiante.segundoApellido.label" default="Segundo Apellido" /></span>
					
						<span class="property-value" aria-labelledby="segundoApellido-label"><g:fieldValue bean="${estudianteInstance}" field="segundoApellido"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.tipoSangre}">
				<li class="fieldcontain">
					<span id="tipoSangre-label" class="property-label"><g:message code="estudiante.tipoSangre.label" default="Tipo Sangre" /></span>
					
						<span class="property-value" aria-labelledby="tipoSangre-label"><g:fieldValue bean="${estudianteInstance}" field="tipoSangre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.viveEncargado}">
				<li class="fieldcontain">
					<span id="viveEncargado-label" class="property-label"><g:message code="estudiante.viveEncargado.label" default="Vive Encargado" /></span>
					
						<span class="property-value" aria-labelledby="viveEncargado-label"><g:formatBoolean boolean="${estudianteInstance?.viveEncargado}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:estudianteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${estudianteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
