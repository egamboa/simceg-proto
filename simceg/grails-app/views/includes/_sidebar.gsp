<div class="navbar-default sidebar" role="navigation">
     <div class="sidebar-nav navbar-collapse collapse" id="sidebar-toggle">
         <ul class="nav" id="side-menu">
             <li class="${controllerName == 'dashboard' && actionName == "index" ? 'active':''}">
             	<g:link controller="dashboard" action="index"><i class="fa fa-dashboard fa-fw"></i>Principal</g:link>
             </li>
             <sec:ifAnyGranted  roles="ROLE_USER">
             <li class="${controllerName == 'estudiante' ? 'active':''}">
                 <a href="#"><i class="glyphicon glyphicon-user"></i> <span class="fa arrow"></span>Estudiantes</a>
                 <g:set var="encargado" bean="encargadoService"/>
                 <ul class="nav nav-second-level">
			        <li>
                        <g:each in="${encargado.hijos()}" var="hijo">
                            <g:link controller="estudiante" action="verEstudiante" id="${hijo.id}"><i class="fa fa-users"></i>${hijo.nombreCompleto()}</g:link>
                        </g:each>
                    </li>
                 </ul>
             </li>
             </sec:ifAnyGranted>
                 <li class="${controllerName == 'mensaje' ? 'active':''}">
                    <g:link controller="mensaje" action="index"><i class="fa fa-envelope"></i> Mensajes</g:link>
                </li>
                <li class="${controllerName == 'dashboard' && actionName == 'calendario' ? 'active':''}">
                    <g:link controller="dashboard" action="calendario"><i class="fa fa-calendar"></i> Calendario</g:link>
                </li>
                 <!-- /.nav-second-level -->
             
             <sec:ifAnyGranted  roles="ROLE_TEACHER">
             <li class="${controllerName == 'profesor' ? 'active':''}">
                 <a href="#"><i class="fa fa-university"></i> Grupos<span class="fa arrow"></span></a>
                 %{--Use BlogService--}%
                <g:set var="profesores" bean="profesorService"/>
                 <ul class="nav nav-second-level">
                    <li>
                        <g:each in="${profesores.gruposProfesor()}" var="grupo">
                            <g:link controller="profesor" action="verGrupo" id="${grupo.id}"><i class="fa fa-users"></i>${grupo.descripcion}</g:link>
                        </g:each>
                    </li>
                 </ul>
                 <!-- /.nav-second-level -->
             </li>
             </sec:ifAnyGranted >
             
             <sec:access expression="hasRole('ROLE_ADMIN')">
             <li class="${controllerName != 'dashboard' && controllerName != 'mensaje' ? 'active':''}">
                 <a href="#"><i class="fa fa-sitemap fa-fw"></i> Administración<span class="fa arrow"></span></a>
                 <ul class="nav nav-second-level">
                 	<li class="${controllerName == 'evento' ? 'active':''}">
                 		<g:link controller="evento" action="index">Eventos</g:link>
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