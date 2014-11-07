
<%@ page import="org.una.simceg.Nivel" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'nivel.label', default: 'Nivel')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li> <g:link controller="dashboard">Principal</g:link> </li>
				<li><g:link class="list" action="index">Lista de Niveles</g:link></li>
				<li><g:link class="create" action="create">Nuevo Nivel</g:link></li>
			</ul>
		</div>
		<div id="show-nivel" class="content scaffold-show" role="main">
			<h1>Mostrar Nivel</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list nivel">
			
				<g:if test="${nivelInstance?.descripcion}">
				<li class="fieldcontain">
					<span id="descripcion-label" class="property-label"><g:message code="nivel.descripcion.label" default="Descripcion" /></span>
					
						<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${nivelInstance}" field="descripcion"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<div class="row">
            	<div class="col-md-2 col-md-offset-10">
            		<g:link class="edit btn btn-primary" action="edit" resource="${nivelInstance}">Editar</g:link>
            	</div>
            </div>
			<!-- 
			<g:form url="[resource:nivelInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
			 -->
		</div>
	</body>
</html>
