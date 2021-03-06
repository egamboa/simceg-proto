
<%@ page import="org.una.simceg.Estudiante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
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
		<div class="nav nav-inner" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li><g:link class="list" action="verGrupo" id="${params.grupo}">Grupo</g:link></li>
			</ul>
		</div>
		<div id="show-estudiante" class="content scaffold-show text-left" role="main">
			<g:if test="${flash.message}">
				<div class="message alert alert-info" role="status">${flash.message}</div>
			</g:if>
			<div class="row">
				<br>
			  <div class="col-md-3 col-lg-3 " align="center"> 
			  	<g:img uri="/simceg/assets/Icon-user.png" width="100" height="100"/> 
			  	<h1 class="main-title text-center">${estudianteInstance}</h1>
			  	<hr>
			  	<div class="row">
			  		<div class="col-lg-12 text-left">
			  			<h4>Contacto</h4>
			  			<ul>
			  				<li>Encargado: ${estudianteInstance?.encargado}</li>
			  				<li>
			  					Correo: <a href="mailto:${estudianteInstance?.encargado?.email}">${estudianteInstance?.encargado?.email}</a>
			  				</li>
			  				<li>
			  					Teléfono: ${estudianteInstance?.encargado?.telefono}
			  				</li>
			  				<li>
			  					<g:link controller="mensaje" action="create" params="[receptor: "${estudianteInstance?.encargado?.id}"]">
						    		Enviar Mensaje
						    	</g:link>
			  				</li>
			  			</ul>
			  		</div>
			  	</div>
			  </div>
			  <div class=" col-md-9 col-lg-9 "> 
			    <table class="table table-user-information">
			      <tbody>
			
			        <g:if test="${estudianteInstance?.activo}">
			          <tr class="fieldcontain">
			            <td>
			              <span id="activo-label" class="property-label"><g:message code="estudiante.activo.label" default="Activo" /></span>
			            </td>
			            <td>
			              <span class="property-value" aria-labelledby="activo-label">
			              	${estudianteInstance?.activo? "Si" : "No" }
			              </span>
			            </td>
			          </tr>
			        </g:if>

			        <g:if test="${estudianteInstance?.nombre}">
			          <tr class="fieldcontain">
			            <td>
			              <span id="nombre-label" class="property-label"><g:message code="estudiante.nombre.label" default="Nombre" /></span>
			            </td>
			            <td>
			              <span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${estudianteInstance}" field="nombre"/></span>
			            </td>
			          </tr>
			        </g:if>
			      
			        <g:if test="${estudianteInstance?.primerApellido}">
			          <tr class="fieldcontain">
			            <td>
			              <span id="primerApellido-label" class="property-label"><g:message code="estudiante.primerApellido.label" default="Primer Apellido" /></span>
			            </td>
			            <td>
			              <span class="property-value" aria-labelledby="primerApellido-label"><g:fieldValue bean="${estudianteInstance}" field="primerApellido"/></span>
			            </td>            
			          </tr>
			        </g:if>
			      
			        <g:if test="${estudianteInstance?.segundoApellido}">
			          <tr class="fieldcontain">
			            <td>
			              <span id="segundoApellido-label" class="property-label"><g:message code="estudiante.segundoApellido.label" default="Segundo Apellido" /></span>
			            </td>
			            <td>
			              <span class="property-value" aria-labelledby="segundoApellido-label"><g:fieldValue bean="${estudianteInstance}" field="segundoApellido"/></span>
			            </td>
			          </tr>
			        </g:if>			        
			
			        <g:if test="${estudianteInstance?.adecuacion}">
			          <tr class="fieldcontain">
			            <td>
			              <span id="adecuacion-label" class="property-label"><g:message code="estudiante.adecuacion.label" default="Adecuacion" /></span>
			            </td>
			            <td>
			              <span class="property-value" aria-labelledby="adecuacion-label"><g:formatBoolean boolean="${estudianteInstance?.adecuacion}" /></span>
			            </td>
			          </tr>
			        </g:if>
			      
			        <g:if test="${estudianteInstance?.direccion}">
			          <tr class="fieldcontain">
			            <td>
			              <span id="direccion-label" class="property-label"><g:message code="estudiante.direccion.label" default="Dirección" /></span>
			            </td>
			            <td>
			              <span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${estudianteInstance}" field="direccion"/></span>
			            </td>
			          </tr>
			        </g:if>
			      
			        <g:if test="${estudianteInstance?.encargado}">
			          <tr class="fieldcontain">
			            <td>
			              <span id="encargado-label" class="property-label"><g:message code="estudiante.encargado.label" default="Encargado" /></span>
			            </td>
			            <td>
			               <span class="property-value" aria-labelledby="encargado-label">${estudianteInstance?.encargado?.nombreCompleto()}</span>
			            </td>
			          </tr>
			        </g:if>
			      
			        <g:if test="${estudianteInstance?.fechaIngreso}">
			          <tr class="fieldcontain">
			            <td>
			              <span id="fechaIngreso-label" class="property-label"><g:message code="estudiante.fechaIngreso.label" default="Fecha Ingreso" /></span>
			            </td>
			            <td>
			              <span class="property-value" aria-labelledby="fechaIngreso-label"><g:formatDate date="${estudianteInstance?.fechaIngreso}" format="dd-MM-yy" /></span>
			            </td>
			          </tr>
			        </g:if>
			      
			        <g:if test="${estudianteInstance?.fechaNacimiento}">
			          <tr class="fieldcontain">
			            <td>
			              <span id="fechaNacimiento-label" class="property-label"><g:message code="estudiante.fechaNacimiento.label" default="Fecha Nacimiento" /></span>
			            </td>
			            <td>
			              <span class="property-value" aria-labelledby="fechaNacimiento-label"><g:formatDate format="dd-MM-yy" date="${estudianteInstance?.fechaNacimiento}" /></span>
			            </td>
			          </tr>
			        </g:if>
			      
			        <g:if test="${estudianteInstance?.nacionalidad}">
			          <tr class="fieldcontain">
			            <td>
			              <span id="nacionalidad-label" class="property-label"><g:message code="estudiante.nacionalidad.label" default="Nacionalidad" /></span>
			            </td>
			            <td>
			              <span class="property-value" aria-labelledby="nacionalidad-label"><g:fieldValue bean="${estudianteInstance}" field="nacionalidad"/></span>
			            </td>
			          </tr>
			        </g:if>
			      
			        <g:if test="${estudianteInstance?.tipoSangre}">
			          <tr class="fieldcontain">
			            <td>
			              <span id="tipoSangre-label" class="property-label"><g:message code="estudiante.tipoSangre.label" default="Tipo Sangre" /></span>
			            </td>
			            <td>
			              <span class="property-value" aria-labelledby="tipoSangre-label"><g:fieldValue bean="${estudianteInstance}" field="tipoSangre"/></span>
			            </td>            
			          </tr>
			        </g:if>
			      
			        <g:if test="${estudianteInstance?.viveEncargado}">
			          <tr class="fieldcontain">
			            <td>
			              <span id="viveEncargado-label" class="property-label"><g:message code="estudiante.viveEncargado.label" default="Vive Encargado" /></span>
			            </td>
			            <td>
			              <span class="property-value" aria-labelledby="viveEncargado-label">
			              	${estudianteInstance?.viveEncargado? "Si" : "No" }
			              </span>
			            </td>
			          </tr>
			        </g:if>
			      </tbody>
			    </table>
			  </div>
			</div>
			<div id="historial" class="row">
				<div class="col-lg-12">
					<h1 class="main-title">Historial</h1>
					<g:each in="${grupos}" var="grupoH">
					<div class="row well">
						<div class="col-lg-12">
							<h2 class="second-title">Periodo Lectivo: ${grupoH?.periodo?.anio}, Nivel: ${grupoH?.nivel}, Grupo: ${grupoH?.descripcion} </h2>
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
