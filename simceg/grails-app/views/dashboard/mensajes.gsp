<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">	
		<title>Mensajes</title>
	</head>
	<body>
		<div class="col-md-1"></div>
<div class="mensajes col-md-10">

	<div class="row">
		<h2 style="font-size:20px">Mensajes</h2>
	</div>
	<div class="row">
		<div class="col-md-4">
			<a href="nuevoMensaje.gsp"><span class="glyphicon glyphicon-envelope"></span> Nuevo</a>
		</div>
	</div>
	<div class="row">
		<div class="col-md-4">
			<div class="bs-example">
			    <div class="list-group">
			      <a href="#" class="list-group-item active">
			        <h4 class="list-group-item-heading">Vacaciones</h4>
			        <p class="list-group-item-text">Se les recuerda que la salida a vacaciones de este trimestre se adelanto por motivos varios.</p>
			      </a>
			      <a href="#" class="list-group-item">
			        <h4 class="list-group-item-heading">Notas</h4>
			        <p class="list-group-item-text">La entrega de nota ser&aacute; la pr&oacute;xima semana el d&iacute;a Jueves a las 7:00 pm en las instalaciones del Centro Educativo.</p>
			      </a>
			      <a href="#" class="list-group-item">
			        <h4 class="list-group-item-heading">Conducta</h4>
			        <p class="list-group-item-text">El d&iacute;a de hoy su hijo golpe&oacute; a otro estudiante durante el recreo de la ma&ntilde;ana, se le ruega por favor llamar la atenci&oacute;n.</p>
			      </a>
			    </div>
		    </div>
		</div>
		<div class="col-md-8">
			<div class="panel panel-default">
			  <div class="panel-heading">
			    <h3 class="panel-title">Vacaciones</h3>
			  </div>
			  <div class="panel-body">
			  	<p style="text-align:left;font-weight:bold;font-size:smaller">De: Directora Lina Cordero Arias</p>
			  	<p style="text-align:left;font-weight:bold;font-size:smaller">Para: Padres de Familia</p></br>
			  	<p>
			  		Se les recuerda que la salida a vacaciones de este trimestre se adelanto por motivos varios. La nueva fecha de salida a vacaciones ser&aacute; el pr&oacute;ximo lunes 02/04/2014, quedando asi la fiesta de la alegr&iacute;a para el viernes. 
			  	</p>
			    <p>
			  		Para este periodo no se le dejar&aacute;n tareas a los estudiantes y los examenes ser&aacute;n posterior al regreso de las mismas. Les deseamos que pasen un excelente tiempo en familia y que Dios los gu&iacute;e en sus actividades.
			  	</p></br>
			  	<button type="button" class="btn btn-primary " onclick="location.href = 'nuevoMensaje.gsp';">Responder <i class="fa fa-arrow-circle-right fa-lg"></i></button>
			  </div>
			</div>
		</div>
	</div>
	<div class="row">
		<ul class="pagination">
		  <li><a href="#">&laquo;</a></li>
		  <li><a href="#">1</a></li>
		  <li><a href="#">2</a></li>
		  <li><a href="#">3</a></li>
		  <li><a href="#">4</a></li>
		  <li><a href="#">5</a></li>
		  <li><a href="#">&raquo;</a></li>
		</ul>
	</div>
</div>
<div class="col-md-1"></div>
	</body>
</html>
