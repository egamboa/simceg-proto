<%@ page import="org.una.simceg.Evento" %>


<div class="row">
	<div class="col-md-7 col-md-offset-1 event-form">
		<div class="form-group fieldcontain ${hasErrors(bean: eventoInstance, field: 'titulo', 'error')} required">
			<g:textField class="form-control" placeholder="Título" name="titulo" required="" value="${eventoInstance?.titulo}"/>

		</div>
		<div class="form-group fieldcontain ${hasErrors(bean: eventoInstance, field: 'descripcion', 'error')} required">
			<g:textField class="form-control" placeholder="Descripción" name="descripcion" required="" value="${eventoInstance?.descripcion}"/>
		</div>

		<div class="form-group fieldcontain ${hasErrors(bean: eventoInstance, field: 'locacion', 'error')} required">
			<g:textField placeholder="Locación" class="form-control" name="locacion" required="" value="${eventoInstance?.locacion}"/>

		</div>

		<div class="form-group fieldcontain ${hasErrors(bean: eventoInstance, field: 'tiempoInicio', 'error')} required">
			<label for="tiempoInicio">
				<g:message code="evento.tiempoInicio.label" default="Fecha y hora de Inicio" />
			</label>
			<div class="date">
				<g:datePicker class="form-control" name="tiempoInicio" precision="minute"  value="${eventoInstance?.tiempoInicio}" relativeYears="[0..1]" />
			</div>
		</div>

		<div class="form-group fieldcontain ${hasErrors(bean: eventoInstance, field: 'tiempoFinal', 'error')} required">
			<label for="tiempoFinal">
				<g:message code="evento.tiempoFinal.label" default="Fecha y hora de Cierre" />
			</label>
			<div class="date">
				<g:datePicker class="form-control" name="tiempoFinal" precision="minute"  value="${eventoInstance?.tiempoFinal}" relativeYears="[0..1]" />
			</div>
		</div>
	</div>

	<div class="col-md-4 text-left">
		<div class="fieldcontain ${hasErrors(bean: eventoInstance, field: 'allDay', 'error')}">
		     <div class="checkbox">
		       <label>
		         <g:checkBox name="allDay" value="${eventoInstance?.allDay}" /> Todo el Día?
		       </label>
		     </div>
		</div>
	</div>

</div>
