<!DOCTYPE html>
<html>
	<head>
		<title>Eventos</title>
		<meta name="layout" content="dashboard">
	</head>
	<body>
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-left">Calendario</h1>
				<hr>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<a href="#"><span class="glyphicon glyphicon-plus"></span></span> Crear Evento</a>
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
				<style>
					#calendar {
						max-width: 900px;
						margin: 0 auto;
					}
				
				</style>
				<div id='calendar'></div>
			</div>
		</div>
	</body>
</html>