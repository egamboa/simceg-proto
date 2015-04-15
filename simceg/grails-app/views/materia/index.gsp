
<%@ page import="org.una.simceg.Materia" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'materia.label', default: 'Materia')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav nav-inner" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li><g:link class="create" action="create">Nueva Materia</g:link></li>
			</ul>
		</div>
		<div id="list-materia" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			<div class="panel panel-default">
                   <div class="panel-heading">
                       Materias
                   </div>
                   <!-- /.panel-heading -->
                   <div class="panel-body">
                       <div class="table-responsive">
                           <table class="table table-striped">
							<thead>
								<tr>
									<th><g:message code="materia.materia.label" default="Materia" /></th>
									<th>Acciones</th>
								</tr>
							</thead>
								<tbody>
								<g:each in="${materiaInstanceList}" status="i" var="materiaInstance">
									<tr class="text-left ${(i % 2) == 0 ? 'even' : 'odd'}">
										<td>${materiaInstance.descripcion}</td>
										<td><g:link action="editar" id="${materiaInstance.id}">Editar</g:link></td>
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
