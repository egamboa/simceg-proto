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
             
             <sec:ifAnyGranted  roles="ROLE_TEACHER,ROLE_USER">
             <li>
                 <a href="#"><i class="fa fa-university"></i> Escuela<span class="fa arrow"></span></a>
                 <ul class="nav nav-second-level">
                 	 <li>
                 	 	<a href="#"><i class="fa fa-check-square"></i> Notas</a>
                 	 </li>
                 	 <sec:access expression="hasRole('ROLE_TEACHER')">
						 <li>
	                         <a href="#"><i class="fa fa-users"></i> Estudiantes</a>
	                     </li>
                     </sec:access>
                 </ul>
                 <!-- /.nav-second-level -->
             </li>
             </sec:ifAnyGranted >
             
             <sec:access expression="hasRole('ROLE_ADMIN')">
             <li class="active">
                 <a href="#"><i class="fa fa-sitemap fa-fw"></i> Administración<span class="fa arrow"></span></a>
                 <ul class="nav nav-second-level">
                 	<li class="${controllerName == 'dashboard' && actionName == 'eventos' ? 'active':''}">
                 		<g:link controller="dashboard" action="eventos">Eventos</g:link>
                 	</li>
			        <li class="${controllerName == 'dashboard' && actionName == 'empleados' ? 'active':''}">
			        	<g:link controller='empleado'>Empleados</g:link>
			        </li>
			        <li class="${controllerName == 'estudiante' ? 'active':''}">
			        	<g:link controller='estudiante'>Estudiantes</g:link>
			        </li>
			        <li class="${controllerName == 'user' ? 'active':''}">
			        	<g:link controller='user'>Usuarios</g:link>
			        </li>
			        <li class="${controllerName == 'grupo' ? 'active':''}">
			        	<g:link controller='grupo'>Grupos</g:link>
			        </li>
			        <li><a href="#">Materias</a></li>
			        <li><a href="#">Niveles</a></li>
			        <li><a href="#">Periodo Lectivo</a></li>
                 </ul>
                 <!-- /.nav-second-level -->
             </li>
             </sec:access>
         </ul>
     </div>
     <!-- /.sidebar-collapse -->
 </div>