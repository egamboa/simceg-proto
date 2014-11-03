<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <g:if test="${controllerName == "dashboard"? true : false}">
            	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#sidebar-toggle">
                	<span class="sr-only">Toggle Dashboard</span>
                	<span class="glyphicon glyphicon-cog" style="color:white;"></span>
            	</button>
            </g:if>
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="glyphicon glyphicon-home" style="color:white;"></span>
            </button>
            <g:link controller="home" action="index" class="navbar-brand" >SIMCEG Prototipo</g:link>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li>
                	<g:link controller="home" action="about">Acerca de</g:link>
                </li>
                <li>
                    <g:link controller="home" action="services">Servicios</g:link>
                </li>
                <li>
                    <g:link controller="home" action="contact">Contacto</g:link>
                </li>
                <!-- 
                <li class="dropdown">
			      <a href="#" class="dropdown-toggle" data-toggle="dropdown">Padres<span class="caret"></span></a>
			      <ul class="dropdown-menu">
			        <li><a href="#">Perfil</a></li>
			        <li><a href="#">Mensajes</a></li>
			        <li><a href="#">Notas</a></li>
			        <li><a href="#">Calendario</a></li>
			        <li><a href="#">Archivos</a></li>
			      </ul>
			    </li>
			    <li class="dropdown">
			      <a href="#" class="dropdown-toggle" data-toggle="dropdown">Profesores<span class="caret"></span></a>
			      <ul class="dropdown-menu">
			        <li class="dropdown-header">Personal</li>
			        <li><a href="#">Perfil</a></li>
			        <li><a href="#">Mensajes</a></li>
			        <li><a href="#">Calendario</a></li>
			        <li><a href="#">Archivos</a></li>
			        <li class="divider"></li>
			        <li class="dropdown-header">Escuela</li>
			        <li><a href="#">Mis Estudiantes</a></li>
			      </ul>
			    </li>
			    <li class="dropdown">
			      <a href="#" class="dropdown-toggle" data-toggle="dropdown">Administración<span class="caret"></span></a>
			      <ul class="dropdown-menu">
			        <li class="dropdown-header">Personal</li>
			        <li><a href="#">Perfil</a></li>
			        <li><a href="#">Mensajes</a></li>
			        <li><a href="#">Calendario</a></li>
			        <li><a href="#">Archivos</a></li>
			        <li class="divider"></li>
			        <li class="dropdown-header">Escuela</li>
			        <li><a href="#">Estudiantes</a></li>
			        <li><a href="#">Encargados</a></li>
			        <li><a href="#">Profesores</a></li>
			        <li><a href="#">Eventos</a></li>
			        <li class="divider"></li>
			        <li class="dropdown-header">Configuración</li>
			        <li><a href="#">Propiedades</a></li>
			        <li><a href="#">Roles</a></li>
			        <li><a href="#">Usuarios</a></li>
			        <li><a href="#">Grupos</a></li>
			        <li><a href="#">Materias</a></li>
			        <li><a href="#">Periodo Lectivo</a></li>
			      </ul>
			    </li>
			    -->
			    <li>					
					<sec:ifNotLoggedIn>
						<g:link controller="home" action="newUser">Registrar</g:link>
					</sec:ifNotLoggedIn>
                </li>
			    <li>
			    	<sec:ifLoggedIn>
						<g:link controller="dashboard" action="index">Dashboard</g:link>
					</sec:ifLoggedIn>
                </li>
                <li>
                	<sec:ifNotLoggedIn>
						<g:link controller='login' action='auth'>Ingresa</g:link>
					</sec:ifNotLoggedIn>
					<sec:ifLoggedIn>
						<g:link controller='logout' action=''>Salir</g:link>
					</sec:ifLoggedIn>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>