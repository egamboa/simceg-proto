<html>

<head>
<title>Ingresar</title>
<meta name='layout' content='main'/>
</head>

<body>
<div class="row">
	<div class="col-md-3"></div>
    
    <div class="col-md-6 col-xs-12">
    	
    	<div class="login">
          	<form role="form" class="form-signin" action='${postUrl}' method='POST' id="loginForm" name="loginForm" autocomplete='off'>
                <div class="submit-form">
                    <div class="login-label">
                        <h3>Ingresar al Sistema SIMCEG</h3>
                    </div>
                    <div class="form-group">
                        <input name="j_username" id="username" type="text" placeholder="Usuario" class="form-control">
					</div>
                    <div class="form-group">
                          <input name="j_password" id="password" type="password" placeholder="Contrase&ntilde;a" class="form-control">
                    </div>
                    <div class="form-group">
                    	<p id="remember_me_holder">
							<input type="checkbox" class="chk" name="_spring_security_remember_me" id="remember_me">
							<label for="remember_me">Recordarme</label>
						</p>
                    </div>
               </div>   
               <hr>
               <div class="row">
					<div class="col-md-4"><g:link controller='home' action='forgotPassword' class="forgot-password">Cambiar Contrase&ntilde;a</g:link></div>
					<div class="col-md-4 submit-bg">
					     <button class="btn" type="submit">Enviar</button>   
					</div>               	   
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
