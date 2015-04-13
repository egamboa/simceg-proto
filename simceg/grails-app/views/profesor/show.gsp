
<%@ page import="org.una.simceg.Profesor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'profesor.label', default: 'Profesor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body class="text-left">
		<div class="nav nav-inner" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li><g:link class="list" action="index">Lista de Profesores</g:link></li>
				<li><g:link class="create" action="create">Nuevo Profesor</g:link></li>
			</ul>
		</div>
		<div id="show-profesor" class="text-left content scaffold-show" role="main">
			<h1 class="main-title text-left">${profesorInstance?.usuario?.nombreCompleto()}</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
				<div class="row">
				  <div class="col-md-3 col-lg-3 " align="center"> <img alt="User Pic" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=100" class="img-circle"> </div>
				  <div class=" col-md-9 col-lg-9 "> 
				    <table class="table table-profesor-information">
				      <tbody>
						<g:if test="${profesorInstance?.fechaSalida}">
						<tr class="fieldcontain">
							<td><span id="fechaSalida-label" class="property-label"><g:message code="profesor.fechaSalida.label" default="Fecha Salida" /></span></td>
							<td><span class="property-value" aria-labelledby="fechaSalida-label"><g:formatDate date="${profesorInstance?.fechaSalida}" /></span></td>
						</tr>
						</g:if>
					
						<g:if test="${profesorInstance?.activo}">
						<tr class="fieldcontain">
							<td><span id="activo-label" class="property-label"><g:message code="profesor.activo.label" default="Activo" /></span></td>
							<td><span class="property-value" aria-labelledby="activo-label">${profesorInstance.activo ? 'Activo' : 'Inactivo'}</span></td>
						</tr>
						</g:if>

						<g:if test="${profesorInstance?.usuario}">
						<tr class="fieldcontain">
							<td><span id="usuario-label" class="property-label"><g:message code="profesor.usuario.label" default="Usuario" /></span></td>
							<td><span class="property-value" aria-labelledby="usuario-label"><g:link controller="user" action="show" id="${profesorInstance?.usuario?.id}">${profesorInstance?.usuario?.nombreCompleto()}</g:link></span></td>
						</tr>
						</g:if>

						<g:if test="${profesorInstance?.gradoProfesional}">
						<tr class="fieldcontain">
							<td><span id="gradoProfesional-label" class="property-label"><g:message code="profesor.gradoProfesional.label" default="Grado Profesional" /></span></td>
							<td><span class="property-value" aria-labelledby="gradoProfesional-label"><g:fieldValue bean="${profesorInstance}" field="gradoProfesional"/></span></td>
						</tr>
						</g:if>
					
						<g:if test="${profesorInstance?.descripcion}">
						<tr class="fieldcontain">
							<td><span id="descripcion-label" class="property-label"><g:message code="profesor.descripcion.label" default="Descripcion" /></span></td>
							<td><span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${profesorInstance}" field="descripcion"/></span></td>
						</tr>
						</g:if>
					
						<g:if test="${profesorInstance?.fechaIngreso}">
						<tr class="fieldcontain">
							<td><span id="fechaIngreso-label" class="property-label"><g:message code="profesor.fechaIngreso.label" default="Fecha Ingreso" /></span></td>
							<td><span class="property-value" aria-labelledby="fechaIngreso-label"><g:formatDate date="${profesorInstance?.fechaIngreso}" format="dd - MM - yyyy"/></span></td>
						</tr>
						</g:if>
				
				 	</tbody>
			    </table>
			  </div>
			</div>
			<div class="row">
            	<div class="col-md-12">
            		<g:link class="pull-right edit btn btn-primary" action="edit" resource="${profesorInstance}">Editar</g:link>
            	</div>
            </div>
            <!-- 
			<g:form url="[resource:profesorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
			 -->
		</div>
	</body>
</html>
