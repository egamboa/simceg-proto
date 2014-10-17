<html>

<head>
<title><g:message code='simceg.title.main'/> - <g:message code='spring.security.ui.forgotPassword.title'/></title>
<meta name='layout' content='login'/>
</head>

<body>


	<g:form action='forgotPassword' name="forgotPasswordForm" autocomplete='off'>

	<g:if test='${emailSent}'>
	<br/>
	<div class="row">
	<div class="col-md-3"></div>
    <div class="col-md-6 col-xs-12">
    	<div class="login">
    		<div class="login-label">
                        <h3>Update Password</h3>
                        <p><g:message code='simceg.title.main'/></p>
             </div>    
                <div class="submit-form">
                    <div class="login-label">
                        <g:message code='spring.security.ui.forgotPassword.sent'/>
                    </div>
               </div> 
               <div class="submit-bg">
                <a class="btn btn-lg btn-warning" href="${createLink(uri: '/', absolute: true)}" style="color:#fff">Go back to Login</a>
               </div>  
        </div>
    </div>
    <div class="col-md-3"></div>
	</div>
	</g:if>

	<g:else>
	<div class="row">
	<div class="col-md-3"></div>
    
    <div class="col-md-6 col-xs-12">
    	
    	<div class="login">
          	
                <div class="submit-form">
                    <div class="login-label">
                        <h3>Update Password</h3>
                        <p><g:message code='simceg.title.main'/></p>
                    </div>    
                    <div class="input-group input-group-lg">
                          <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                          <input id="username" name="username" type="text" placeholder="Username" class="form-control">
                    </div>
                          
               </div>   
              
               <div class="submit-bg">
                    <button class="btn btn-lg btn-warning" type="submit">Reset Password</button>   
               </div> 
        </div>
    </div>
    <div class="col-md-3"></div>
	</div>
	<br/>
	</g:else>
	</g:form>

<script>
$(document).ready(function() {
	$('#username').focus();
});
</script>

</body>
</html>
