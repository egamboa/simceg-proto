<!DOCTYPE html>
<html>
<head>
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	    <title></title>
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'reset.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery.fancybox.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'table.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
		<g:layoutHead/>
		<g:javascript library="application"/>
		<r:layoutResources />
		<g:layoutHead/>
	</head>
	<body>
		<g:layoutBody/>
		<r:layoutResources />
		<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    	<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
		<g:javascript src="bootstrap.js" />
		<g:javascript src="script.js" />
		<g:javascript src="jquery.tablesorter.js"/>
		<g:javascript src="fancy_box/jquery.fancybox.pack.js"/>
		<script type="text/javascript">
        	$(document).ready(function(){
        		$('#manager').removeAttr('multiple');
        	});
        </script>
	</body>
</html>
