<html>

<head>
<title><g:message code='spring.security.ui.resetPassword.title'/></title>
<meta name='layout' content='register'/>
</head>

<body>
<!--<s2ui:form width='475' height='250' elementId='resetPasswordFormContainer'
           titleCode='spring.security.ui.resetPassword.header' center='true'>-->
<div class="row">
    <div class="col-md-4 col-md-offset-4 text-left">
		<g:form action='resetPassword' name='resetPasswordForm' autocomplete='off'>
		<g:hiddenField name='t' value='${token}'/>
		<div class="sign-in">

		<h4>Reiniciar Contraseña</h4>
			<div class="form-group">
				<s2ui:passwordFieldRow class="form-control" name='password' labelCode='resetPasswordCommand.password.label' bean="${command}"
	                             labelCodeDefault='Password' value="${command?.password}"/>
			</div>
			<div class="form-group">
				<s2ui:passwordFieldRow name='password2' labelCode='resetPasswordCommand.password2.label' bean="${command}" class="form-control"
	                             labelCodeDefault='Password (again)' value="${command?.password2}"/>
	        </div>
	        <div>
				<s2ui:submitButton elementId='reset' class="pull-right btn btn-default" form='resetPasswordForm' messageCode='Reiniciar Contraseña'/>
			</div>
		</div>
		</g:form>
	</div>
</div>
<!--</s2ui:form>-->

<script>
$(document).ready(function() {
	$('#password').focus();
});
</script>

</body>
</html>
