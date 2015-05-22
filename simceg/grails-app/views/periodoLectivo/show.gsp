
<%@ page import="org.una.simceg.PeriodoLectivo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'periodoLectivo.label', default: 'PeriodoLectivo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li><g:link class="list" action="index">Lista de Periodos</g:link></li>
				<li><g:link class="create" action="create">Nuevo Periodo</g:link></li>
			</ul>
		</div>
		<div id="show-periodoLectivo" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
				<div class="message alert alert-info" role="status">${flash.message}</div>
			</g:if>
			<div class="row">
				<div class="col-md-6">
					<ul class="text-left periodoLectivo">
						<li>
							<h2>${periodoLectivoInstance.descripcion}</h2>
						</li>
						<g:if test="${periodoLectivoInstance?.anio}">
						<li class="fieldcontain">
							<span id="anio-label" class="property-label"><g:message code="periodoLectivo.anio.label" default="Año" /></span>
							<span class="property-value" aria-labelledby="anio-label">${periodoLectivoInstance.anio}</span>
						</li>
						</g:if>
						<g:if test="${periodoLectivoInstance?.tiempoInicio}">
						<li class="fieldcontain">
							<span id="tiempoInicio-label" class="property-label"><g:message code="periodoLectivo.tiempoInicio.label" default="Tiempo Inicio: " /></span>
							<span class="property-value" aria-labelledby="tiempoInicio-label">
								<g:formatDate date="${periodoLectivoInstance?.tiempoInicio}" format="dd - MM - yyyy"/>
							</span>
						</li>
						</g:if>
						<g:if test="${periodoLectivoInstance?.tiempoFinal}">
						<li class="fieldcontain">
							<span id="tiempoFinal-label" class="property-label"><g:message code="periodoLectivo.tiempoFinal.label" default="Tiempo Final: " /></span>
							<span class="property-value" aria-labelledby="tiempoFinal-label">
								<g:formatDate date="${periodoLectivoInstance?.tiempoFinal}" format="dd - MM - yyyy"/>
							</span>
						</li>
						</g:if>
						<li>
							<g:link class="btn btn-default" action="edit" resource="${periodoLectivoInstance}">Editar</g:link>
						</li>
					</ul>
		        </div>
			</div>	
		</div>
	</body>
</html>
