<%@ page import="org.una.simceg.Grupo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">	
		<title>Mis Estudiantes</title>
	</head>
	<body>
		<div class="col-md-1"></div>
<div class="mensajes col-md-10">

	<div class="row">
		<h2 style="font-size:20px">Mis Estudiantes</h2>
	</div>
	<div id="list-estudiante" class="content scaffold-list" role="main">
			<div class="panel panel-default">
                   <div class="panel-heading">
                   		<g:select 
                   			class="pull-right"
                   			name="grupos"
				          from="${Grupo.list()}"
				          value="id"
				          optionKey="id"
				          optionValue="${{it.descripcion}}" />
                       Mis Estudiantes
                   </div>
                   <!-- /.panel-heading -->
                   <div class="panel-body">
                       <div class="table-responsive">
                           <table class="table table-striped">
                               <thead>
                                   <tr class="text-center">
                                       <th class="sortable"><a href="/simceg/estudiante/index?sort=nombre&amp;max=10&amp;order=asc">Nombre</a></th>
                                       <th class="sortable"><a href="/simceg/estudiante/index?sort=primerApellido&amp;max=10&amp;order=asc">1er Apellido</a></th>
                                       <th class="sortable"><a href="/simceg/estudiante/index?sort=segundoApellido&amp;max=10&amp;order=asc">2do Apellido</a></th>
                                       <th class="sortable"><a href="/simceg/estudiante/index?sort=activo&amp;max=10&amp;order=asc">Activo</a></th>
                                       <th class="sortable"><a href="/simceg/estudiante/index?sort=fechaNacimiento&amp;max=10&amp;order=asc">Fecha Nacimiento</a></th>
                                   </tr>
                               </thead>
                               <tbody>
                                   
										<tr class="text-left even">
											<td><a href="/simceg/estudiante/show/1">Pablo</a></td>
											
											<td>Yada</td>
											
											<td>Perez</td>
				
											<td>True</td>
											
											<td>2005-01-01 00:00:00.0</td>
										</tr>
									
										<tr class="text-left odd">
											<td><a href="/simceg/estudiante/show/2">Cesar</a></td>
											
											<td>Yada</td>
											
											<td>Perez</td>
				
											<td>True</td>
											
											<td>2005-01-01 00:00:00.0</td>
										</tr>
									
                               </tbody>
                           </table>
                       </div>
                       <!-- /.table-responsive -->
                   </div>
                   <!-- /.panel-body -->
            </div>
			<div class="pagination">
				
			</div>
		</div>
	</body>
</html>
