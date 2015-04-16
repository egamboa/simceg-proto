<%@ page import="org.una.simceg.Estudiante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'estudiante.label', default: 'Estudiante')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav nav-inner" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li><g:link class="create" action="create">Nuevo Estudiante</g:link></li>
			</ul>
		</div>
		<div id="list-estudiante" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
            <div class="text-left">
            	<h1 class="main-title">Estudiantes</h1>
            	<div class="row">
            	<g:each in="${estudianteInstanceList}" status="i" var="estudianteInstance">
	            	<div class="objeto-listado estudiante col-md-4 col-sm-6 ${(i % 2) == 0 ? 'odd' : 'even'}">
		                <div class="panel panel-default">
		                    <div class="panel-heading text-center">
		                        <img alt="User Pic" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=100" class="img-circle">
		                        <div>
		                        	<g:link action="show" id="${estudianteInstance.id}">${estudianteInstance}</g:link>
		                        </div>
		                    </div>
		                    <div class="panel-body">
		                        <ul>
		                        	<li>Cédula: ${estudianteInstance?.cedula}</li>
		                        	<li>
		                        		Estado: 
		                        			${!estudianteInstance?.activo ? 'Inactivo' : 'Activo'}
		                        	</li>
		                        	<li>	
		                        		Edad: ${estudianteInstance?.getAge()}
		                        	</li>
		                        	<li>Fecha de Nacimiento: 
		                        		<g:formatDate date="${estudianteInstance.fechaNacimiento}" format="dd - MM - yyyy"/>
		                        	</li>
		                        	<li class="text-right">
		                        		<g:link class="btn btn-default" action="editar" id="${estudianteInstance.id}">Editar</g:link>
		                        	</li>
		                        </ul>
		                    </div>
		                </div>
		            </div>
		        </g:each>
		        </div>
            </div>
			<div class="pagination">
				<g:paginate total="${estudianteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
