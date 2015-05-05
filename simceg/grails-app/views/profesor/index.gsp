
<%@ page import="org.una.simceg.Profesor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'profesor.label', default: 'Profesor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav nav-inner" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li><g:link class="create" action="create">Nuevo Profesor</g:link></li>
			</ul>
		</div>
		<div id="list-profesor" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message alert alert-info" role="status">${flash.message}</div>
			</g:if>
            <div class="text-left">
            	<h1 class="main-title">Profesores</h1>
            	<div class="row">
            	<g:each in="${profesorInstanceList}" status="i" var="profesorInstance">
	            	<div class="objeto-listado profesor col-md-4 col-sm-6 ${(i % 2) == 0 ? 'odd' : 'even'}">
		                <div class="panel panel-default">
		                    <div class="panel-heading text-center">
		                        <g:img uri="/simceg/assets/Icon-user.png" width="100" height="100"/>
		                        <div>
		                        	<g:link action="show" id="${profesorInstance.id}">
		                        		${profesorInstance?.usuario?.nombreCompleto()}
		                        	</g:link>
		                        	
		                        </div>
		                    </div>
		                    <div class="panel-body">
		                    	<h4>${fieldValue(bean: profesorInstance, field: "descripcion")}</h4>
		                        <ul>
		                        	<li>
		                        		Grado profesional: ${fieldValue(bean: profesorInstance, field: "gradoProfesional")}
		                        	</li>
		                        	<li>
		                        		Estado:${profesorInstance.activo ? 'Activo' : 'Inactivo'}
		                        	</li>
		                        	<li>
		                        		Fecha de ingreso: <g:formatDate date="${profesorInstance.fechaIngreso}"  format="dd - MM - yyyy" />
		                        	</li>
		                        	<li class="text-right">
		                        		<g:link class="btn btn-default" action="editar" id="${profesorInstance.id}">Editar</g:link>
		                        	</li>
		                        </ul>
		                    </div>
		                </div>
		            </div>
		        </g:each>
		        </div>
            </div>
			<div class="pagination">
				<g:paginate total="${profesorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
