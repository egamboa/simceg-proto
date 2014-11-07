<div class="navbar-default sidebar" role="navigation">
     <div class="sidebar-nav navbar-collapse" id="sidebar-toggle">
         <ul class="nav" id="side-menu">
             <li>
             	<g:link controller="dashboard" action="index"><i class="fa fa-dashboard fa-fw"></i>Principal</g:link>
             </li>
             <li>
             	<g:link controller="dashboard" action="nuevoMensaje"><i class="fa fa-envelope"></i> Nuevo Mensaje</g:link>
             </li>
             <li>
                 <a href="#"><i class="glyphicon glyphicon-user"></i> <span class="fa arrow"></span>Personal</a>
                 <ul class="nav nav-second-level">
			        <li>
                        <g:link controller="dashboard" action="mensajes"><i class="fa fa-envelope"></i> Mensajes</g:link>
                    </li>
			        <li>
			        	<g:link controller="dashboard" action="calendario"><i class="fa fa-calendar"></i> Calendario</g:link>
			        </li>
                 </ul>
                 <!-- /.nav-second-level -->
             </li>
             
             <sec:ifAnyGranted  roles="ROLE_TEACHER,ROLE_USER">
             <li>
                 <a href="#"><i class="fa fa-university"></i> Escuela<span class="fa arrow"></span></a>
                 <ul class="nav nav-second-level">
                 	<sec:access expression="hasRole('ROLE_USER')">
                 	 <li>
                        
                 	 </li>
                 	 </sec:access>
                 	 <sec:access expression="hasRole('ROLE_TEACHER')">
						 <li>
						 	<g:link controller="dashboard" action="estudiantes"><i class="fa fa-users"></i> Estudiantes</g:link>
	                     </li>
                         <li>
                            <g:link controller="dashboard" action="calificar"><i class="fa fa-check-square"></i> Calificar Estudiante</g:link>
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
			        <li class="${controllerName == 'profesor' ? 'active':''}">
			        	<g:link controller='profesor'>Profesores</g:link>
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
			        <li class="${controllerName == 'materia' ? 'active':''}">
			        	<g:link controller='materia'>Materias</g:link>
			        </li>
			        <li class="${controllerName == 'nivel' ? 'active':''}">
			        	<g:link controller='nivel'>Niveles</g:link>
			        </li>
			        <li class="${controllerName == 'periodoLectivo' ? 'active':''}">
			        	<g:link controller='periodoLectivo'>Periodos Lectivos</g:link>
			        </li>
                 </ul>
                 <!-- /.nav-second-level -->
             </li>
             </sec:access>
         </ul>
     </div>
     <!-- /.sidebar-collapse -->
 </div>