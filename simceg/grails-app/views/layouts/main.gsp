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
  		<asset:stylesheet src="bootstrap.css"/>
  		<asset:stylesheet src="application.css"/>
  		<asset:javascript src="bootstrap.js"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
	</head>
	<body>
        <div class="navbar navbar-inverse navbar-fixed-top row" role="navigation">
        	<div class="col-md-2"></div>
	        <div class="container col-md-10">
	          <g:render template="/includes/navigation" />
	        </div>
        </div>
		<div class="container">
	      <!-- MAIN CONTENT AREA -->
	      <div class="space"></div>
	      <g:layoutBody/>
	      <hr>
	      <g:render template="/includes/footer" />
	    </div>
	</body>
</html>
