<%@ page import="org.una.simceg.Grupo" %>

<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'descripcion', 'error')} required form-group">
	<label for="descripcion" class="col-sm-3 control-label">
		<g:message code="grupo.descripcion.label" default="Descripcion" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:textField class="form-control" name="descripcion" required="" value="${grupoInstance?.descripcion}"/>
	</div>
</div>
<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'estudiantes', 'error')} form-group">
	<label for="estudiantes" class="col-sm-3 control-label">
		<g:message code="grupo.estudiantes.label" default="Estudiantes" />
		
	</label>
	<div class="col-sm-9">
		<g:select class="form-control" style="width:100%;" name="estudiantes" from="${org.una.simceg.Estudiante.list()}" multiple="multiple" optionKey="id" optionValue="${{it.nombreCompleto()}}" size="5" value="${grupoInstance?.estudiantes*.id}" class="many-to-many"/>
	</div>
</div>
<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'materias', 'error')} form-group">
	<label for="materias" class="col-sm-3 control-label">
		<g:message code="grupo.materias.label" default="Materias" />
		
	</label>
	<div class="col-sm-9">
		<ul class="one-to-many">
			<g:each in="${grupoInstance?.materias?}" var="m">
			    <li><g:link controller="materia" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
			</g:each>
			<li class="add">
				<g:link controller="materia" action="create" params="['grupo.id': grupoInstance?.id]">Agregar Materia</g:link>
			</li>
		</ul>
	</div>
</div>
<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'nivel', 'error')} required form-group">
	<label for="nivel" class="col-sm-3 control-label">
		<g:message code="grupo.nivel.label" default="Nivel" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:select class="form-control" id="nivel" name="nivel.id" from="${org.una.simceg.Nivel.list()}" optionKey="id" required="" value="${grupoInstance?.nivel?.id}" class="many-to-one"/>
	</div>
</div>
<div class="fieldcontain ${hasErrors(bean: grupoInstance, field: 'periodo', 'error')} required form-group">
	<label for="periodo" class="col-md-3 control-label">
		<g:message code="grupo.periodo.label" default="Periodo" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-md-9">
		<g:select class="form-control" id="periodo" name="periodo.id" from="${org.una.simceg.PeriodoLectivo.list()}" optionKey="id" required="" value="${grupoInstance?.periodo?.id}" class="many-to-one"/>
	</div>
</div>