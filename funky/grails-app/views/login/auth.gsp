<html>

<head>
<title><g:message code='simceg.title.main'/> - <g:message code='spring.security.ui.login.title'/></title>
<meta name='layout' content='login'/>
</head>

<body>
<div class="row">
	<div class="col-md-3"></div>
    
    <div class="col-md-6 col-xs-12">
    	
    	<div class="login">
          	<form role="form" class="form-signin" action='${postUrl}' method='POST' id="loginForm" name="loginForm" autocomplete='off'>
                <div class="submit-form">
                    <div class="login-label">
                        <h3>Ingreso</h3>
                        <p><g:message code='simceg.title.main'/></p>
                    </div>    
                    <div class="input-group input-group-lg">
                          <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                          <input name="j_username" id="username" type="text" placeholder="Username" class="form-control">
                    </div>
                    
                    <div class="input-group input-group-lg">
                          <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                          <input name="j_password" id="password" type="password" placeholder="Password" class="form-control">
                    </div>
              		<div class="row">	      
                    	<g:link controller='register' action='forgotPassword' class="forgot-password">Update your password</g:link>   
                    </div>      
               </div>   
              
               <div class="submit-bg">
                    <button class="btn btn-lg btn-warning" type="submit">Sign Up</button>   
               </div> 
               
          </form>
          
        </div>
        
    </div>
    
    <div class="col-md-3"></div>
</div>

       
</div>
<script>
$(document).ready(function() {
	$('#username').focus();
});
</script>

</body>
</html>
