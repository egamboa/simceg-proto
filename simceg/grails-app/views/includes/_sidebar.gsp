<div class="navbar-default sidebar" role="navigation">
     <div class="sidebar-nav navbar-collapse" id="sidebar-toggle">
         <ul class="nav" id="side-menu">
             <li>
             	<g:link controller="dashboard" action="index"><i class="fa fa-dashboard fa-fw"></i>Principal</g:link>
             </li>
             <li>
             	<g:link><i class="glyphicon glyphicon-comment"></i> Nuevo Mensaje</g:link>
             </li>
             <li>
                 <a href="#"><i class="glyphicon glyphicon-user"></i> <span class="fa arrow"></span>Personal</a>
                 <ul class="nav nav-second-level">
			        <li><a href="#"><i class="fa fa-comments-o"></i> Mensajes</a></li>
			        <li><a href="#"><i class="fa fa-calendar"></i> Calendario</a></li>
			        <li><a href="#"><i class="fa fa-archive"></i> Archivos</a></li>
                 </ul>
                 <!-- /.nav-second-level -->
             </li>
             <li>
                 <a href="#"><i class="fa fa-university"></i> Escuela<span class="fa arrow"></span></a>
                 <ul class="nav nav-second-level">
                 	 <li>
                 	 	<a href="#"><i class="fa fa-check-square"></i> Notas</a>
                 	 </li>
                 	 <li>
                 	 	<a href="#"><i class="fa fa-tasks"></i> Tareas</a>
                 	 </li>
                 	 <sec:access expression="hasRole('ROLE_TEACHER')">
						 <li>
	                         <a href="#"><i class="fa fa-users"></i> Estudiantes</a>
	                     </li>
	                     <li>
	                     	<a href="#"><i class="fa fa-bars"></i> Grupos</a>
	                     </li>
                     </sec:access>
                 </ul>
                 <!-- /.nav-second-level -->
             </li>
             <sec:access expression="hasRole('ROLE_ADMIN')">
             <li>
                 <a href="#"><i class="fa fa-sitemap fa-fw"></i> Administración<span class="fa arrow"></span></a>
                 <ul class="nav nav-second-level">
                 	<li><a href="#">Eventos</a></li>
			        <li><a href="#">Roles</a></li>
			        <li>
			        	<g:link controller='encargado'>Encargados</g:link>
			        </li>
			        <li>
			        	<g:link controller='empleado'>Empleados</g:link>
			        </li>
			        <li>
			        	<g:link controller='estudiante'>Estudiante</g:link>
			        </li>
			        <li>
			        	<g:link controller='usuario'>Usuarios</g:link>
			        </li>
			        <li><a href="#">Grupos</a></li>
			        <li><a href="#">Materias</a></li>
			        <li><a href="#">Periodo Lectivo</a></li>
			        <li><a href="#">Evaluación</a></li>
			        <li><a href="#">Configuración</a></li>
                 </ul>
                 <!-- /.nav-second-level -->
             </li>
             </sec:access>
         </ul>
     </div>
     <!-- /.sidebar-collapse -->
 </div>