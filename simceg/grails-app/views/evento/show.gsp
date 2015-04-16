
<%@ page import="org.una.simceg.Evento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'evento.label', default: 'Evento')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav nav-inner" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li><g:link class="list" action="index">Calendario</g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-evento" class="content scaffold-show" role="main">
			<h1 class="main-title text-left"><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message alert alert-info" role="status">${flash.message}</div>
			</g:if>

			<div class="row">
			  <div class=" col-md-5"> 
			  	<table class="table table-bordered table-grupo-information text-left">
			  		<tbody>
			  			<g:if test="${eventoInstance?.titulo}">
						<tr class="fieldcontain">
							<td>
								<span id="titulo-label" class="property-label"><g:message code="evento.titulo.label" default="Titulo" /></span>
							</td>
							<td>
								<span class="property-value" aria-labelledby="titulo-label"><g:fieldValue bean="${eventoInstance}" field="titulo"/></span>
							</td>
						</tr>
						</g:if>
			  			<g:if test="${eventoInstance?.descripcion}">
						<tr class="fieldcontain">
							<td>
								<span id="descripcion-label" class="property-label"><g:message code="evento.descripcion.label" default="Descripción" /></span>
							</td>
							<td>
								<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${eventoInstance}" field="descripcion"/></span>
							</td>
						</tr>
						</g:if>

						<g:if test="${eventoInstance?.locacion}">
						<tr class="fieldcontain">
							<td>
								<span id="locacion-label" class="property-label"><g:message code="evento.locacion.label" default="Locación" /></span>
							</td>
							<td>
								<span class="property-value" aria-labelledby="locacion-label"><g:fieldValue bean="${eventoInstance}" field="locacion"/></span>
							</td>
						</tr>
						</g:if>

						<g:if test="${eventoInstance?.tiempoFinal}">
						<tr class="fieldcontain">
							<td>
								<span id="tiempoFinal-label" class="property-label"><g:message code="evento.tiempoFinal.label" default="Tiempo Final" /></span>
							</td>
							<td>
								<span class="property-value" aria-labelledby="tiempoFinal-label"><g:formatDate format="dd - MM - yyyy" date="${eventoInstance?.tiempoFinal}" /></span>
							</td>
						</tr>
						</g:if>

						<g:if test="${eventoInstance?.tiempoInicio}">
						<tr class="fieldcontain">
							<td>
								<span id="tiempoInicio-label" class="property-label"><g:message code="evento.tiempoInicio.label" default="Tiempo Inicio" /></span>
							</td>
							<td>
								<span class="property-value" aria-labelledby="tiempoInicio-label"><g:formatDate date="${eventoInstance?.tiempoInicio}" format="dd - MM - yyyy" /></span>
							</td>
						</tr>
						</g:if>
						<tr>
							<td></td>
							<td>
								<g:form url="[resource:eventoInstance, action:'delete']" method="DELETE">
									<fieldset class="buttons">
										<g:link class="edit btn btn-primary" action="edit" resource="${eventoInstance}">
											<g:message code="default.button.edit.label" default="Edit" />
										</g:link>
										<g:actionSubmit class="delete btn btn-danger" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
									</fieldset>
								</g:form>
							</td>
						</tr>
			  		</tbody>
			  	</table>
			  </div>
			</div>
		</div>
	</body>
</html>
