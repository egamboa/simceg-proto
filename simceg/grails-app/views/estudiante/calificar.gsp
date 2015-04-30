<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'estudiante.label', default: 'Estudiante')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<script type="text/javascript">
		var notas = '${notas}';
		var notasParsed = JSON.parse(notas.replace(/&quot;/g,'"'));
		</script>
		<input type="hidden" value="${estudianteInstance.id}" name="estudianteId" id="estudianteId">
		<input type="hidden" value="${grupo.id}" name="grupoId" id="grupoId">

		<g:link 
			class="hidden" 
			elementId="salvarNota" 
			controller="estudiante" 
			action="salvarNota" />
		<g:link 
			class="hidden" 
			elementId="salvaComentario" 
			controller="estudiante" 
			action="salvaComentario" />

		<div class="nav nav-inner" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li><g:link class="list" controller="profesor" action="verGrupo" id="${grupo.id}">Volver</g:link></li>
			</ul>
		</div>
		<div id="califica-estudiante" class="content text-left scaffold-create row" role="main">
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
			          <g:each in="${ (0..<grupo?.nivel?.ciclos) }" var="it" status="i">
				          <td>
				          	<div class="input-holder">
				          		<input  data-ciclo="${i+1}"
				          				data-materia="${materia.id}"
				          				type="number" 
					          			class="form-control nota" 
					          			max="100" 
					          			min="0" 
					          			size="3" 
					          			maxlength="3">
				          	</div>
				          </td>
				      </g:each>
			        </tr>
			    	</g:each>
			      </tbody>
			    </table>
			</div>
			<div class="col-lg-12 ciclo-comentarios">
				<h2 class="second-title">Comentarios</h2>
				<g:each in="${ (0..<grupo?.nivel?.ciclos) }" var="it" status="i">
					<hr>
					<span class="muted"><g:message code="org.una.simceg.ciclo.texto.${i+1}" /> Ciclo</span>
					<textarea class="form-control ciclo-comentario" data-ciclo="${i+1}" rows="3"></textarea>
				</g:each>
			</div>
		</div>
	</body>
</html>