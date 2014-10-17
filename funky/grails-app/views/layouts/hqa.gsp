<!DOCTYPE html>
<html>
<head>
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	    <title><g:layoutTitle default=""/></title>
		<link rel="shortcut icon" href="${resource(dir:'img',file:'logoH.png')}" type="image/x-icon"/>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'reset.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-slider.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.fancybox.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
		<g:set var="user" value="${sec.loggedInUserInfo(field: 'username')}" />
		<g:javascript src="menu/modernizr.custom.js"/>

		<g:layoutHead/>
		<g:javascript library="application"/>
		<r:layoutResources />
		<g:layoutHead/>
	</head>
	<body>
		<g:render template="/includes/hqa_header"/>
	 		<div class="hqa_container">
				<g:layoutBody/>
			</div>
		<r:layoutResources />
		<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    	<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
		<g:javascript src="bootstrap.js" />
		<g:javascript src="bootstrap-slider.js" />
		<g:javascript src="script.js" />
		<g:javascript src="hqa-script.js" />
		<g:javascript src="jquery.tablesorter.js"/>
		<g:javascript src="fancy_box/jquery.fancybox.pack.js"/>
	</body>
</html>
