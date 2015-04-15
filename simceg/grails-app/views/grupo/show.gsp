
<%@ page import="org.una.simceg.Grupo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'grupo.label', default: 'Grupo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav nav-inner" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li><g:link class="list" action="index">Lista de Grupos</g:link></li>
				<li><g:link class="create" action="create">Nuevo Grupo</g:link></li>
			</ul>
		</div>
		<div id="show-grupo" class="content scaffold-show" role="main">
			<h1 class="main-title text-left"><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message alert alert-info" role="status">${flash.message}</div>
			</g:if>
			
			
			<div class="row">
			  <div class=" col-md-12"> 
			  	<div class="col-md-5">
				    <table class="table table-bordered table-grupo-information text-left">
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
						<tr>
							<td></td>
							<td>
								<g:link class="edit btn btn-primary" action="editar" resource="${grupoInstance}">Editar</g:link>
							</td>
						</tr>
				      </tbody>
				    </table>
				</div>
			    <div class="bs-example col-md-12">
			    	<h2 class="text-left">Estudiantes</h2>
			    	<g:if test="${grupoInstance?.estudiantes}">
					    <table class="table table-hover text-left">
					      <thead>
					        <tr>
					          <th>#</th>
					          <th>Nombre</th>
					          <th>Primer Apellido</th>
					          <th>Segundo Apellido</th>
					        </tr>
					      </thead>
					      <tbody>
					      	<g:each in="${grupoInstance.estudiantes.sort{it.primerApellido}}" status="index" var="e">
						        <tr>
						          <th scope="row">${index+1}</th>
						          <td><g:link controller="estudiante" action="show" id="${e.id}">${e?.nombre}</g:link></td>
						          <td>${e?.primerApellido}</td>
						          <td>${e?.segundoApellido}</td>
						        </tr>
					        </g:each>
					      </tbody>
					    </table>
					</g:if>
				  </div>
			  </div>
			</div>
		</div>
	</body>
</html>
