
<%@ page import="org.una.simceg.Grupo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'grupo.label', default: 'Grupo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav nav-inner" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li><g:link class="create" action="create">Nuevo Grupo</g:link></li>
			</ul>
		</div>
		<div id="list-grupo" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message alert alert-info" role="status">${flash.message}</div>
			</g:if>
            <div class="text-left">
            	<h1 class="main-title">Grupos</h1>
            	<div class="row">
            	<g:each in="${grupoInstanceList}" status="i" var="grupoInstance">
	            	<div class="objeto-listado grupo col-md-4 col-sm-6 ${(i % 2) == 0 ? 'odd' : 'even'}">
		                <div class="panel panel-default">
		                    <div class="panel-heading text-center">
		                       <g:link action="show" id="${grupoInstance.id}">
		                       	${grupoInstance.descripcion}
		                       </g:link>
		                    </div>
		                    <div class="panel-body">
		                        <ul>
		                        	<li>
		                        		Profesor: ${grupoInstance.profesor}
		                        	</li>
		                        	<li>
		                        		Nivel: ${grupoInstance.nivel.descripcion}
		                        	</li>
		                        	<li>
		                        		Periodo: ${grupoInstance.periodo.descripcion}
		                        	</li>
		                        	<li class="text-right"><g:link class="btn btn-default" action="editar" id="${grupoInstance.id}">Editar</g:link></li>
		                        </ul>
		                    </div>
		                </div>
		            </div>
		        </g:each>
		        </div>
            </div>
			<div class="pagination">
				<g:paginate total="${grupoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
