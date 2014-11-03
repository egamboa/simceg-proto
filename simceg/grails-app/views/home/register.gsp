<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Registro</title>
    <meta name="layout" content="main"/>
</head>

<body>

<h1>Registro</h1>

<g:if test="${flash.message}">
    <div class="alert alert-info">${flash.message}</div>
</g:if>

<g:hasErrors bean="${user}">
    <div class="alert alert-error">
        <g:renderErrors bean="${user}" as="list"/>
    </div>
</g:hasErrors>

<g:form action="register">
    <p>
        <label for="username">Usuario</label>
        <g:textField name="username" value="${user.username}"/>
    </p>

    <p>
        <label for="password">Password</label>
        <g:passwordField name="password" value=""/>
    </p>

    <p>
        <label for="password">Confirmar Password</label>
        <g:passwordField name="password2" value=""/>
    </p>

    <p>
        <g:submitButton name="submit" value="Enviar"/>
    </p>
</g:form>

</body>
</html>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta name="layout" content="main" />
  <title>Registar</title>
</head>
<body>
  <div class="col-md-4 col-md-offset-4">
     <div class="login-panel panel panel-default" id="login-form">
         <div class="panel-heading">
             <h3 class="panel-title">Bienvenido, crea un usuario!</h3>
         </div>
         <g:if test="${flash.message}">
	     	<div class="message"><p class="bg-danger">${flash.message}</p></div>
	  	 </g:if>
         <div class="panel-body">
             <g:form action="register">
             <input type="hidden" name="targetUri" value="${targetUri}" />
                 <fieldset>
                     <div class="form-group">
                     	 <g:textField name="username" placeholder="Usuario" value="${user.username}"/>
                     </div>
                     <div class="form-group">
                     	 <g:passwordField name="password" placeholder="Password" value=""/>
                     </div>
                     <div class="form-group">
                     	 <g:passwordField name="password" placeholder="Password" value=""/>
                     </div>
                     <div class="checkbox">
                         <label>
                             <g:checkBox name="rememberMe" value="${rememberMe}" />Remember Me
                         </label>
                     </div>
                     <!-- Change this to a button or input when using this as a form -->
                     <input type="submit" value="Ingresa" class="btn btn-lg btn-block" />
                 </fieldset>
             </g:form>
         </div>
     </div>
  </div>
</body>
</html>
