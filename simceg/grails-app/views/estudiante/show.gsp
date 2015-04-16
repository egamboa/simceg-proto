
<%@ page import="org.una.simceg.Estudiante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'estudiante.label', default: 'Estudiante')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav nav-inner" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li><g:link class="list" action="index">Lista Estudiantes</g:link></li>
				<li><g:link class="create" action="create">Nuevo Estudiante</g:link></li>
			</ul>
		</div>
		<div id="show-estudiante" class="content scaffold-show text-left" role="main">
			<g:if test="${flash.message}">
				<div class="message alert alert-info" role="status">${flash.message}</div>
			</g:if>
			<div class="row">
				<br>
			  <div class="col-md-3 col-lg-3 " align="center"> 
			  	<img alt="User Pic" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=100" class="img-circle"> 
			  	<h1 class="main-title text-center">${estudianteInstance}</h1>
			  </div>
			  <div class=" col-md-9 col-lg-9 "> 
			    <table class="table table-user-information">
			      <tbody>
			
			        <g:if test="${estudianteInstance?.activo}">
			          <tr class="fieldcontain">
			            <td>
			              <span id="activo-label" class="property-label"><g:message code="estudiante.activo.label" default="Activo" /></span>
			            </td>
			            <td>
			              <span class="property-value" aria-labelledby="activo-label"><g:formatBoolean boolean="${estudianteInstance?.activo}" /></span>
			            </td>
			          </tr>
			        </g:if>

			        <g:if test="${estudianteInstance?.nombre}">
			          <tr class="fieldcontain">
			            <td>
			              <span id="nombre-label" class="property-label"><g:message code="estudiante.nombre.label" default="Nombre" /></span>
			            </td>
			            <td>
			              <span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${estudianteInstance}" field="nombre"/></span>
			            </td>
			          </tr>
			        </g:if>
			      
			        <g:if test="${estudianteInstance?.primerApellido}">
			          <tr class="fieldcontain">
			            <td>
			              <span id="primerApellido-label" class="property-label"><g:message code="estudiante.primerApellido.label" default="Primer Apellido" /></span>
			            </td>
			            <td>
			              <span class="property-value" aria-labelledby="primerApellido-label"><g:fieldValue bean="${estudianteInstance}" field="primerApellido"/></span>
			            </td>            
			          </tr>
			        </g:if>
			      
			        <g:if test="${estudianteInstance?.segundoApellido}">
			          <tr class="fieldcontain">
			            <td>
			              <span id="segundoApellido-label" class="property-label"><g:message code="estudiante.segundoApellido.label" default="Segundo Apellido" /></span>
			            </td>
			            <td>
			              <span class="property-value" aria-labelledby="segundoApellido-label"><g:fieldValue bean="${estudianteInstance}" field="segundoApellido"/></span>
			            </td>
			          </tr>
			        </g:if>			        
			
			        <g:if test="${estudianteInstance?.adecuacion}">
			          <tr class="fieldcontain">
			            <td>
			              <span id="adecuacion-label" class="property-label"><g:message code="estudiante.adecuacion.label" default="Adecuacion" /></span>
			            </td>
			            <td>
			              <span class="property-value" aria-labelledby="adecuacion-label"><g:formatBoolean boolean="${estudianteInstance?.adecuacion}" /></span>
			            </td>
			          </tr>
			        </g:if>
			      
			        <g:if test="${estudianteInstance?.direccion}">
			          <tr class="fieldcontain">
			            <td>
			              <span id="direccion-label" class="property-label"><g:message code="estudiante.direccion.label" default="Direccion" /></span>
			            </td>
			            <td>
			              <span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${estudianteInstance}" field="direccion"/></span>
			            </td>
			          </tr>
			        </g:if>
			      
			        <g:if test="${estudianteInstance?.encargado}">
			          <tr class="fieldcontain">
			            <td>
			              <span id="encargado-label" class="property-label"><g:message code="estudiante.encargado.label" default="Encargado" /></span>
			            </td>
			            <td>
			               <span class="property-value" aria-labelledby="encargado-label"><g:link controller="user" action="show" id="${estudianteInstance?.encargado?.id}">${estudianteInstance?.encargado?.nombreCompleto()}</g:link></span>
			            </td>
			          </tr>
			        </g:if>
			      
			        <g:if test="${estudianteInstance?.fechaIngreso}">
			          <tr class="fieldcontain">
			            <td>
			              <span id="fechaIngreso-label" class="property-label"><g:message code="estudiante.fechaIngreso.label" default="Fecha Ingreso" /></span>
			            </td>
			            <td>
			              <span class="property-value" aria-labelledby="fechaIngreso-label"><g:formatDate date="${estudianteInstance?.fechaIngreso}" /></span>
			            </td>
			          </tr>
			        </g:if>
			      
			        <g:if test="${estudianteInstance?.fechaNacimiento}">
			          <tr class="fieldcontain">
			            <td>
			              <span id="fechaNacimiento-label" class="property-label"><g:message code="estudiante.fechaNacimiento.label" default="Fecha Nacimiento" /></span>
			            </td>
			            <td>
			              <span class="property-value" aria-labelledby="fechaNacimiento-label"><g:formatDate date="${estudianteInstance?.fechaNacimiento}" /></span>
			            </td>
			          </tr>
			        </g:if>
			      
			        <g:if test="${estudianteInstance?.nacionalidad}">
			          <tr class="fieldcontain">
			            <td>
			              <span id="nacionalidad-label" class="property-label"><g:message code="estudiante.nacionalidad.label" default="Nacionalidad" /></span>
			            </td>
			            <td>
			              <span class="property-value" aria-labelledby="nacionalidad-label"><g:fieldValue bean="${estudianteInstance}" field="nacionalidad"/></span>
			            </td>
			          </tr>
			        </g:if>
			      
			        <g:if test="${estudianteInstance?.tipoSangre}">
			          <tr class="fieldcontain">
			            <td>
			              <span id="tipoSangre-label" class="property-label"><g:message code="estudiante.tipoSangre.label" default="Tipo Sangre" /></span>
			            </td>
			            <td>
			              <span class="property-value" aria-labelledby="tipoSangre-label"><g:fieldValue bean="${estudianteInstance}" field="tipoSangre"/></span>
			            </td>            
			          </tr>
			        </g:if>
			      
			        <g:if test="${estudianteInstance?.viveEncargado}">
			          <tr class="fieldcontain">
			            <td>
			              <span id="viveEncargado-label" class="property-label"><g:message code="estudiante.viveEncargado.label" default="Vive Encargado" /></span>
			            </td>
			            <td>
			              <span class="property-value" aria-labelledby="viveEncargado-label"><g:formatBoolean boolean="${estudianteInstance?.viveEncargado}" /></span>
			            </td>
			          </tr>
			        </g:if>
			      </tbody>
			    </table>
			  </div>
			</div>
			<div class="row">
            	<div class="col-md-12">
            		<g:link class="pull-right edit btn btn-primary" action="edit" resource="${estudianteInstance}">Editar</g:link>
            	</div>
            </div>
            <!-- 
			<g:form url="[resource:estudianteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${estudianteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
			 -->
		</div>
	</body>
</html>
