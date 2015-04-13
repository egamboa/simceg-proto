
<%@ page import="org.una.simceg.Estudiante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'estudiante.label', default: 'Estudiante')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav nav-inner" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li><g:link class="create" action="create">Nuevo Estudiante</g:link></li>
			</ul>
		</div>
		<div id="list-estudiante" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>

			<div class="panel panel-default">
                   <div class="panel-heading">
                      Estudiantes
                   </div>
                   <!-- /.panel-heading -->
                   <div class="panel-body">
                       <div class="table-responsive">
                           <table class="table table-striped">
                               <thead>
                                   <tr class="text-center">
                                   	   <g:sortableColumn property="cedula" title="Cédula" />
                                       <g:sortableColumn property="nombre" title="Nombre" />
                                       <g:sortableColumn property="primerApellido" title="1er Apellido" />
                                       <g:sortableColumn property="segundoApellido" title="2do Apellido" />
                                       <g:sortableColumn property="activo" title="Activo" />
                                       <g:sortableColumn property="fechaNacimiento" title="Fecha Nacimiento" />
                                   </tr>
                               </thead>
                               <tbody>
                                   <g:each in="${estudianteInstanceList}" status="i" var="estudianteInstance">
										<tr class="text-left ${(i % 2) == 0 ? 'even' : 'odd'}">
											<td><g:link action="show" id="${estudianteInstance.id}">${fieldValue(bean: estudianteInstance, field: "cedula")}</g:link></td>
											<td>${fieldValue(bean: estudianteInstance, field: "nombre")}</td>
											
											<td>${fieldValue(bean: estudianteInstance, field: "primerApellido")}</td>
											
											<td>${fieldValue(bean: estudianteInstance, field: "segundoApellido")}</td>
				
											<td>${estudianteInstance.activo ? 'Activo' : 'Inactivo' }</td>
											
											<td><g:formatDate date="${estudianteInstance.fechaNacimiento}" format="dd - MM - yyyy"/></td>
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
				<g:paginate total="${estudianteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
