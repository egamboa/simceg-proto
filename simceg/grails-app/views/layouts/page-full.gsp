<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="font-awesome.min.css"/>
  		<asset:stylesheet src="bootstrap.min.css"/>
  		<asset:stylesheet src="modern-business.css"/>
  		<asset:stylesheet src="main.css"/>
		<g:layoutHead/>
	</head>
	<body>
	
          <g:render template="/includes/navigation" />
    	  <!-- Page Content -->
    	  <div class="container">
    	  	<!-- Page Heading/Breadcrumbs -->
	        <div class="row">
	            <div class="col-lg-12">
	                <h1 class="page-header">Nombre de Pagina
	                    <small>Texto Extra de Pagina</small>
	                </h1>
	                <ol class="breadcrumb">
	                    <li><a href="index.html">Inicio</a>
	                    </li>
	                    <li class="active">Nombre de Pagina</li>
	                </ol>
	            </div>
	        </div>
	        <!-- /.row -->
    		<g:layoutBody/>
    		<!-- FOOTER AREA -->
	      	<g:render template="/includes/footer" />
    	  </div>
	    <asset:javascript src="application.js"/>
	    <asset:javascript src="bootstrap.min.js"/>
	</body>
</html>
