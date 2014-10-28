<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta name="layout" content="main" />
  <title>Login</title>
</head>
<body>
  <div class="col-md-4 col-md-offset-4">
     <div class="login-panel panel panel-default" id="login-form">
         <div class="panel-heading">
             <h3 class="panel-title">Bienvenido!</h3>
         </div>
         <g:if test="${flash.message}">
	     	<div class="message"><p class="bg-danger">${flash.message}</p></div>
	  	 </g:if>
         <div class="panel-body">
             <g:form action="signIn">
             <input type="hidden" name="targetUri" value="${targetUri}" />
                 <fieldset>
                     <div class="form-group">
                     	 <input class="form-control" placeholder="Usuario" type="text" name="username" value="${username}" />
                     </div>
                     <div class="form-group">
                     	 <input class="form-control" placeholder="Password" type="password" name="password" value="" />
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
