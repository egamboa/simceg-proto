<%@ page import="org.una.simceg.Materia" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Notas</title>
		<meta name="layout" content="dashboard">
	</head>
	<body>
		<div class="row">
			<div class="col-md-12">
        <h2>Seleccione una materia</h2></br>
        <g:select name="materias"
          from="${Materia.list()}"
          value="id"
          optionKey="id"
          optionValue="${{it.materia.descripcion}}" /></br></br>
				<table class="table table-user-information">
                    <tbody>
            <tr class="fieldcontain">
                        <td><span id="rol-label" class="property-label">1er Examen Parcial</span>:</td>
                        <td><span class="property-value" aria-labelledby="rol-label">20%</span></td>
                      </tr>
                      
                      <tr class="fieldcontain">
                        <td><span id="username-label" class="property-label">2do Examen Parcial</span>:</td>
                        <td><span class="property-value" aria-labelledby="username-label">20%</span></td>
                      </tr>
                      
                      
                      <tr class="fieldcontain">
                        <td><span id="nombre-label" class="property-label">3er Examen Parcial</span>:</td>
                        <td><span class="property-value" aria-labelledby="nombre-label">20%</span></td>
                      </tr>
                      
                      
                      <tr class="fieldcontain">
                        <td><span id="primerApellido-label" class="property-label">Trabajo Cotidiano</span>:</td>
                        <td><span class="property-value" aria-labelledby="primerApellido-label">10%</span></td>
                      </tr>
                      
                      
                      <tr class="fieldcontain">
                        <td><span id="segundoApellido-label" class="property-label">Trabajo Extra Clase</span>:</td>
                        <td><span class="property-value" aria-labelledby="segundoApellido-label">10%</span></td>
                      </tr>
                      
                      
                      
                      
                      <tr class="fieldcontain">
                        <td><span id="cedula-label" class="property-label">Tareas y Quices</span>:</td>
                        <td><span class="property-value" aria-labelledby="cedula-label">10%</span></td>
                      </tr>
                      
                      
                      <tr class="fieldcontain">
                        <td><span id="direccion-label" class="property-label">Concepto</span>:</td>
                        <td><span class="property-value" aria-labelledby="direccion-label">10%</span></td>
                      </tr>
                      
                      
                      <tr class="fieldcontain">
                        <td><span id="email-label" class="property-label" style="font-weight:bold; color:red; font-size:16px">Nota Final:</span></td>
                        <td><span class="property-value" aria-labelledby="email-label" style="font-weight:bold; color:red; font-size:16px">100</span></td>
                      </tr>
                    </tbody>
                  </table>
          
        </div>
  		</div>
		</div>
	</body>
</html>