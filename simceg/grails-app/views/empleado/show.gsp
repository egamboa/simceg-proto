
<%@ page import="org.una.simceg.Empleado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empleado.label', default: 'Empleado')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-empleado" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-empleado" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list empleado">
			
				<g:if test="${empleadoInstance?.avatar}">
				<li class="fieldcontain">
					<span id="avatar-label" class="property-label"><g:message code="empleado.avatar.label" default="Avatar" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.avatarType}">
				<li class="fieldcontain">
					<span id="avatarType-label" class="property-label"><g:message code="empleado.avatarType.label" default="Avatar Type" /></span>
					
						<span class="property-value" aria-labelledby="avatarType-label"><g:fieldValue bean="${empleadoInstance}" field="avatarType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="empleado.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${empleadoInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="empleado.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${empleadoInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.activo}">
				<li class="fieldcontain">
					<span id="activo-label" class="property-label"><g:message code="empleado.activo.label" default="Activo" /></span>
					
						<span class="property-value" aria-labelledby="activo-label"><g:formatBoolean boolean="${empleadoInstance?.activo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="empleado.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${empleadoInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.direccion}">
				<li class="fieldcontain">
					<span id="direccion-label" class="property-label"><g:message code="empleado.direccion.label" default="Direccion" /></span>
					
						<span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${empleadoInstance}" field="direccion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.fechaIngreso}">
				<li class="fieldcontain">
					<span id="fechaIngreso-label" class="property-label"><g:message code="empleado.fechaIngreso.label" default="Fecha Ingreso" /></span>
					
						<span class="property-value" aria-labelledby="fechaIngreso-label"><g:formatDate date="${empleadoInstance?.fechaIngreso}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.fechaNacimiento}">
				<li class="fieldcontain">
					<span id="fechaNacimiento-label" class="property-label"><g:message code="empleado.fechaNacimiento.label" default="Fecha Nacimiento" /></span>
					
						<span class="property-value" aria-labelledby="fechaNacimiento-label"><g:formatDate date="${empleadoInstance?.fechaNacimiento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.fechaSalida}">
				<li class="fieldcontain">
					<span id="fechaSalida-label" class="property-label"><g:message code="empleado.fechaSalida.label" default="Fecha Salida" /></span>
					
						<span class="property-value" aria-labelledby="fechaSalida-label"><g:formatDate date="${empleadoInstance?.fechaSalida}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.gradoProfesional}">
				<li class="fieldcontain">
					<span id="gradoProfesional-label" class="property-label"><g:message code="empleado.gradoProfesional.label" default="Grado Profesional" /></span>
					
						<span class="property-value" aria-labelledby="gradoProfesional-label"><g:fieldValue bean="${empleadoInstance}" field="gradoProfesional"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.nacionalidad}">
				<li class="fieldcontain">
					<span id="nacionalidad-label" class="property-label"><g:message code="empleado.nacionalidad.label" default="Nacionalidad" /></span>
					
						<span class="property-value" aria-labelledby="nacionalidad-label"><g:fieldValue bean="${empleadoInstance}" field="nacionalidad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empleadoInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="empleado.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${empleadoInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:empleadoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${empleadoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
