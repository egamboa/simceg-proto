
<%@ page import="org.una.simceg.PeriodoLectivo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'periodoLectivo.label', default: 'PeriodoLectivo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav nav-inner" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li><g:link class="create" action="create">Nuevo Periodo</g:link></li>
			</ul>
		</div>
		<div id="list-periodoLectivo" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message alert alert-info" role="status">${flash.message}</div>
			</g:if>
            <div class="text-left">
            	<h1 class="main-title">Periodos Lectivos</h1>
            	<div class="row">
            	<g:each in="${periodoLectivoInstanceList}" status="i" var="periodoLectivoInstance">
	            	<div class="objeto-listado periodo-lectivo col-md-4 col-sm-6 ${(i % 2) == 0 ? 'odd' : 'even'}">
		                <div class="panel panel-default">
		                    <div class="panel-heading text-center">
		                        ${periodoLectivoInstance.anio}
		                    </div>
		                    <div class="panel-body">
		                        <h4>${fieldValue(bean: periodoLectivoInstance, field: "descripcion")}</h4>
		                        <ul>
		                        	<li>
		                        		<p>Inicia: <g:formatDate date="${periodoLectivoInstance.tiempoInicio}" format="dd - MM - yyyy"/></p>
		                        	</li>
		                        	<li> 
		                        		<p>Termina: <g:formatDate date="${periodoLectivoInstance.tiempoFinal}" format="dd - MM - yyyy"/></p> 
		                        	</li>
		                        	<li class="text-right"><g:link class="btn btn-default" action="editar" id="${periodoLectivoInstance.id}">Editar</g:link></li>
		                        </ul>
		                    </div>
		                </div>
		            </div>
		        </g:each>
		        </div>
            </div>
			<div class="pagination">
				<g:paginate total="${periodoLectivoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
