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
			    <li>
			    	<g:if test="${controllerName != 'dashboard'}">
				    	<sec:ifLoggedIn>
							<g:link controller="dashboard" action="index">Cuenta</g:link>
						</sec:ifLoggedIn>
			    	</g:if>
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