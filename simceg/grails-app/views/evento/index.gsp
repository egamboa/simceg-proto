
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
				<div class="message alert alert-info" role="status">${flash.message}</div>
			</g:if>
			<div class="row">
				<div class="col-md-12 notas">
					<script>
						var eventData = "${eventos}";
					</script>
					<div id='calendar'>	
						
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
