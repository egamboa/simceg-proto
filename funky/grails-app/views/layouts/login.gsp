<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default='User Registration'/></title>
		<link rel="shortcut icon" href="${resource(dir:'img',file:'logoH.png')}" type="image/x-icon"/>
		<s2ui:resources module='register' />
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'reset.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.fancybox.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'table.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
 	<g:layoutHead/>
	</head>
	<body class="login-bg">
		<div class="container"> 
    		<div class="row">
			  <div class="col-md-3 col-xs-3 col-sm-4"></div>
			  <div class="col-md-6 col-xs-6 col-sm-3">
			  	 <div class="logo">
			  	 	Centro Educativo Gandhi
			     </div>
			  </div>
			</div>
		<g:layoutBody/>
		</div>
		<r:layoutResources />
		<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
		<g:javascript src="bootstrap.js" />
		<g:javascript src='jquery/jquery.jgrowl.js' plugin='spring-security-ui'/>
		<g:javascript src='jquery/jquery.checkbox.js' plugin='spring-security-ui'/>
		<g:javascript src='spring-security-ui.js' plugin='spring-security-ui'/>
		<s2ui:showFlash/>
	</body>
</html>