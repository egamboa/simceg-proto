
<%@ page import="org.una.simceg.Estudiante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'estudiante.label', default: 'Estudiante')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-estudiante" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-estudiante" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list estudiante">
			
				<g:if test="${estudianteInstance?.activo}">
				<li class="fieldcontain">
					<span id="activo-label" class="property-label"><g:message code="estudiante.activo.label" default="Activo" /></span>
					
						<span class="property-value" aria-labelledby="activo-label"><g:formatBoolean boolean="${estudianteInstance?.activo}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.adecuacion}">
				<li class="fieldcontain">
					<span id="adecuacion-label" class="property-label"><g:message code="estudiante.adecuacion.label" default="Adecuacion" /></span>
					
						<span class="property-value" aria-labelledby="adecuacion-label"><g:formatBoolean boolean="${estudianteInstance?.adecuacion}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.alergias}">
				<li class="fieldcontain">
					<span id="alergias-label" class="property-label"><g:message code="estudiante.alergias.label" default="Alergias" /></span>
					
						<span class="property-value" aria-labelledby="alergias-label"><g:formatBoolean boolean="${estudianteInstance?.alergias}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.alimentacion}">
				<li class="fieldcontain">
					<span id="alimentacion-label" class="property-label"><g:message code="estudiante.alimentacion.label" default="Alimentacion" /></span>
					
						<span class="property-value" aria-labelledby="alimentacion-label"><g:fieldValue bean="${estudianteInstance}" field="alimentacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.avatar}">
				<li class="fieldcontain">
					<span id="avatar-label" class="property-label"><g:message code="estudiante.avatar.label" default="Avatar" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.avatarType}">
				<li class="fieldcontain">
					<span id="avatarType-label" class="property-label"><g:message code="estudiante.avatarType.label" default="Avatar Type" /></span>
					
						<span class="property-value" aria-labelledby="avatarType-label"><g:fieldValue bean="${estudianteInstance}" field="avatarType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.descAlergias}">
				<li class="fieldcontain">
					<span id="descAlergias-label" class="property-label"><g:message code="estudiante.descAlergias.label" default="Desc Alergias" /></span>
					
						<span class="property-value" aria-labelledby="descAlergias-label"><g:fieldValue bean="${estudianteInstance}" field="descAlergias"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.direccion}">
				<li class="fieldcontain">
					<span id="direccion-label" class="property-label"><g:message code="estudiante.direccion.label" default="Direccion" /></span>
					
						<span class="property-value" aria-labelledby="direccion-label"><g:fieldValue bean="${estudianteInstance}" field="direccion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="estudiante.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${estudianteInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.encargado}">
				<li class="fieldcontain">
					<span id="encargado-label" class="property-label"><g:message code="estudiante.encargado.label" default="Encargado" /></span>
					
						<span class="property-value" aria-labelledby="encargado-label"><g:link controller="encargado" action="show" id="${estudianteInstance?.encargado?.id}">${estudianteInstance?.encargado?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.fechaIngreso}">
				<li class="fieldcontain">
					<span id="fechaIngreso-label" class="property-label"><g:message code="estudiante.fechaIngreso.label" default="Fecha Ingreso" /></span>
					
						<span class="property-value" aria-labelledby="fechaIngreso-label"><g:formatDate date="${estudianteInstance?.fechaIngreso}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.fechaNacimiento}">
				<li class="fieldcontain">
					<span id="fechaNacimiento-label" class="property-label"><g:message code="estudiante.fechaNacimiento.label" default="Fecha Nacimiento" /></span>
					
						<span class="property-value" aria-labelledby="fechaNacimiento-label"><g:formatDate date="${estudianteInstance?.fechaNacimiento}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.fechaSalida}">
				<li class="fieldcontain">
					<span id="fechaSalida-label" class="property-label"><g:message code="estudiante.fechaSalida.label" default="Fecha Salida" /></span>
					
						<span class="property-value" aria-labelledby="fechaSalida-label"><g:formatDate date="${estudianteInstance?.fechaSalida}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.habilidades}">
				<li class="fieldcontain">
					<span id="habilidades-label" class="property-label"><g:message code="estudiante.habilidades.label" default="Habilidades" /></span>
					
						<span class="property-value" aria-labelledby="habilidades-label"><g:fieldValue bean="${estudianteInstance}" field="habilidades"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.haceTareas}">
				<li class="fieldcontain">
					<span id="haceTareas-label" class="property-label"><g:message code="estudiante.haceTareas.label" default="Hace Tareas" /></span>
					
						<span class="property-value" aria-labelledby="haceTareas-label"><g:formatBoolean boolean="${estudianteInstance?.haceTareas}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.horasDormir}">
				<li class="fieldcontain">
					<span id="horasDormir-label" class="property-label"><g:message code="estudiante.horasDormir.label" default="Horas Dormir" /></span>
					
						<span class="property-value" aria-labelledby="horasDormir-label"><g:fieldValue bean="${estudianteInstance}" field="horasDormir"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.horasTv}">
				<li class="fieldcontain">
					<span id="horasTv-label" class="property-label"><g:message code="estudiante.horasTv.label" default="Horas Tv" /></span>
					
						<span class="property-value" aria-labelledby="horasTv-label"><g:fieldValue bean="${estudianteInstance}" field="horasTv"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.lentes}">
				<li class="fieldcontain">
					<span id="lentes-label" class="property-label"><g:message code="estudiante.lentes.label" default="Lentes" /></span>
					
						<span class="property-value" aria-labelledby="lentes-label"><g:formatBoolean boolean="${estudianteInstance?.lentes}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.medicamentos}">
				<li class="fieldcontain">
					<span id="medicamentos-label" class="property-label"><g:message code="estudiante.medicamentos.label" default="Medicamentos" /></span>
					
						<span class="property-value" aria-labelledby="medicamentos-label"><g:formatBoolean boolean="${estudianteInstance?.medicamentos}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.nacionalidad}">
				<li class="fieldcontain">
					<span id="nacionalidad-label" class="property-label"><g:message code="estudiante.nacionalidad.label" default="Nacionalidad" /></span>
					
						<span class="property-value" aria-labelledby="nacionalidad-label"><g:fieldValue bean="${estudianteInstance}" field="nacionalidad"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.nombre}">
				<li class="fieldcontain">
					<span id="nombre-label" class="property-label"><g:message code="estudiante.nombre.label" default="Nombre" /></span>
					
						<span class="property-value" aria-labelledby="nombre-label"><g:fieldValue bean="${estudianteInstance}" field="nombre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.ortopedicos}">
				<li class="fieldcontain">
					<span id="ortopedicos-label" class="property-label"><g:message code="estudiante.ortopedicos.label" default="Ortopedicos" /></span>
					
						<span class="property-value" aria-labelledby="ortopedicos-label"><g:formatBoolean boolean="${estudianteInstance?.ortopedicos}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.problemasLenguaje}">
				<li class="fieldcontain">
					<span id="problemasLenguaje-label" class="property-label"><g:message code="estudiante.problemasLenguaje.label" default="Problemas Lenguaje" /></span>
					
						<span class="property-value" aria-labelledby="problemasLenguaje-label"><g:formatBoolean boolean="${estudianteInstance?.problemasLenguaje}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.religion}">
				<li class="fieldcontain">
					<span id="religion-label" class="property-label"><g:message code="estudiante.religion.label" default="Religion" /></span>
					
						<span class="property-value" aria-labelledby="religion-label"><g:fieldValue bean="${estudianteInstance}" field="religion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.supervisionTv}">
				<li class="fieldcontain">
					<span id="supervisionTv-label" class="property-label"><g:message code="estudiante.supervisionTv.label" default="Supervision Tv" /></span>
					
						<span class="property-value" aria-labelledby="supervisionTv-label"><g:formatBoolean boolean="${estudianteInstance?.supervisionTv}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.talla}">
				<li class="fieldcontain">
					<span id="talla-label" class="property-label"><g:message code="estudiante.talla.label" default="Talla" /></span>
					
						<span class="property-value" aria-labelledby="talla-label"><g:formatBoolean boolean="${estudianteInstance?.talla}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.telefono}">
				<li class="fieldcontain">
					<span id="telefono-label" class="property-label"><g:message code="estudiante.telefono.label" default="Telefono" /></span>
					
						<span class="property-value" aria-labelledby="telefono-label"><g:fieldValue bean="${estudianteInstance}" field="telefono"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.television}">
				<li class="fieldcontain">
					<span id="television-label" class="property-label"><g:message code="estudiante.television.label" default="Television" /></span>
					
						<span class="property-value" aria-labelledby="television-label"><g:formatBoolean boolean="${estudianteInstance?.television}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.tipoAdecuacion}">
				<li class="fieldcontain">
					<span id="tipoAdecuacion-label" class="property-label"><g:message code="estudiante.tipoAdecuacion.label" default="Tipo Adecuacion" /></span>
					
						<span class="property-value" aria-labelledby="tipoAdecuacion-label"><g:fieldValue bean="${estudianteInstance}" field="tipoAdecuacion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${estudianteInstance?.tipoSangre}">
				<li class="fieldcontain">
					<span id="tipoSangre-label" class="property-label"><g:message code="estudiante.tipoSangre.label" default="Tipo Sangre" /></span>
					
						<span class="property-value" aria-labelledby="tipoSangre-label"><g:fieldValue bean="${estudianteInstance}" field="tipoSangre"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:estudianteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${estudianteInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
