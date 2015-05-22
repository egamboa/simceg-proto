
<%@ page import="org.una.simceg.Grupo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'grupo.label', default: 'Grupo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
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
								<span id="descripcion-label" class="property-label"><g:message code="grupo.descripcion.label" default="Descripción" /></span>
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
								<span class="property-value" aria-labelledby="nivel-label">${grupoInstance?.nivel?.descripcion}</span>
							</td>
						</tr>
						</g:if>
					
						<g:if test="${grupoInstance?.periodo}">
						<tr class="fieldcontain">
							<td>
								<span id="periodo-label" class="property-label"><g:message code="grupo.periodo.label" default="Periodo" /></span>
							</td>
							<td>
								<span class="property-value" aria-labelledby="periodo-label">${grupoInstance?.periodo?.descripcion}</span>
							</td>
						</tr>
						</g:if>
				      </tbody>
				    </table>
				</div>
			    <div class="bs-example col-md-12">
			    	<h2 class="text-left">Estudiantes</h2>
			    	<g:if test="${grupoInstance?.estudiantes}">
					    <table class="table table-hover text-left grupos-table">
					      <thead>
					        <tr>
					          <th>#</th>
					          <th>Nombre</th>
					          <th>Primer Apellido</th>
					          <th>Segundo Apellido</th>
					          <th>Acciones</th>
					        </tr>
					      </thead>
					      <tbody>
					      	<g:each in="${grupoInstance.estudiantes.sort{it.primerApellido}}" status="index" var="e">
						        <tr>
						          <th scope="row">${index+1}</th>
						          <td>${e?.nombre}</td>
						          <td>${e?.primerApellido}</td>
						          <td>${e?.segundoApellido}</td>
						          <td>
						          	<div class="dropdown">
									  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
									    Acción
									    <span class="caret"></span>
									  </button>
									  <ul class="dropdown-menu dropdown-menu-left" role="menu" aria-labelledby="dropdownMenu1">
									    <li role="presentation">
									    	<g:link controller="profesor" action="verEstudiante" params="[grupo: grupoInstance.id]" id="${e.id}">
									    		Ver Perfil
									    	</g:link>
									    </li>
									    <li role="presentation">
									    	<g:link controller="mensaje" action="create" params="[receptor: "${e?.encargado?.id}"]">
									    		Enviar Mensaje
									    	</g:link>
									    </li>
									    <li role="presentation">
									    	<g:link controller="estudiante" action="calificar" id="${e.id}" params="[grupo: grupoInstance.id]">
									    		Calificar
									    	</g:link>
									    </li>
									  </ul>
									</div>
								  </td>
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
