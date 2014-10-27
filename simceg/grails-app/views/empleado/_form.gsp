<%@ page import="org.una.simceg.Empleado" %>



<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'avatar', 'error')} ">
	<label for="avatar">
		<g:message code="empleado.avatar.label" default="Avatar" />
		
	</label>
	<input type="file" id="avatar" name="avatar" />

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'avatarType', 'error')} ">
	<label for="avatarType">
		<g:message code="empleado.avatarType.label" default="Avatar Type" />
		
	</label>
	<g:textField name="avatarType" value="${empleadoInstance?.avatarType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="empleado.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${empleadoInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="empleado.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${empleadoInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="empleado.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${empleadoInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="empleado.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${empleadoInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'direccion', 'error')} required">
	<label for="direccion">
		<g:message code="empleado.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="direccion" required="" value="${empleadoInstance?.direccion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'fechaIngreso', 'error')} required">
	<label for="fechaIngreso">
		<g:message code="empleado.fechaIngreso.label" default="Fecha Ingreso" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaIngreso" precision="day"  value="${empleadoInstance?.fechaIngreso}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'fechaNacimiento', 'error')} required">
	<label for="fechaNacimiento">
		<g:message code="empleado.fechaNacimiento.label" default="Fecha Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaNacimiento" precision="day"  value="${empleadoInstance?.fechaNacimiento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'fechaSalida', 'error')} required">
	<label for="fechaSalida">
		<g:message code="empleado.fechaSalida.label" default="Fecha Salida" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaSalida" precision="day"  value="${empleadoInstance?.fechaSalida}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'gradoProfesional', 'error')} required">
	<label for="gradoProfesional">
		<g:message code="empleado.gradoProfesional.label" default="Grado Profesional" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="gradoProfesional" required="" value="${empleadoInstance?.gradoProfesional}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'nacionalidad', 'error')} required">
	<label for="nacionalidad">
		<g:message code="empleado.nacionalidad.label" default="Nacionalidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nacionalidad" required="" value="${empleadoInstance?.nacionalidad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="empleado.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefono" required="" value="${empleadoInstance?.telefono}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empleadoInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="empleado.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${org.una.simceg.Usuario.list()}" optionKey="id" required="" value="${empleadoInstance?.usuario?.id}" class="many-to-one"/>

</div>

