
<%@ page import="org.una.simceg.Grupo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'grupo.label', default: 'Grupo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li> <g:link controller="dashboard">Principal</g:link> </li>
				<li><g:link class="list" action="index">Lista de Grupos</g:link></li>
				<li><g:link class="create" action="create">Nuevo Grupo</g:link></li>
			</ul>
		</div>
		<div id="show-grupo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			
			<div class="row">
			  <div class=" col-md-12"> 
			    <table class="table table-grupo-information">
			      <tbody>
			      	<g:if test="${grupoInstance?.descripcion}">
					<tr class="fieldcontain">
						<td>
							<span id="descripcion-label" class="property-label"><g:message code="grupo.descripcion.label" default="Descripcion" /></span>
						</td>
						<td>
							<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${grupoInstance}" field="descripcion"/></span>
						</td>
					</tr>
					</g:if>
				
					<g:if test="${grupoInstance?.estudiantes}">
					<tr class="fieldcontain">
						<td>
							<span id="estudiantes-label" class="property-label"><g:message code="grupo.estudiantes.label" default="Estudiantes" /></span>
						</td>
						<td>
							<g:each in="${grupoInstance.estudiantes}" var="e">
								<span class="property-value" aria-labelledby="estudiantes-label"><g:link controller="estudiante" action="show" id="${e.id}">${e?.nombreCompleto()}</g:link></span>
							</g:each>
						</td>
					</tr>
					</g:if>
				
					<g:if test="${grupoInstance?.materias}">
					<tr class="fieldcontain">
						<td>
							<span id="materias-label" class="property-label"><g:message code="grupo.materias.label" default="Materias" /></span>
						</td>
						<td>
							<g:each in="${grupoInstance.materias}" var="m">
								<span class="property-value" aria-labelledby="materias-label"><g:link controller="materia" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
							</g:each>
						</td>
					</tr>
					</g:if>
				
					<g:if test="${grupoInstance?.nivel}">
					<tr class="fieldcontain">
						<td>
							<span id="nivel-label" class="property-label"><g:message code="grupo.nivel.label" default="Nivel" /></span>
						</td>
						<td>
							<span class="property-value" aria-labelledby="nivel-label"><g:link controller="nivel" action="show" id="${grupoInstance?.nivel?.id}">${grupoInstance?.nivel?.descripcion}</g:link></span>
						</td>
					</tr>
					</g:if>
				
					<g:if test="${grupoInstance?.periodo}">
					<tr class="fieldcontain">
						<td>
							<span id="periodo-label" class="property-label"><g:message code="grupo.periodo.label" default="Periodo" /></span>
						</td>
						<td>
							<span class="property-value" aria-labelledby="periodo-label"><g:link controller="periodoLectivo" action="show" id="${grupoInstance?.periodo?.id}">${grupoInstance?.periodo?.descripcion}</g:link></span>
						</td>
					</tr>
					</g:if>
			      </tbody>
			    </table>
			  </div>
			</div>
			<div class="row">
            	<div class="col-md-2 col-md-offset-10">
            		<g:link class="edit btn btn-primary" action="edit" resource="${grupoInstance}">Editar</g:link>
            	</div>
            </div>
            <!-- 
			<g:form url="[resource:grupoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
			 -->
		</div>
	</body>
</html>
