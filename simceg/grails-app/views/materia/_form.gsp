<%@ page import="org.una.simceg.Materia" %>



<div class="fieldcontain ${hasErrors(bean: materiaInstance, field: 'grupo', 'error')} required form-group">
	<label for="grupo" class="col-sm-3 control-label">
		<g:message code="materia.grupo.label" default="Grupo" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:select id="grupo" class="form-control" name="grupo.id" from="${org.una.simceg.Grupo.list()}" optionKey="id" optionValue="descripcion" required="" value="${materiaInstance?.grupo?.id}" class="many-to-one"/>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: materiaInstance, field: 'materia', 'error')} required form-group">
	<label for="materia" class="col-sm-3 control-label">
		<g:message code="materia.materia.label" default="Materia" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:select id="materia" class="form-control" name="materia.id" from="${org.una.simceg.CatalogoMateria.list()}" optionKey="id" optionValue="descripcion" required="" value="${materiaInstance?.materia?.id}" class="many-to-one"/>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: materiaInstance, field: 'profesor', 'error')} required form-group">
	<label for="profesor" class="col-sm-3 control-label">
		<g:message code="materia.profesor.label" default="Profesor" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:select id="profesor" class="form-control" name="profesor.id" from="${org.una.simceg.Profesor.list()}" optionKey="id" optionValue="${{it.usuario.nombreCompleto()}}" required="" value="${materiaInstance?.profesor?.id}" class="many-to-one"/>
	</div>
</div>

