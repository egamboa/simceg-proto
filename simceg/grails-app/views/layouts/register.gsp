<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title><g:layoutTitle default='User Registration'/></title>

<link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon"/>
<asset:stylesheet src="plugins.css"/>
<asset:stylesheet src="plantillas.css"/>
<asset:stylesheet src="fullcalendar.css"/>
<asset:stylesheet src="main.css"/>
<asset:javascript src="application.js"/>
<g:layoutHead/>

<%--

The 'resources' tag in SecurityUiTagLib renders these tags if you're not using the resources plugin:

	<g:javascript library='jquery' plugin='jquery' />
	<link rel="stylesheet" media="screen" href="${resource(dir:'css',file:'reset.css',plugin:'spring-security-ui')}"/>
	<link rel="stylesheet" media="screen" href="${resource(dir:'css',file:'spring-security-ui.css',plugin:'spring-security-ui')}"/>
	<jqui:resources />
	<link rel="stylesheet" media="screen" href="${resource(dir:'css/smoothness',file:'jquery-ui-1.10.3.custom.css',plugin:'spring-security-ui')}"/>
	<link rel="stylesheet" media="screen" href="${resource(dir:'css',file:'jquery.jgrowl.css',plugin:'spring-security-ui')}"/>
	<link rel="stylesheet" media="screen" href="${resource(dir:'css',file:'jquery.safari-checkbox.css',plugin:'spring-security-ui')}"/>
	<link rel="stylesheet" media="screen" href="${resource(dir:'css',file:'auth.css',plugin:'spring-security-ui')}"/>

or these if you are:

   <r:require module="register"/>
   <r:layoutResources/>

If you need to customize the resources, replace the <s2ui:resources> tag with
the explicit tags above and edit those, not the taglib code.
--%>

<g:layoutHead/>

</head>

<body>
<s2ui:layoutResources module='register' />
<g:render template="/includes/navigation" />

<div class="container">
	<g:layoutBody/>
	<!-- FOOTER AREA -->
	<g:render template="/includes/footer" />
</div>
<%--
<g:javascript src='jquery/jquery.jgrowl.js' plugin='spring-security-ui'/>
<g:javascript src='jquery/jquery.checkbox.js' plugin='spring-security-ui'/>
<g:javascript src='spring-security-ui.js' plugin='spring-security-ui'/>
--%>

<asset:javascript src="moment.min.js"/>
<asset:javascript src="fullcalendar.min.js"/>
<asset:javascript src="plugins.js"/>
<asset:javascript src="es.js"/>
<asset:javascript src="bootstrap.min.js"/>
</body>
</html>
