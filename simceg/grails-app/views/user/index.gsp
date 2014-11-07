
<%@ page import="org.una.simceg.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="nav" role="navigation">
			<ul class="nav nav-pills" role="tablist">
				<li> <g:link controller="dashboard">Principal</g:link> </li>
				<li><g:link class="create" action="create">Nuevo Usuario</g:link></li>
			</ul>
		</div>
		<div id="list-user" class="content scaffold-list" role="main">
			<g:if test="${flash.message}">
				<div class="message alert alert-info" role="status">${flash.message}</div>
			</g:if>
			
			<div class="panel panel-default">
                        <div class="panel-heading">
                            Usuarios
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                        <tr class="text-center">
                                        	<g:sortableColumn property="username" title="Usuario" />
                                            <g:sortableColumn property="cedula" title="Cedula" />
                                            <g:sortableColumn property="accountLocked" title="Bloqueado" />
                                            <g:sortableColumn property="email" title="email" />
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <g:each in="${userInstanceList}" status="i" var="userInstance">
											<tr class="text-left ${(i % 2) == 0 ? 'even' : 'odd'}">
												
												<td><g:link action="show" id="${userInstance.id}"><i class="glyphicon glyphicon-user"></i> ${fieldValue(bean: userInstance, field: "username")}</g:link></td>
												
												<td>${fieldValue(bean: userInstance, field: "cedula")}</td>
												
												<td><g:formatBoolean boolean="${userInstance.accountLocked}" /></td>
												
												<td>${fieldValue(bean: userInstance, field: "email")}</td>
												
											</tr>
										</g:each>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
		
			<div class="pagination">
				<g:paginate total="${userInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
