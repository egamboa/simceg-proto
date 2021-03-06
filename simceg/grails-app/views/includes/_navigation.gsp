<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
         <g:if test="${controllerName != 'home' && controllerName != 'login'}" >
            <button type="button" class="navbar-toggle toggle-dashboard" data-toggle="collapse" data-target="#sidebar-toggle">
                <span class="sr-only">Toggle Dashboard</span>
                <span class="glyphicon glyphicon-cog"></span>
            </button>
        </g:if>
        <button type="button" class="navbar-toggle toggle-nav" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle Navigation</span>
            <span class="glyphicon glyphicon-home"></span>
        </button>
        <g:link controller="home" action="index" class="navbar-brand" >GANDHI</g:link>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li class="${controllerName == 'home' && actionName == 'about' ? 'active' : ''}">
                	<g:link controller="home" action="about">Nuestra Instituci&oacute;n</g:link>
                </li>
                <li class="${controllerName == 'home' && actionName == 'services' ? 'active' : ''}">
                    <g:link controller="home" action="services">Servicios</g:link>
                </li>
                <li class="${controllerName == 'home' && actionName == 'contact' ? 'active' : ''}">
                    <g:link controller="home" action="contact">Contacto</g:link>
                </li>
			    <li class="${controllerName != 'home' ? 'active' : ''}">
			    	<sec:ifLoggedIn>
                        <g:link controller="dashboard" action="index">Cuenta</g:link>
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
</nav>