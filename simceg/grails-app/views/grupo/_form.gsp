<%@ page import="org.una.simceg.Grupo" %>



<div class="fieldcontain form-group ${hasErrors(bean: grupoInstance, field: 'descripcion', 'error')} required">
	<g:textField name="descripcion" placeholder="Descripción" class="form-control" required="" value="${grupoInstance?.descripcion}"/>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: grupoInstance, field: 'nivel', 'error')} required">
	<label for="nivel">
		<g:message code="grupo.nivel.label" default="Nivel" />
	</label>
	<div class="select-style">
		<g:select id="nivel" name="nivel.id" from="${org.una.simceg.Nivel.list()}" optionKey="id" required="" value="${grupoInstance?.nivel?.id}" class="many-to-one form-control"/>
	</div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: grupoInstance, field: 'periodo', 'error')} required">
	<label for="periodo">
		<g:message code="grupo.periodo.label" default="Periodo" />
	</label>
	<div class="select-style">
		<g:select id="periodo" name="periodo.id" from="${org.una.simceg.PeriodoLectivo.list()}" optionKey="id" required="" value="${grupoInstance?.periodo?.id}" class="many-to-one form-control"/>
	</div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: grupoInstance, field: 'profesor', 'error')} required">
	<label for="profesor">
		<g:message code="grupo.profesor.label" default="Profesor" />
	</label>
	<div class="select-style">
		<g:select id="profesor" name="profesor.id" from="${org.una.simceg.Profesor.list()}" optionKey="id" required="" value="${grupoInstance?.profesor?.id}" class="many-to-one form-control"/>
	</div>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: grupoInstance, field: 'estudiantes', 'error')} ">
	<label for="estudiantes">
		<g:message code="grupo.estudiantes.label" default="Estudiantes" />
	</label>
	<g:select name="estudiantes" from="${org.una.simceg.Estudiante.list()}" multiple="multiple" optionKey="id" size="5" value="${grupoInstance?.estudiantes*.id}" class="many-to-many form-control"/>
</div>

