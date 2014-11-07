<%@ page import="org.una.simceg.User" %>


<div class="row">
	<div class="col-md-2"></div>
	<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')} form-group col-md-2">
	
		<div class="">
	     <div class="checkbox">
	       <label>
	         <g:checkBox name="enabled" value="${userInstance?.enabled}" /> Activo
	       </label>
	     </div>
	   </div>
	</div>
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
	<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')} form-group col-md-2">
	
		<div class="">
	     <div class="checkbox">
	       <label>
	         <g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" /> Password expiró
	       </label>
	     </div>
	   </div>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required form-group">
	<label for="username"  class="col-sm-3 control-label">
		<g:message code="user.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
      <g:textField class="form-control" name="username" required="" value="${userInstance?.username}"/>
    </div>
</div>
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required form-group">
	<label for="username"  class="col-sm-3 control-label">
		<g:message code="user.username.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
      <g:passwordField class="form-control" name="password" required="" value="${userInstance?.password}"/>
    </div>
</div>
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'cedula', 'error')} required form-group">
	<label for="cedula" class="col-sm-3 control-label">
		<g:message code="user.cedula.label" default="Cedula" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
      <g:textField class="form-control" name="cedula" required="" value="${userInstance?.cedula}"/>
    </div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'nombre', 'error')} required form-group">
	<label for="nombre" class="col-sm-3 control-label">
		<g:message code="user.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:textField class="form-control" name="nombre" required="" value="${userInstance?.nombre}"/>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'primerApellido', 'error')} required form-group">
	<label for="primerApellido" class="col-sm-3 control-label">
		<g:message code="user.primerApellido.label" default="Primer Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:textField class="form-control" name="primerApellido" required="" value="${userInstance?.primerApellido}"/>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'segundoApellido', 'error')} required form-group">
	<label for="segundoApellido" class="col-sm-3 control-label">
		<g:message code="user.segundoApellido.label" default="Segundo Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:textField class="form-control" name="segundoApellido" required="" value="${userInstance?.segundoApellido}"/>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'direccion', 'error')} required form-group">
	<label for="direccion" class="col-sm-3 control-label">
		<g:message code="user.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:textField class="form-control" name="direccion" required="" value="${userInstance?.direccion}"/>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required form-group">
	<label for="email" class="col-sm-3 control-label">
		<g:message code="user.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:textField class="form-control" name="email" required="" value="${userInstance?.email}"/>
	</div>
</div>
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'estadoCivil', 'error')} required form-group">
	<label for="estadoCivil" class="col-sm-3 control-label">
		<g:message code="user.estadoCivil.label" default="Estado Civil" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:textField class="form-control" name="estadoCivil" required="" value="${userInstance?.estadoCivil}"/>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'nacionalidad', 'error')} required form-group">
	<label for="nacionalidad" class="col-sm-3 control-label">
		<g:message code="user.nacionalidad.label" default="Nacionalidad" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:textField class="form-control" name="nacionalidad" required="" value="${userInstance?.nacionalidad}"/>
	</div>
</div>
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'telefono', 'error')} required form-group">
	<label for="telefono" class="col-sm-3 control-label">
		<g:message code="user.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:textField class="form-control" name="telefono" required="" value="${userInstance?.telefono}"/>
	</div>
</div>

