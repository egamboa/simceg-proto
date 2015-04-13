<%@ page import="org.una.simceg.Nivel" %>

<div class="fieldcontain form-group ${hasErrors(bean: nivelInstance, field: 'ciclos', 'error')} required">
	<label for="ciclos">
		<g:message code="nivel.ciclos.label" default="Ciclos" />
	</label>
	<g:field name="ciclos" id="ciclos" type="number" value="${nivelInstance.ciclos}" required="" class="form-control" />

</div>

<div class="fieldcontain form-group ${hasErrors(bean: nivelInstance, field: 'descripcion', 'error')} required">
	<g:textField name="descripcion" placeholder="Descripción" required="" value="${nivelInstance?.descripcion}" class="form-control" />

</div>

<div class="fieldcontain form-group ${hasErrors(bean: nivelInstance, field: 'materias', 'error')} ">
	<label for="materias">
		<g:message code="nivel.materias.label" default="Materias" />
		
	</label>
	<g:select name="materias" from="${org.una.simceg.Materia.list()}" multiple="multiple" optionKey="id" size="5" value="${nivelInstance?.materias*.id}" class="many-to-many form-control"/>

</div>

