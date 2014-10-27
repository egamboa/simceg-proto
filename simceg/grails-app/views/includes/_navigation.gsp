<div class="navbar-header">
  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
    <span class="sr-only">Toggle navigation</span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
  </button>
  <g:link controller="home" action="index" class="navbar-brand">Simceg Proto</g:link>
</div>
<div class="navbar-collapse collapse">
  <ul class="nav navbar-nav">
    <li class="dropdown">
      <a href="#" class="" dropdown-toggle" data-toggle="dropdown">Padres<span class="caret"></span></a>
      <ul class="dropdown-menu" role="menu">
        <li><a href="/">Perfil</a></li>
        <li><a href="/padres/mensajes.html">Mensajes</a></li>
        <li><a href="/padres/notas.html">Notas</a></li>
        <li><a href="/padres/calendario.html">Calendario</a></li>
        <li><a href="/padres/archivos.html">Archivos</a></li>
      </ul>
    </li>
    <li class="dropdown">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown">Profesores<span class="caret"></span></a>
      <ul class="dropdown-menu" role="menu">
        <li class="dropdown-header">Personal</li>
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
      <ul class="dropdown-menu" role="menu">
        <li class="dropdown-header">Personal</li>
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
    	<g:link controller="home" action="about">Acerca de</g:link>
    </li>
    <li>
    	<g:link controller="home" action="contact">Contacto</g:link>
    </li>
  </ul>
  <div id="login-section">
    <!-- Button trigger modal -->
      <button class="btn btn-primary" id="showLogin" data-toggle="modal" data-target="#loginModal">
        Entrar
      </button>
  </div>

</div><!--/.nav-collapse -->