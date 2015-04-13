<%@ page import="org.una.simceg.User" %>


<div class="row">

	<div class="col-md-7 col-md-offset-1 text-left">
		<div class="fieldcontain  form-group">
			<label for="rol"  class="control-label">
				Rol
			</label>
			<div class="select-style">
			  <g:select 
			  	class="form-control custom-dd many-to-one" 
			  	id="rol" 
			  	name="rol.id" 
			  	from="${org.una.simceg.Role.list()}" 
			  	optionKey="id"
				value="${userInstance.id? org.una.simceg.UserRole.findByUser(userInstance).role.id : ''}"/>
			</div>
		</div>
		<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required form-group">
		    <g:textField placeholder="Nombre De Usuario" class="form-control" name="username" required="" value="${userInstance?.username}"/>
		</div>
		<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required form-group">
			<g:passwordField placeholder="Password" class="form-control" name="password" required="" value="${userInstance?.password}"/>
		</div>
		<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'cedula', 'error')} required form-group">
			<g:textField placeholder="Cédula" class="form-control" name="cedula" required="" value="${userInstance?.cedula}"/>
		</div>

		<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'nombre', 'error')} required form-group">
			<g:textField placeholder="Nombre" class="form-control" name="nombre" required="" value="${userInstance?.nombre}"/>
		</div>

		<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'primerApellido', 'error')} required form-group">
			<g:textField placeholder="Primer Apellido" class="form-control" name="primerApellido" required="" value="${userInstance?.primerApellido}"/>
		</div>

		<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'segundoApellido', 'error')} required form-group">
			<g:textField placeholder="Segundo Apellido" class="form-control" name="segundoApellido" required="" value="${userInstance?.segundoApellido}"/>
		</div>

		<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'direccion', 'error')} required form-group">
			<g:textField placeholder="Dirección" class="form-control" name="direccion" required="" value="${userInstance?.direccion}"/>
		</div>

		<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required form-group">
			<g:textField placeholder="Correo Elecctrónico" class="form-control" name="email" required="" value="${userInstance?.email}"/>
		</div>
		<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'estadoCivil', 'error')} required form-group">
			<g:textField placeholder="Estado Civil" class="form-control" name="estadoCivil" required="" value="${userInstance?.estadoCivil}"/>
		</div>

		<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'nacionalidad', 'error')} required form-group">
			<g:textField placeholder="Nacionalidad" class="form-control" name="nacionalidad" required="" value="${userInstance?.nacionalidad}"/>
		</div>
		<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'telefono', 'error')} required form-group">	
			<g:textField placeholder="Teléfono" class="form-control" name="telefono" required="" value="${userInstance?.telefono}"/>
		</div>

	</div>

	<div class="col-md-4 text-left">
		<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'enabled', 'error')}">
		     <div class="checkbox">
		       <label>
		         <g:checkBox name="enabled" value="${userInstance?.enabled}" /> Activo
		       </label>
		     </div>
		</div>
		<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountExpired', 'error')}">
		     <div class="checkbox">
		       <label>
		         <g:checkBox name="accountExpired" value="${userInstance?.accountExpired}" /> Expiró
		       </label>
		     </div>
		</div>
		<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'accountLocked', 'error')}">
		     <div class="checkbox">
		       <label>
		         <g:checkBox name="accountLocked" value="${userInstance?.accountLocked}" /> Bloqueado
		       </label>
		     </div>
		</div>
		<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'passwordExpired', 'error')}">
		     <div class="checkbox">
		       <label>
		         <g:checkBox name="passwordExpired" value="${userInstance?.passwordExpired}" /> Password expiró
		       </label>
		     </div>
		</div>
	</div>
</div>
