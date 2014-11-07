<%@ page import="org.una.simceg.Materia" %>



<div class="fieldcontain ${hasErrors(bean: materiaInstance, field: 'grupo', 'error')} required">
	<label for="grupo">
		<g:message code="materia.grupo.label" default="Grupo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="grupo" name="grupo.id" from="${org.una.simceg.Grupo.list()}" optionKey="id" required="" value="${materiaInstance?.grupo?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: materiaInstance, field: 'materia', 'error')} required">
	<label for="materia">
		<g:message code="materia.materia.label" default="Materia" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="materia" name="materia.id" from="${org.una.simceg.CatalogoMateria.list()}" optionKey="id" required="" value="${materiaInstance?.materia?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: materiaInstance, field: 'profesor', 'error')} required">
	<label for="profesor">
		<g:message code="materia.profesor.label" default="Profesor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="profesor" name="profesor.id" from="${org.una.simceg.Profesor.list()}" optionKey="id" required="" value="${materiaInstance?.profesor?.id}" class="many-to-one"/>

</div>

