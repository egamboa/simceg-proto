<%@ page import="org.una.simceg.Evento" %>


<div class="row">
	<div class="col-md-7 col-md-offset-1 ">
		<div class="form-group fieldcontain ${hasErrors(bean: eventoInstance, field: 'titulo', 'error')} required">
			<g:textField class="form-control" placeholder="Título" name="titulo" required="" value="${eventoInstance?.titulo}"/>

		</div>
		<div class="form-group fieldcontain ${hasErrors(bean: eventoInstance, field: 'descripcion', 'error')} required">
			<g:textField class="form-control" placeholder="Descripción" name="descripcion" required="" value="${eventoInstance?.descripcion}"/>
		</div>

		<div class="form-group fieldcontain ${hasErrors(bean: eventoInstance, field: 'locacion', 'error')} required">
			<g:textField placeholder="Locación" class="form-control" name="locacion" required="" value="${eventoInstance?.locacion}"/>

		</div>

		<div class="form-group fieldcontain ${hasErrors(bean: eventoInstance, field: 'tiempoFinal', 'error')} required">
			<label for="tiempoFinal">
				<g:message code="evento.tiempoFinal.label" default="Tiempo Final" />
			</label>
			<div class="date">
				<g:datePicker class="form-control" name="tiempoFinal" precision="day"  value="${eventoInstance?.tiempoFinal}"  />
			</div>
		</div>

		<div class="form-group fieldcontain ${hasErrors(bean: eventoInstance, field: 'tiempoInicio', 'error')} required">
			<label for="tiempoInicio">
				<g:message code="evento.tiempoInicio.label" default="Tiempo Inicio" />
			</label>
			<div class="date">
				<g:datePicker class="form-control" name="tiempoInicio" precision="day"  value="${eventoInstance?.tiempoInicio}"  />
			</div>
		</div>
	</div>
</div>
