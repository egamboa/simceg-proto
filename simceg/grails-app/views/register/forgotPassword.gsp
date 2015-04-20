<html>

<head>
<title><g:message code='spring.security.ui.forgotPassword.title'/></title>
<meta name='layout' content='register'/>
</head>

<body>
<div class="row">
    <div class="col-md-4 col-md-offset-4">
		<g:form  class="form-signin text-left" action='forgotPassword' name="forgotPasswordForm" autocomplete='off'>

		<g:if test='${emailSent}'>
			<br/>
			<g:message code='spring.security.ui.forgotPassword.sent'/>
		</g:if>

		<g:else>
		<div class="submit-form">
			<div class="login-label text-center">
			    <h3 class="text-left">Olvido su contraseña?</h3>
			</div>
			<div class="form-group">
	            <g:textField class="form-control" elementId='username' name="username" size="25" placeholder="Nombre de Usuario" />
			</div>
		</div>
		<div class="text-right">
			<s2ui:submitButton elementId='reset' form='forgotPasswordForm' class="btn btn-primary" messageCode='Reiniciar Contraseña'/>
		</div>
		</g:else>

		</g:form>
	</div>
</div>
<br>
<script>
$(document).ready(function() {
	$('#username').focus();
});
</script>

</body>
</html>
