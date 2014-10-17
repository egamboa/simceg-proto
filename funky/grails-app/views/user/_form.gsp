<%@ page import="com.una.simceg.User" %>


<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} ">
	<div class="center-field pull-left">
    <div class="input-group input-group-lg">
	<label for="name">
		<g:message code="user.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" value="${userInstance?.name}" class="form-control" required=""/>
	</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} ">
	<div class="center-field pull-right">
		<div class="input-group input-group-lg">
			<label for="accountExpired">
				<g:message code="user.accountExpired.label" default="Account Expired" />

					</label>
					<br />
					<g:checkBox name="accountExpired" class="css-checkbox" value="${userInstance?.accountExpired}"/>
					 <label class="css-label lite-orange-check" name="accountExpired" for="accountExpired"></label>
			</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} ">
	<div class="center-field pull-left">
    <div class="input-group input-group-lg">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" value="${userInstance?.email}" class="form-control" required=""/>	
	</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} ">
	<div class="center-field pull-right">
		<div class="input-group input-group-lg">	
			<label for="accountLocked">
				<g:message code="user.accountLocked.label" default="Account Locked" />
			</label>
			<br/>
			<g:checkBox name="accountLocked" class="css-checkbox" value="${userInstance?.accountLocked}" />
			<label class="css-label lite-orange-check" name="accountLocked" for="accountLocked"></label>
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required">
	<div class="center-field pull-left">
		<div class="input-group input-group-lg">
			<label for="username">
				<g:message code="user.username.label" default="Username" />
				<span class="required-indicator">*</span>
			</label>
			<g:textField name="username" required="" value="${userInstance?.username}" class="form-control"/>
		</div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
	<div class="center-field pull-right">
	<div class="input-group input-group-lg">	
	<label for="enabled">
		<g:message code="user.enabled.label" default="Enabled" />
		
	</label>
	<br/>
	<g:checkBox name="enabled" class="css-checkbox" value="${userInstance?.enabled}" />
	<label class="css-label lite-orange-check" name="enabled" for="enabled"></label>
</div>
</div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<div class="center-field pull-left">
	<div class="input-group input-group-lg">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:passwordField name="password" required="" value="${userInstance?.password}" class="form-control"/>
</div>
</div>
</div>

<div class="fieldcontain ${hasErrors(bean: roleInstance, field: 'role', 'error')} ">
	<div class="center-field pull-right">
	<div class="input-group input-group-lg">	
	<label for="passwordExpired">
		<g:message code="role.authority.label" default="Authority" />
	</label>
	<g:select id="Role" name="Role.id" from="${com.una.simceg.Role.list()}" optionKey="id" required="" value="${roleInstance?.role}" class="form-control custom-dd many-to-one"/>
</div>
</div>
</div>

