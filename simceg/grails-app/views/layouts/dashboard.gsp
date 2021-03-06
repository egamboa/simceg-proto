<%@ page import="org.una.simceg.User" %>
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
  		<asset:stylesheet src="plugins.css"/>
  		<asset:stylesheet src="plantillas.css"/>
  		<asset:stylesheet src="fullcalendar.css"/>
  		<asset:stylesheet src="main.css"/>
  		<asset:javascript src="application.js"/>
		<g:layoutHead/>
	</head>
	<body>
		<g:render template="/includes/navigation" />
		<g:render template="/includes/sidebar" />
		<div class="main-content">
			<div id="page-wrapper">
				<p class="text-right user-top-info">Bienvenido, ${User.findByUsername(sec.loggedInUserInfo(field:'username'))}</p>
				<g:layoutBody/>
			</div>
			<div class="clearfix"></div>
			<div class="col-lg-10 col-lg-offset-2 col-md-9 col-md-offset-3">
				<g:render template="/includes/footer" />
			</div>
		</div>
		<asset:javascript src="jquery.autogrow-textarea.js"/>
		<asset:javascript src="mustache.min.js"/>
		<asset:javascript src="underscore-min.js"/>
	    <asset:javascript src="moment.min.js"/>
	    <asset:javascript src="fullcalendar.min.js"/>
	    <asset:javascript src="plugins.js"/>
	    <asset:javascript src="es.js"/>
	    <asset:javascript src="bootstrap.min.js"/>
	</body>
</html>