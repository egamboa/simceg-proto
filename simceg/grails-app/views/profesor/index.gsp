
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
				<div class="message" role="status">${flash.message}</div>
			</g:if>
				<div class="panel panel-default">
                   <div class="panel-heading">
                       Profesores
                   </div>
                   <!-- /.panel-heading -->
                   <div class="panel-body">
                       <div class="table-responsive">	
						<table class="table table-striped">
						<thead>
								<tr>

									<th><g:message code="profesor.usuario.label" default="Usuario" /></th>
								
									<g:sortableColumn property="activo" title="${message(code: 'profesor.activo.label', default: 'Activo')}" />
								
									<g:sortableColumn property="descripcion" title="${message(code: 'profesor.descripcion.label', default: 'Descripcion')}" />
								
									<g:sortableColumn property="fechaIngreso" title="${message(code: 'profesor.fechaIngreso.label', default: 'Fecha Ingreso')}" />
								
									<g:sortableColumn property="gradoProfesional" title="${message(code: 'profesor.gradoProfesional.label', default: 'Grado Profesional')}" />
								
								</tr>
							</thead>
							<tbody>
							<g:each in="${profesorInstanceList}" status="i" var="profesorInstance">
								<tr class="text-left ${(i % 2) == 0 ? 'even' : 'odd'}">

									<td>
										<g:link action="show" id="${profesorInstance.id}">
											${profesorInstance.usuario.nombreCompleto()}
										</g:link>
									</td>
								
									<td>${profesorInstance.activo ? 'Activo' : 'Inactivo'}</td>
								
									<td>${fieldValue(bean: profesorInstance, field: "descripcion")}</td>
								
									<td><g:formatDate date="${profesorInstance.fechaIngreso}"  format="dd - MM - yyyy" /></td>
								
									<td>${fieldValue(bean: profesorInstance, field: "gradoProfesional")}</td>
								
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
				<g:paginate total="${profesorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
