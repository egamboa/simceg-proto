<%@ page import="org.una.simceg.Nivel" %>

<div class="fieldcontain form-group ${hasErrors(bean: nivelInstance, field: 'descripcion', 'error')} required">
	<label for="descripcion">
		<g:message code="nivel.descripcion.label" default="Descripción" />
	</label>
	<g:textField class="form-control" name="descripcion" required="" value="${nivelInstance?.descripcion}"/>

</div>

<div class="fieldcontain form-group ${hasErrors(bean: nivelInstance, field: 'ciclos', 'error')} required">
	<label for="ciclos">
		<g:message code="nivel.ciclos.label" default="Ciclos" />
	</label>
	<g:field class="form-control" name="ciclos" type="number" value="${nivelInstance.ciclos}" required=""/>
</div>

<div class="fieldcontain form-group ${hasErrors(bean: nivelInstance, field: 'materias', 'error')} ">
	<label for="materias">
		<g:message code="nivel.materias.label" default="Materias" />
	</label>
	<g:select class="form-control" name="materias" from="${org.una.simceg.Materia.list()}" multiple="multiple" optionKey="id" size="5" value="${nivelInstance?.materias*.id}" class="many-to-many"/>

</div>
