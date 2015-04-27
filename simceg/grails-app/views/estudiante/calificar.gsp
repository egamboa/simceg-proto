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
		<div id="create-estudiante" class="content scaffold-create row" role="main">
			<div class="col-lg-12">
				<h1 class="main-title text-left">Calificando a ${estudianteInstance}</h1>
				
				<div class="alert hidden alert-info col-lg-offset-3 col-lg-6">
					hola :3
				</div>
				<ul>
					<li>Nivel: ${grupo.nivel}</li>
					<li>Grupo: ${grupo}</li>
					<li>Ciclos: ${grupo.nivel.ciclos}</li>
					<li>Periodo: ${grupo.periodo}</li>
					<li>Materias: ${materias}</li>
				</ul>
			</div>
		</div>
	</body>
</html>