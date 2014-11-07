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
                        <td><span id="rol-label" class="property-label">Rol</span>:</td>
                        <td><span class="property-value" aria-labelledby="rol-label">ROLE_USER</span></td>
                      </tr>
                      
                      <tr class="fieldcontain">
                        <td><span id="username-label" class="property-label">Username</span>:</td>
                        <td><span class="property-value" aria-labelledby="username-label">padre</span></td>
                      </tr>
                      
                      
                      <tr class="fieldcontain">
                        <td><span id="nombre-label" class="property-label">Nombre</span>:</td>
                        <td><span class="property-value" aria-labelledby="nombre-label">Ramesh</span></td>
                      </tr>
                      
                      
                      <tr class="fieldcontain">
                        <td><span id="primerApellido-label" class="property-label">Primer Apellido</span>:</td>
                        <td><span class="property-value" aria-labelledby="primerApellido-label">Yada</span></td>
                      </tr>
                      
                      
                      <tr class="fieldcontain">
                        <td><span id="segundoApellido-label" class="property-label">Segundo Apellido</span>:</td>
                        <td><span class="property-value" aria-labelledby="segundoApellido-label">Sanchez</span></td>
                      </tr>
                      
                      
                      
                      
                      <tr class="fieldcontain">
                        <td><span id="cedula-label" class="property-label">Cedula</span>:</td>
                        <td><span class="property-value" aria-labelledby="cedula-label">1111-1111</span></td>
                      </tr>
                      
                      
                      <tr class="fieldcontain">
                        <td><span id="direccion-label" class="property-label">Direccion</span>:</td>
                        <td><span class="property-value" aria-labelledby="direccion-label">Alguna dirección</span></td>
                      </tr>
                      
                      
                      <tr class="fieldcontain">
                        <td><span id="email-label" class="property-label">Email</span>:</td>
                        <td><span class="property-value" aria-labelledby="email-label">algun@email.com</span></td>
                      </tr>
                      
                      
                      <tr class="fieldcontain">
                        <td><span id="enabled-label" class="property-label">Enabled</span>:</td>
                        <td><span class="property-value" aria-labelledby="enabled-label">True</span></td>
                      </tr>
                      
                      
                      <tr class="fieldcontain">
                        <td><span id="estadoCivil-label" class="property-label">Estado Civil</span>:</td>
                        <td><span class="property-value" aria-labelledby="estadoCivil-label">soltero</span></td>
                      </tr>
                      
                      
                      <tr class="fieldcontain">
                        <td><span id="nacionalidad-label" class="property-label">Nacionalidad</span>:</td>
                        <td><span class="property-value" aria-labelledby="nacionalidad-label">Costarricense</span></td>
                      </tr>
                      
                      
                      
                      <tr class="fieldcontain">
                        <td><span id="telefono-label" class="property-label">Telefono</span>:</td>
                        <td><span class="property-value" aria-labelledby="telefono-label">8888-8888</span></td>
                      </tr>
                      
                    </tbody>
                  </table>
          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Cancelar</button> 
          <button type="button" class="btn btn-warning pull-left">Guardar</button>
          <button type="button" class="btn btn-primary ">Enviar <i class="fa fa-arrow-circle-right fa-lg"></i></button>
          
        </div>
  		</div>
		</div>
	</body>
</html>