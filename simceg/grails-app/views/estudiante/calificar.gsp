<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'estudiante.label', default: 'Estudiante')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav nav-inner" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li><g:link class="list" controller="profesor" action="verGrupo" id="${grupo.id}">Volver</g:link></li>
			</ul>
		</div>
		<div id="create-estudiante" class="content text-left scaffold-create row" role="main">
			<div class="col-lg-12">
				<h1 class="main-title">Calificando a ${estudianteInstance}</h1>
				<h2 class="second-title">Periodo Lectivo: ${grupo?.periodo?.anio}, Nivel: ${grupo?.nivel}, Grupo: ${grupo?.descripcion} </h2>
				<hr>
				<table class="table table-hover" id="tabla-calificacion">
			      <thead>
			        <tr>
			          <th></th>
			          <g:each in="${ (0..<grupo?.nivel?.ciclos) }" var="it" status="i">
				          <th><div class="cycle-arrow"><g:message code="org.una.simceg.ciclo.${i+1}" /><span class="arrow"></span></div></th>
				      </g:each>
			        </tr>
			      </thead>
			      <tbody>
			      	<g:each in="${materias}" var="materia">
			        <tr>
			          <th scope="row">${materia}</th>
			          <td>
			          	<div class="input-holder">
			          		<input type="number" class="form-control" max="100" min="0" size="3" maxlength="3">
			          	</div>
			          </td>
			          <td>
			          	<div class="input-holder">
			          		<input type="number" class="form-control" max="100" min="0" size="3" maxlength="3">
			          	</div>
			          </td>
			          <td>
			          	<div class="input-holder">
			          		<input type="number" class="form-control" max="100" min="0" size="3" maxlength="3">
			          	</div>
			          </td>
			        </tr>
			    	</g:each>
			      </tbody>
			    </table>
			</div>
			<div class="col-lg-12 ciclo-comentarios">
				<g:each in="${ (0..<grupo?.nivel?.ciclos) }" var="it" status="i">
					<span class="muted"><g:message code="org.una.simceg.ciclo.texto.${i+1}" /> Ciclo</span>
					<textarea class="form-control ciclo-comentario" rows="3"></textarea>
					<hr>
				</g:each>
			</div>
		</div>
	</body>
</html>