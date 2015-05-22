
<%@ page import="org.una.simceg.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav nav-inner" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li><g:link class="create" action="create">Nuevo Usuario</g:link></li>
			</ul>
		</div>
		<div id="list-user" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message alert alert-info" role="status">${flash.message}</div>
			</g:if>
            <div class="text-left">
            	<h1 class="main-title">Usuarios</h1>
            	<div class="row">
            	<g:each in="${userInstanceList}" status="i" var="userInstance">
	            	<div class="objeto-listado usuario col-md-4 col-sm-6 ${(i % 2) == 0 ? 'odd' : 'even'}">
		                <div class="panel panel-default">
		                    <div class="panel-heading text-center">
		                        <g:img uri="/simceg/assets/Icon-user.png" width="100" height="100"/>
		                        <div>
		                        	<g:link action="show" id="${userInstance.id}">
		                        		${fieldValue(bean: userInstance, field: "username")}
		                        	</g:link>
		                        	
		                        </div>
		                    </div>
		                    <div class="panel-body">
		                        <ul>
		                        	<li>Cédula: ${userInstance?.cedula}</li>
		                        	<li>Email: ${userInstance?.email}</li>
		                        	<li>
		                        		Rol:
		                        		<%
											def role = org.una.simceg.UserRole.findByUser(userInstance)
										%>
										${role?.role?.toString()}
		                        	</li>
		                        	<li>
		                        		Estado: 
		                        			${userInstance?.accountLocked ? 'Inactivo' : 'Activo'}
		                        	</li>
		                        	<li class="text-right">
		                        		<g:link class="btn btn-default" action="edit" id="${userInstance.id}">Editar</g:link>
		                        	</li>
		                        </ul>
		                    </div>
		                </div>
		            </div>
		        </g:each>
		        </div>
            </div>
			<div class="pagination">
				<g:paginate total="${userInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
