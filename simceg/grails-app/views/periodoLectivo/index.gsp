
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
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="panel panel-default">
                   <div class="panel-heading">
                       Periodos Lectivos
                   </div>
                   <!-- /.panel-heading -->
                   <div class="panel-body">
                       <div class="table-responsive">
                         	<table class="table table-striped">
							<thead>
									<tr>
									
										<g:sortableColumn property="anio" title="${message(code: 'periodoLectivo.anio.label', default: 'Año')}" />
									
										<g:sortableColumn property="descripcion" title="${message(code: 'periodoLectivo.descripcion.label', default: 'Descripción')}" />

										<g:sortableColumn property="tiempoInicio" title="${message(code: 'periodoLectivo.tiempoInicio.label', default: 'Tiempo Inicio')}" />
									
										<g:sortableColumn property="tiempoFinal" title="${message(code: 'periodoLectivo.tiempoFinal.label', default: 'Tiempo Final')}" />
									
									</tr>
								</thead>
								<tbody>
								<g:each in="${periodoLectivoInstanceList}" status="i" var="periodoLectivoInstance">
									<tr class="text-left ${(i % 2) == 0 ? 'even' : 'odd'}">
									
										<td>${periodoLectivoInstance.anio}</td>
									
										<td>${fieldValue(bean: periodoLectivoInstance, field: "descripcion")}</td>

										<td><g:formatDate date="${periodoLectivoInstance.tiempoInicio}" format="dd - MM - yyyy"/></td>

										<td><g:formatDate date="${periodoLectivoInstance.tiempoFinal}" format="dd - MM - yyyy"/></td>
										<td><g:link action="editar" id="${periodoLectivoInstance.id}">Editar</g:link></td>
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
				<g:paginate total="${periodoLectivoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
