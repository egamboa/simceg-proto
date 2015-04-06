
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
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			
				<div class="panel panel-default">
                   <div class="panel-heading">
                       Grupos
                   </div>
                   <!-- /.panel-heading -->
                   <div class="panel-body">
                       <div class="table-responsive">
                           <table class="table table-striped">
								<thead>
									<tr>
									
										<g:sortableColumn property="descripcion" title="${message(code: 'grupo.descripcion.label', default: 'Descripcion')}" />
									
										<th><g:message code="grupo.nivel.label" default="Nivel" /></th>
									
										<th><g:message code="grupo.periodo.label" default="Periodo" /></th>

										<th><g:message code="grupo.profesor.label" default="Profesor" /></th>
									
									</tr>
								</thead>
								<tbody>
								<g:each in="${grupoInstanceList}" status="i" var="grupoInstance">
									<tr class="text-left ${(i % 2) == 0 ? 'even' : 'odd'}">
									
										<td><g:link action="show" id="${grupoInstance.id}">${fieldValue(bean: grupoInstance, field: "descripcion")}</g:link></td>
									
										<td>${grupoInstance.nivel.descripcion}</td>
									
										<td>${grupoInstance.periodo.descripcion}</td>

										<td>${grupoInstance.profesor}</td>
										
										<td><g:link action="editar" id="${grupoInstance.id}">Editar</g:link></td>

									</tr>
								</g:each>
								</tbody>
							</table>
                       </div>
                       <!-- /.table-responsive -->
                   </div>
                   <!-- /.panel-body -->
            </div>
			<div class="pagination">
				<g:paginate total="${grupoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
