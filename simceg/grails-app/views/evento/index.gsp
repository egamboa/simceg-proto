
<%@ page import="org.una.simceg.Evento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'evento.label', default: 'Evento')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav nav-inner" role="navigation">
			<ul class="nav nav-pills">
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-evento" class="content scaffold-list" role="main">
			<h1 class="main-title text-left">Calendario</h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			${eventos}
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descripcion" title="${message(code: 'evento.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="locacion" title="${message(code: 'evento.locacion.label', default: 'Locacion')}" />
					
						<g:sortableColumn property="tiempoFinal" title="${message(code: 'evento.tiempoFinal.label', default: 'Tiempo Final')}" />
					
						<g:sortableColumn property="tiempoInicio" title="${message(code: 'evento.tiempoInicio.label', default: 'Tiempo Inicio')}" />
					
						<g:sortableColumn property="titulo" title="${message(code: 'evento.titulo.label', default: 'Titulo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${eventoInstanceList}" status="i" var="eventoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${eventoInstance.id}">${fieldValue(bean: eventoInstance, field: "descripcion")}</g:link></td>
					
						<td>${fieldValue(bean: eventoInstance, field: "locacion")}</td>
					
						<td><g:formatDate date="${eventoInstance.tiempoFinal}" /></td>
					
						<td><g:formatDate date="${eventoInstance.tiempoInicio}" /></td>
					
						<td>${fieldValue(bean: eventoInstance, field: "titulo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${eventoInstanceCount ?: 0}" />
			</div>
		</div>


		<div class="row">
			<div class="col-md-4">
				<g:link controller="evento" action="create">
					<span class="glyphicon glyphicon-plus"></span> Crear Evento
				</g:link>
			</div>
			<hr/>
		</div>
		<div class="row">
			<div class="col-md-12 notas">
				<script>
				
					$(document).ready(function() {
						
						$('#calendar').fullCalendar({
							header: {
								left: 'prev,next today',
								center: 'title',
								right: 'month,agendaWeek,agendaDay'
							},
							defaultDate: '2014-09-12',
							lang: 'es',
							buttonIcons: true, // show the prev/next text
							editable: true,
							eventLimit: true, // allow "more" link when too many events
							events: [
								{
									title: 'Feria Científica',
									start: '2014-09-01'
								},
								{
									title: 'Entrega de Notas',
									start: '2014-09-07',
									end: '2014-09-10'
								},
								{
									id: 999,
									title: 'Acto Civico',
									start: '2014-09-09T16:00:00'
								},
								{
									id: 999,
									title: 'Evento Repetido',
									start: '2014-09-16T16:00:00'
								},
								{
									title: 'Reunion General',
									start: '2014-09-11',
									end: '2014-09-13'
								},
								{
									title: 'Acto Civico',
									start: '2014-09-12T10:30:00',
									end: '2014-09-12T12:30:00'
								},
								{
									title: 'Almuerzo',
									start: '2014-09-12T12:00:00'
								},
								{
									title: 'Fiesta de Bienvenida',
									start: '2014-09-12T14:30:00'
								},
								{
									title: 'Evento Vario',
									start: '2014-09-12T17:30:00'
								},
								{
									title: 'Cena',
									start: '2014-09-12T20:00:00'
								},
								{
									title: 'Bingo',
									start: '2014-09-13T07:00:00'
								},
								{
									title: 'Practicas',
									url: 'http://google.com/',
									start: '2014-09-28'
								}
							]
						});
						
					});
				
				</script>
				<div id='calendar'></div>
			</div>
		</div>


	</body>
</html>
