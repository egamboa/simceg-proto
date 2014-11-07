<%@ page import="org.una.simceg.Grupo" %>



<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="grupo.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descripcion" required="" value="${grupoInstance?.descripcion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'estudiantes', 'error')} ">
	<label for="estudiantes">
		<g:message code="grupo.estudiantes.label" default="Estudiantes" />
		
	</label>
	<g:select name="estudiantes" from="${org.una.simceg.Estudiante.list()}" multiple="multiple" optionKey="id" size="5" value="${grupoInstance?.estudiantes*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'materias', 'error')} ">
	<label for="materias">
		<g:message code="grupo.materias.label" default="Materias" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${grupoInstance?.materias?}" var="m">
    <li><g:link controller="materia" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="materia" action="create" params="['grupo.id': grupoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'materia.label', default: 'Materia')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'nivel', 'error')} required">
	<label for="nivel">
		<g:message code="grupo.nivel.label" default="Nivel" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="nivel" name="nivel.id" from="${org.una.simceg.Nivel.list()}" optionKey="id" required="" value="${grupoInstance?.nivel?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'periodo', 'error')} required">
	<label for="periodo">
		<g:message code="grupo.periodo.label" default="Periodo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="periodo" name="periodo.id" from="${org.una.simceg.PeriodoLectivo.list()}" optionKey="id" required="" value="${grupoInstance?.periodo?.id}" class="many-to-one"/>

</div>

