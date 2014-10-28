<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
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
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Noticias <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="blog-home-1.html">Noticia 1</a>
                        </li>
                        <li>
                            <a href="blog-home-2.html">Noticia 2</a>
                        </li>
                        <li>
                            <a href="blog-post.html">Noticia 3</a>
                        </li>
                    </ul>
                </li>
                
                <li class="dropdown">
			      <a href="#" class="dropdown-toggle" data-toggle="dropdown">Padres<span class="caret"></span></a>
			      <ul class="dropdown-menu">
			        <li><a href="/">Perfil</a></li>
			        <li><a href="/padres/mensajes.html">Mensajes</a></li>
			        <li><a href="/padres/notas.html">Notas</a></li>
			        <li><a href="/padres/calendario.html">Calendario</a></li>
			        <li><a href="/padres/archivos.html">Archivos</a></li>
			      </ul>
			    </li>
			    <li class="dropdown">
			      <a href="#" class="dropdown-toggle" data-toggle="dropdown">Profesores<span class="caret"></span></a>
			      <ul class="dropdown-menu">
			        <li class="dropdown-header">Personal</li>
			        <li><a href="/">Perfil</a></li>
			        <li><a href="/profesores/mensajes.html">Mensajes</a></li>
			        <li><a href="/profesores/calendario.html">Calendario</a></li>
			        <li><a href="/profesores/archivos.html">Archivos</a></li>
			        <li class="divider"></li>
			        <li class="dropdown-header">Escuela</li>
			        <li><a href="/profesores/estudiantes.html">Mis Estudiantes</a></li>
			      </ul>
			    </li>
			    <li class="dropdown">
			      <a href="#" class="dropdown-toggle" data-toggle="dropdown">Administración<span class="caret"></span></a>
			      <ul class="dropdown-menu">
			        <li class="dropdown-header">Personal</li>
			        <li><a href="/">Perfil</a></li>
			        <li><a href="/administracion/mensajes.html">Mensajes</a></li>
			        <li><a href="/administracion/calendario.html">Calendario</a></li>
			        <li><a href="/administracion/archivos.html">Archivos</a></li>
			        <li class="divider"></li>
			        <li class="dropdown-header">Escuela</li>
			        <li><a href="/administracion/estudiantes.html">Estudiantes</a></li>
			        <li><a href="/administracion/eventos.html">Eventos</a></li>
			        <li class="divider"></li>
			        <li class="dropdown-header">Configuración</li>
			        <li><a href="/administracion/propiedades.html">Propiedades</a></li>
			        <li><a href="/administracion/roles.html">Roles</a></li>
			        <li><a href="/administracion/usuarios.html">Usuarios</a></li>
			        <li><a href="/administracion/grupos.html">Grupos</a></li>
			        <li><a href="/administracion/materias.html">Materias</a></li>
			      </ul>
			    </li>
                <li>
                		<g:link controller="auth" action="login">Ingresa</g:link>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>