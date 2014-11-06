<%@ page import="org.una.simceg.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required form-group">
	<label for="username"  class="col-sm-2 control-label">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
      <g:textField class="form-control" name="username" required="" value="${userInstance?.username}"/>
    </div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required form-group">
	<label for="password" class="col-sm-2 control-label">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
      <g:textField class="form-control" name="password" required="" value="${userInstance?.password}"/>
    </div>
</div>
<div class="row">
<div class="col-md-2"></div>
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')} form-group col-md-2">
   <div class="">
     <div class="checkbox">
       <label>
         <g:checkBox name="accountExpired" value="${userInstance?.accountExpired}" /> Expiró
       </label>
     </div>
   </div>
</div>
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')} form-group col-md-2">

	<div class="">
     <div class="checkbox">
       <label>
         <g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" /> Bloqueado
       </label>
     </div>
   </div>
</div>
</div>
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'cedula', 'error')} required">
	<label for="cedula">
		<g:message code="user.cedula.label" default="Cedula" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cedula" required="" value="${userInstance?.cedula}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'direccion', 'error')} required">
	<label for="direccion">
		<g:message code="user.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="direccion" required="" value="${userInstance?.direccion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${userInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="user.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${userInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'estadoCivil', 'error')} required">
	<label for="estadoCivil">
		<g:message code="user.estadoCivil.label" default="Estado Civil" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estadoCivil" required="" value="${userInstance?.estadoCivil}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'nacionalidad', 'error')} required">
	<label for="nacionalidad">
		<g:message code="user.nacionalidad.label" default="Nacionalidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nacionalidad" required="" value="${userInstance?.nacionalidad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="user.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${userInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="user.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'primerApellido', 'error')} required">
	<label for="primerApellido">
		<g:message code="user.primerApellido.label" default="Primer Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="primerApellido" required="" value="${userInstance?.primerApellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'segundoApellido', 'error')} required">
	<label for="segundoApellido">
		<g:message code="user.segundoApellido.label" default="Segundo Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="segundoApellido" required="" value="${userInstance?.segundoApellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="user.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefono" required="" value="${userInstance?.telefono}"/>

</div>

