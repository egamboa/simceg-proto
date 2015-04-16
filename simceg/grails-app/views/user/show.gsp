
<%@ page import="org.una.simceg.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav nav-inner" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li><g:link class="list" action="index">Lista de Usuarios</g:link></li>
				<li><g:link class="create" action="create">Nuevo Usuario</g:link></li>
			</ul>
		</div>
		<div id="show-user" class="text-left content scaffold-show" role="main">
			<g:if test="${flash.message}">
				<div class="message alert alert-info" role="status">${flash.message}</div>
			</g:if>
			<br>
			<div class="row">
                <div class="col-md-3 col-lg-3 " align="center">
                  <img alt="User Pic" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=100" class="img-circle">
                  <h1 class="main-title text-center">${userInstance}</h1>
                </div>
                <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-user-information">
                    <tbody>
					  <tr class="fieldcontain">
                        <td><span id="rol-label" class="property-label">Rol</span>:</td>
                        <td><span class="property-value" aria-labelledby="rol-label">${org.una.simceg.UserRole.findByUser(userInstance)?.role}</span></td>
                      </tr>
                      <g:if test="${userInstance?.username}">
                      <tr class="fieldcontain">
                        <td><span id="username-label" class="property-label"><g:message code="user.username.label" default="Username" /></span>:</td>
                        <td><span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${userInstance}" field="username"/></span></td>
                      </tr>
                      </g:if>
                      <g:if test="${userInstance?.nombre}">
                      <tr class="fieldcontain">
                        <td><span id="nombre-label" class="property-label"><g:message code="user.nombre.label" default="Nombre" /></span>:</td>
                        <td><span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${userInstance}" field="nombre"/></span></td>
                      </tr>
                      </g:if>
                      <g:if test="${userInstance?.primerApellido}">
                      <tr class="fieldcontain">
                        <td><span id="primerApellido-label" class="property-label"><g:message code="user.primerApellido.label" default="Primer Apellido" /></span>:</td>
                        <td><span class="property-value" aria-labelledby="primerApellido-label"><g:fieldValue bean="${userInstance}" field="primerApellido"/></span></td>
                      </tr>
                      </g:if>
                      <g:if test="${userInstance?.segundoApellido}">
                      <tr class="fieldcontain">
                        <td><span id="segundoApellido-label" class="property-label"><g:message code="user.segundoApellido.label" default="Segundo Apellido" /></span>:</td>
                        <td><span class="property-value" aria-labelledby="segundoApellido-label"><g:fieldValue bean="${userInstance}" field="segundoApellido"/></span></td>
                      </tr>
                      </g:if>
                      <g:if test="${userInstance?.accountExpired}">
                      <tr class="fieldcontain">
                        <td><span id="accountExpired-label" class="property-label"><g:message code="user.accountExpired.label" default="Account Expired" /></span>:</td>
                        <td><span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${userInstance?.accountExpired}" /></span></td>
                      </tr>
                      </g:if>
                      <g:if test="${userInstance?.accountLocked}">
                      <tr class="fieldcontain">
                        <td><span id="accountLocked-label" class="property-label"><g:message code="user.accountLocked.label" default="Account Locked" /></span>:</td>
                        <td><span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${userInstance?.accountLocked}" /></span></td>
                      </tr>
                      </g:if>
                      <g:if test="${userInstance?.cedula}">
                      <tr class="fieldcontain">
                        <td><span id="cedula-label" class="property-label"><g:message code="user.cedula.label" default="Cedula" /></span>:</td>
                        <td><span class="property-value" aria-labelledby="cedula-label"><g:fieldValue bean="${userInstance}" field="cedula"/></span></td>
                      </tr>
                      </g:if>
                      <g:if test="${userInstance?.direccion}">
                      <tr class="fieldcontain">
                        <td><span id="direccion-label" class="property-label"><g:message code="user.direccion.label" default="Direccion" /></span>:</td>
                        <td><span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${userInstance}" field="direccion"/></span></td>
                      </tr>
                      </g:if>
                      <g:if test="${userInstance?.email}">
                      <tr class="fieldcontain">
                        <td><span id="email-label" class="property-label"><g:message code="user.email.label" default="Email" /></span>:</td>
                        <td><span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${userInstance}" field="email"/></span></td>
                      </tr>
                      </g:if>
                      <g:if test="${userInstance?.enabled}">
                      <tr class="fieldcontain">
                        <td><span id="enabled-label" class="property-label"><g:message code="user.enabled.label" default="Enabled" /></span>:</td>
                        <td><span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${userInstance?.enabled}" /></span></td>
                      </tr>
                      </g:if>
                      <g:if test="${userInstance?.estadoCivil}">
                      <tr class="fieldcontain">
                        <td><span id="estadoCivil-label" class="property-label"><g:message code="user.estadoCivil.label" default="Estado Civil" /></span>:</td>
                        <td><span class="property-value" aria-labelledby="estadoCivil-label"><g:fieldValue bean="${userInstance}" field="estadoCivil"/></span></td>
                      </tr>
                      </g:if>
                      <g:if test="${userInstance?.nacionalidad}">
                      <tr class="fieldcontain">
                        <td><span id="nacionalidad-label" class="property-label"><g:message code="user.nacionalidad.label" default="Nacionalidad" /></span>:</td>
                        <td><span class="property-value" aria-labelledby="nacionalidad-label"><g:fieldValue bean="${userInstance}" field="nacionalidad"/></span></td>
                      </tr>
                      </g:if>
                      <g:if test="${userInstance?.passwordExpired}">
                      <tr class="fieldcontain">
                        <td><span id="passwordExpired-label" class="property-label"><g:message code="user.passwordExpired.label" default="Password Expired" /></span>:</td>
                        <td><span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${userInstance?.passwordExpired}" /></span></td>
                      </tr>
                      </g:if>
                      <g:if test="${userInstance?.telefono}">
                      <tr class="fieldcontain">
                        <td><span id="telefono-label" class="property-label"><g:message code="user.telefono.label" default="Telefono" /></span>:</td>
                        <td><span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${userInstance}" field="telefono"/></span></td>
                      </tr>
                      </g:if>
                    </tbody>
                  </table>
                </div>
            </div>
            <div class="row">
            	<div class="col-md-12">
            		<g:link class="pull-right edit btn btn-primary" action="edit" resource="${userInstance}">Editar</g:link>
            	</div>
            </div>
			<!--
			<g:form url="[resource:userInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
			 -->
		</div>
	</body>
</html>
