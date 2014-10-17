<html>

<head>
<title><g:message code='simceg.title.main'/> - <g:message code='spring.security.ui.resetPassword.title'/></title>
<meta name='layout' content='login'/>
</head>

<body>
<div class="row">
  <div class="col-md-3"></div>
    
    <div class="col-md-6 col-xs-12">
      <div class="login reset">
      <s2ui:form width='400' height='360' elementId='resetPasswordFormContainer'
           titleCode='Update Your Password' center='true'>
        <g:form action='resetPassword' class="form-signin" name='resetPasswordForm' autocomplete='off'>
        <g:hiddenField name='t' value='${token}'/>
        <div class="sign-in"> 
          <div class="submit-form">
              <div class="login-label">
                  <h3><g:message code='spring.security.ui.resetPassword.description'/></h3>
                  <p><g:message code='simceg.title.main'/></p>
              </div>    
              <div class="form-group input-group input-group-lg">
                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                    <s2ui:passwordFieldRow 
                      name='password' 
                      labelCode='resetPasswordCommand.password.label' 
                      bean="${command}"
                      labelCodeDefault='Password' 
                      placeholder="Password" 
                      class="form-control" 
                      value="${command?.password}"/>
              </div>
              
              <div class="form-group input-group input-group-lg">
                <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                     <s2ui:passwordFieldRow 
                      name='password2' 
                      labelCode='resetPasswordCommand.password2.label' 
                      bean="${command}" 
                      labelCodeDefault='Password (again)' 
                      placeholder="Password (again)" 
                      class="form-control"
                      labelCodeDefault='Password (again)' 
                      value="${command?.password2}"/>
              </div>    
         </div>
          <div class="submit-bg">
              <s2ui:submitButton class="btn btn-lg btn-warning" elementId='reset' form='resetPasswordForm' messageCode='Update Your Password'/>  
         </div>
        </div>
        </g:form>
       </s2ui:form>
      <script>
      $(document).ready(function() {
        $('#password').focus();
      });
      </script>
        </div>
        
    </div>
    
    <div class="col-md-3"></div>
</div>

       
</div>

</body>
</html>