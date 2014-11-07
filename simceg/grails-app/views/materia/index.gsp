
<%@ page import="org.una.simceg.Materia" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'materia.label', default: 'Materia')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li> <g:link controller="dashboard">Principal</g:link> </li>
				<li><g:link class="create" action="create">Nueva Materia</g:link></li>
			</ul>
		</div>
		<div id="list-materia" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			<div class="panel panel-default">
                   <div class="panel-heading">
                       Lista de Grupos
                   </div>
                   <!-- /.panel-heading -->
                   <div class="panel-body">
                       <div class="table-responsive">
                           <table class="table table-striped">
							<thead>
									<tr>
										
										<th>Grupo | Materia</th>
									
										<th><g:message code="materia.grupo.label" default="Grupo" /></th>
									
										<th><g:message code="materia.materia.label" default="Materia" /></th>
									
										<th><g:message code="materia.profesor.label" default="Profesor" /></th>
									
									</tr>
								</thead>
								<tbody>
								<g:each in="${materiaInstanceList}" status="i" var="materiaInstance">
									<tr class="text-left ${(i % 2) == 0 ? 'even' : 'odd'}">
										
										<td><g:link action="show" id="${materiaInstance.id}">${materiaInstance.grupo.descripcion + ' | ' + materiaInstance.materia.descripcion}</g:link></td>
										
										<td>${materiaInstance.grupo.descripcion}</td>
									
										<td>${materiaInstance.materia.descripcion}</td>
									
										<td>${materiaInstance.profesor.usuario.nombreCompleto()}</td>
									
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
				<g:paginate total="${materiaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
