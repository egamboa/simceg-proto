
<%@ page import="org.una.simceg.Nivel" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'nivel.label', default: 'Nivel')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav nav-inner" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li><g:link class="create" action="create">Nuevo Nivel</g:link></li>
			</ul>
		</div>
		<div id="list-nivel" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			<div class="panel panel-default">
                   <div class="panel-heading">
                       Niveles
                   </div>
                   <!-- /.panel-heading -->
                   <div class="panel-body">
                       <div class="table-responsive">
                           <table class="table table-striped">
								<thead>
										<tr>
											<g:sortableColumn property="descripcion" title="${message(code: 'nivel.descripcion.label', default: 'Descripcion')}" />
											<th>Materias</th>
										</tr>
									</thead>
									<tbody>
									<g:each in="${nivelInstanceList}" status="i" var="nivelInstance">
										<tr class="text-left ${(i % 2) == 0 ? 'even' : 'odd'}">
											<td>${fieldValue(bean: nivelInstance, field: "descripcion")}</td>
											<td>
												<g:if test="${nivelInstance.materias.size() > 0}">
													<button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="right" data-content="${nivelInstance.listaMaterias()}">
													  ver
													</button>
												</g:if>
											</td>
											<td><g:link action="editar" id="${nivelInstance.id}">Editar</g:link></td>
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
				<g:paginate total="${nivelInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
