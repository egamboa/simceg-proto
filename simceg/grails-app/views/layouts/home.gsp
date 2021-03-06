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
  		<asset:stylesheet src="plantillas.css"/>
  		<asset:stylesheet src="main.css"/>
  		<asset:stylesheet src="plugins.css"/>
  		<asset:javascript src="application.js"/>
		<g:layoutHead/>
	</head>
	<body class="home-page static-page">
	
          <g:render template="/includes/navigation" />
        
    	  <!-- Carousel -->
    	  <g:render template="/includes/home-carousel" />
    	  <!-- Page Content -->
    	  <div class="container">
    		<g:layoutBody/>
    	  </div>
    	  <!-- FOOTER AREA -->
	      <g:render template="/includes/footer" />
    	  
	    <asset:javascript src="application.js"/>
	    <asset:javascript src="plugins.js"/>
	    <asset:javascript src="bootstrap.min.js"/>
	    <!-- Script to Activate the Carousel -->
	    <script>
	    $('.carousel').carousel({
	        interval: 5000 //changes the speed
	    })
	    </script>
	</body>
</html>
