
<%@ page import="org.una.simceg.Materia" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'materia.label', default: 'Materia')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li> <g:link controller="dashboard">Principal</g:link> </li>
				<li><g:link class="list" action="index">Lista de Materias</g:link></li>
				<li><g:link class="create" action="create">Crear Materia</g:link></li>
			</ul>
		</div>
		<div id="show-materia" class="content scaffold-show" role="main">
			<h1>Ver Materia</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="row">
				<div class=" col-md-12"> 
					<table class="table table-grupo-information">
					    <tbody>
							<g:if test="${materiaInstance?.grupo}">
							<tr class="fieldcontain">
								<td>
									<span id="grupo-label" class="property-label"><g:message code="materia.grupo.label" default="Grupo" /></span>
								</td>
								<td>
									<span class="property-value" aria-labelledby="grupo-label"><g:link controller="grupo" action="show" id="${materiaInstance?.grupo?.id}">${materiaInstance?.grupo?.descripcion}</g:link></span>
								</td>
							</tr>
							</g:if>
			
							<g:if test="${materiaInstance?.materia}">
							<tr class="fieldcontain">
								<td>
									<span id="materia-label" class="property-label"><g:message code="materia.materia.label" default="Materia" /></span>
								</td>
								<td>
									<span class="property-value" aria-labelledby="materia-label"><g:link controller="catalogoMateria" action="show" id="${materiaInstance?.materia?.id}">${materiaInstance?.materia?.descripcion}</g:link></span>
								</td>
							</tr>
							</g:if>
			
							<g:if test="${materiaInstance?.profesor}">
							<tr class="fieldcontain">
								<td>
									<span id="profesor-label" class="property-label"><g:message code="materia.profesor.label" default="Profesor" /></span>
								</td>
								<td>
									<span class="property-value" aria-labelledby="profesor-label"><g:link controller="profesor" action="show" id="${materiaInstance?.profesor?.id}">${materiaInstance?.profesor?.usuario.nombreCompleto()}</g:link></span>
								</td>
							</tr>
							</g:if>
						</tbody>
					</table>
				</div>
			</div>
			<div class="row">
            	<div class="col-md-2 col-md-offset-10">
            		<g:link class="edit btn btn-default" action="edit" resource="${materiaInstance}">Editar</g:link>
            	</div>
            </div>
			<!-- 
			<g:form url="[resource:materiaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
			 -->
		</div>
	</body>
</html>
