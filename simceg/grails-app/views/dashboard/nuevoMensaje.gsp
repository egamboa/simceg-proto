<!DOCTYPE html>
<html>
	<head>
		<title>Mensajes</title>
		<meta name="layout" content="dashboard">
	</head>
	<body>
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-left">Nuevo Mensaje</h1>
				<hr>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 notas">
        <h4 class="modal-title">Nuevo Mensaje</h4></br></br>
        <div>
          <form role="form" class="form-horizontal">
              <div class="form-group">
                <label class="col-sm-2" for="inputTo">Para</label>
                <div class="col-sm-10"><input type="email" class="form-control" id="inputTo" placeholder="Receptor"></div>
              </div>
              <div class="form-group">
                <label class="col-sm-2" for="inputSubject">Asunto</label>
                <div class="col-sm-10"><input type="text" class="form-control" id="inputSubject" placeholder="Asunto"></div>
              </div>
              <div class="form-group">
                <label class="col-sm-12" for="inputBody">Mensaje</label>
                <div class="col-sm-12"><textarea class="form-control" id="inputBody" rows="18"></textarea></div>
              </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Cancelar</button> 
          <button type="button" class="btn btn-warning pull-left">Guardar</button>
          <button type="button" class="btn btn-primary ">Enviar <i class="fa fa-arrow-circle-right fa-lg"></i></button>
          
        </div>
  		</div>
		</div>
	</body>
</html>