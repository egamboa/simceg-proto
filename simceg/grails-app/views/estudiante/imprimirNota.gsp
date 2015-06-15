
<%@ page import="org.una.simceg.Estudiante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="print">
		<g:set var="entityName" value="${message(code: 'estudiante.label', default: 'Estudiante')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<script type="text/javascript">
		var notas = '${notas}';
		var notasParsed = JSON.parse(notas.replace(/&quot;/g,'"'));
		var comentarios = '${comentarios}';
		var comentariosParsed = JSON.parse(comentarios.replace(/&quot;/g,'"'));
		</script>
		<div id="show-estudiante" class="content scaffold-show text-left" role="main">
			<g:if test="${flash.message}">
				<div class="message alert alert-info" role="status">${flash.message}</div>
			</g:if>
			<div id="historial" class="row">
				<div class="col-lg-12">
					<g:each in="${grupos}" var="grupoH">
					<div class="row well">
						<div class="col-lg-12">
							<h2 class="second-title">

								<g:img class="main-image" uri="/simceg/assets/Icon-user.png" width="50" height="50"/>
			  					<span class="text-center">${estudianteInstance}</span><br/>

								Periodo Lectivo: ${grupoH?.periodo?.anio}, Nivel: ${grupoH?.nivel}, Grupo: ${grupoH?.descripcion}

							</h2>
							<hr>
							<table class="table table-hover" id="tabla-calificacion">
						      <thead>
						        <tr>
						          <th></th>
						          <g:each in="${ (0..<grupoH?.nivel?.ciclos) }" var="it" status="i">
							          <th><div class="cycle-arrow"><g:message code="org.una.simceg.ciclo.${i+1}" /><span class="arrow"></span></div></th>
							      </g:each>
						        </tr>
						      </thead>
						      <tbody>
						      	<g:each in="${ grupoH?.nivel?.materias.sort { it.descripcion } }" var="materia">
						        <tr>
						          <th scope="row">${materia}</th>
						          <g:each in="${ (0..<grupoH?.nivel?.ciclos) }" var="it" status="i">
							          <td>
							          	<div class="input-holder">
							          		<input  data-ciclo="${i+1}"
							          				data-materia="${materia.id}"
							          				data-grupo="${grupoH.id}"
							          				type="number" 
								          			class="form-control nota" 
								          			max="100" 
								          			min="0" 
								          			size="3"
								          			disabled
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
							<hr>
							<g:each in="${ (0..<grupoH?.nivel?.ciclos) }" var="it" status="i">
								<span class="muted"><g:message code="org.una.simceg.ciclo.texto.${i+1}" /> Ciclo</span>
								<textarea 	class="form-control ciclo-comentario" 
											data-ciclo="${i+1}"
											data-grupo="${grupoH.id}"
											disabled
											rows="3">
								</textarea>
							</g:each>
						</div>
					</div>
					</g:each>
				</div>
			</div>
		</div>
	</body>
</html>
