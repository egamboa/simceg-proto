<%@ page import="org.una.simceg.Estudiante" %>



<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'activo', 'error')} ">
	<label for="activo">
		<g:message code="estudiante.activo.label" default="Activo" />
		
	</label>
	<g:checkBox name="activo" value="${estudianteInstance?.activo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'adecuacion', 'error')} ">
	<label for="adecuacion">
		<g:message code="estudiante.adecuacion.label" default="Adecuacion" />
		
	</label>
	<g:checkBox name="adecuacion" value="${estudianteInstance?.adecuacion}" />

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'alergias', 'error')} ">
	<label for="alergias">
		<g:message code="estudiante.alergias.label" default="Alergias" />
		
	</label>
	<g:checkBox name="alergias" value="${estudianteInstance?.alergias}" />

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'alimentacion', 'error')} required">
	<label for="alimentacion">
		<g:message code="estudiante.alimentacion.label" default="Alimentacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="alimentacion" required="" value="${estudianteInstance?.alimentacion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'avatar', 'error')} required">
	<label for="avatar">
		<g:message code="estudiante.avatar.label" default="Avatar" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="avatar" name="avatar" />

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'avatarType', 'error')} required">
	<label for="avatarType">
		<g:message code="estudiante.avatarType.label" default="Avatar Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="avatarType" required="" value="${estudianteInstance?.avatarType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'descAlergias', 'error')} required">
	<label for="descAlergias">
		<g:message code="estudiante.descAlergias.label" default="Desc Alergias" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descAlergias" required="" value="${estudianteInstance?.descAlergias}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'direccion', 'error')} required">
	<label for="direccion">
		<g:message code="estudiante.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="direccion" required="" value="${estudianteInstance?.direccion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="estudiante.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${estudianteInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'encargado', 'error')} required">
	<label for="encargado">
		<g:message code="estudiante.encargado.label" default="Encargado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="encargado" name="encargado.id" from="${org.una.simceg.Encargado.list()}" optionKey="id" required="" value="${estudianteInstance?.encargado?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'fechaIngreso', 'error')} required">
	<label for="fechaIngreso">
		<g:message code="estudiante.fechaIngreso.label" default="Fecha Ingreso" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaIngreso" precision="day"  value="${estudianteInstance?.fechaIngreso}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'fechaNacimiento', 'error')} required">
	<label for="fechaNacimiento">
		<g:message code="estudiante.fechaNacimiento.label" default="Fecha Nacimiento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaNacimiento" precision="day"  value="${estudianteInstance?.fechaNacimiento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'fechaSalida', 'error')} required">
	<label for="fechaSalida">
		<g:message code="estudiante.fechaSalida.label" default="Fecha Salida" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaSalida" precision="day"  value="${estudianteInstance?.fechaSalida}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'habilidades', 'error')} required">
	<label for="habilidades">
		<g:message code="estudiante.habilidades.label" default="Habilidades" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="habilidades" required="" value="${estudianteInstance?.habilidades}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'haceTareas', 'error')} ">
	<label for="haceTareas">
		<g:message code="estudiante.haceTareas.label" default="Hace Tareas" />
		
	</label>
	<g:checkBox name="haceTareas" value="${estudianteInstance?.haceTareas}" />

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'horasDormir', 'error')} required">
	<label for="horasDormir">
		<g:message code="estudiante.horasDormir.label" default="Horas Dormir" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="horasDormir" type="number" value="${estudianteInstance.horasDormir}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'horasTv', 'error')} required">
	<label for="horasTv">
		<g:message code="estudiante.horasTv.label" default="Horas Tv" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="horasTv" type="number" value="${estudianteInstance.horasTv}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'lentes', 'error')} ">
	<label for="lentes">
		<g:message code="estudiante.lentes.label" default="Lentes" />
		
	</label>
	<g:checkBox name="lentes" value="${estudianteInstance?.lentes}" />

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'medicamentos', 'error')} ">
	<label for="medicamentos">
		<g:message code="estudiante.medicamentos.label" default="Medicamentos" />
		
	</label>
	<g:checkBox name="medicamentos" value="${estudianteInstance?.medicamentos}" />

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'nacionalidad', 'error')} required">
	<label for="nacionalidad">
		<g:message code="estudiante.nacionalidad.label" default="Nacionalidad" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nacionalidad" required="" value="${estudianteInstance?.nacionalidad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="estudiante.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${estudianteInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'ortopedicos', 'error')} ">
	<label for="ortopedicos">
		<g:message code="estudiante.ortopedicos.label" default="Ortopedicos" />
		
	</label>
	<g:checkBox name="ortopedicos" value="${estudianteInstance?.ortopedicos}" />

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'problemasLenguaje', 'error')} ">
	<label for="problemasLenguaje">
		<g:message code="estudiante.problemasLenguaje.label" default="Problemas Lenguaje" />
		
	</label>
	<g:checkBox name="problemasLenguaje" value="${estudianteInstance?.problemasLenguaje}" />

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'religion', 'error')} required">
	<label for="religion">
		<g:message code="estudiante.religion.label" default="Religion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="religion" required="" value="${estudianteInstance?.religion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'supervisionTv', 'error')} ">
	<label for="supervisionTv">
		<g:message code="estudiante.supervisionTv.label" default="Supervision Tv" />
		
	</label>
	<g:checkBox name="supervisionTv" value="${estudianteInstance?.supervisionTv}" />

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'talla', 'error')} ">
	<label for="talla">
		<g:message code="estudiante.talla.label" default="Talla" />
		
	</label>
	<g:checkBox name="talla" value="${estudianteInstance?.talla}" />

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="estudiante.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefono" required="" value="${estudianteInstance?.telefono}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'television', 'error')} ">
	<label for="television">
		<g:message code="estudiante.television.label" default="Television" />
		
	</label>
	<g:checkBox name="television" value="${estudianteInstance?.television}" />

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'tipoAdecuacion', 'error')} required">
	<label for="tipoAdecuacion">
		<g:message code="estudiante.tipoAdecuacion.label" default="Tipo Adecuacion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tipoAdecuacion" required="" value="${estudianteInstance?.tipoAdecuacion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: estudianteInstance, field: 'tipoSangre', 'error')} required">
	<label for="tipoSangre">
		<g:message code="estudiante.tipoSangre.label" default="Tipo Sangre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tipoSangre" required="" value="${estudianteInstance?.tipoSangre}"/>

</div>

