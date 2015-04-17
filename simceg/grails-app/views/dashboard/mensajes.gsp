<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">	
		<title>Mensajes</title>
	</head>
	<body>
		<div class="mensajes text-left">
			<div class="nav nav-inner" role="navigation">
				<ul class="nav nav-pills" role="tablist">
					<li><g:link class="create" controller="mensaje" action="create">Nuevo Mensaje</g:link></li>
				</ul>
			</div>
			<div class="row">
				<div class="col-md-12">
					<h1 class="main-title text-left">Mensajes</h1>
				</div>
				<div class="col-md-4">
	                <div class="panel panel-primary">
	                    <div class="panel-heading">
	                        Chats
	                    </div>
	                    <div class="panel-body">
	                        <ul class="media-list">
	                            <li class="media">
	                                <div class="media-body">
	                                    <div class="media">
	                                        <a class="pull-left" href="#">
	                                            <img alt="User Pic" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=100" height="40" class="img-circle">
	                                        </a>
	                                        <div class="media-body">
	                                            <h5>Alex Deo | Hijo: Pedro Deo Torres</h5>
	                                        </div>
	                                    </div>
	                                </div>
	                            </li>
	                            <li class="media">
	                                <div class="media-body">
	                                    <div class="media">
	                                        <a class="pull-left" href="#">
	                                            <img alt="User Pic" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=100" height="40" class="img-circle">
	                                        </a>
	                                        <div class="media-body">
	                                            <h5>Juan Deo | Hijo: Pedro Deo Torres</h5>
	                                        </div>
	                                    </div>
	                                </div>
	                            </li>
	                        </ul>
	                    </div>
	                </div>
	            </div>

				<div class="col-md-8">
	                <div class="panel panel-info">
	                    <div class="panel-heading">
	                        Chat Activo
	                    </div>
	                    <div class="panel-body">
	                        <ul class="media-list">
	                            <li class="media">
	                                <div class="media-body row">
	                                    <div class="media col-lg-9">
	                                    	<div class="media-body alert alert-info">
	                                            Donec sit amet ligula enim. Duis vel condimentum massa. Donec sit amet ligula enim. Duis vel condimentum massa.Donec sit amet ligula enim. Duis vel condimentum massa. Donec sit amet ligula enim. Duis vel condimentum massa.
	                                            <br />
	                                            <small class="text-muted">Alex Deo | 23rd June at 5:00pm</small>
	                                        </div>
	                                    </div>
	                                </div>
	                            </li>
	                            <li class="media">
	                                <div class="media-body row">
	                                    <div class="media col-lg-8 col-lg-offset-4">
	                                        <div class="media-body alert alert-success">
	                                            Donec sit amet ligula enim. Duis vel condimentum massa. Donec sit amet ligula enim. Duis vel condimentum massa.Donec sit amet ligula enim. Duis vel condimentum massa. Donec sit amet ligula enim. Duis vel condimentum massa.
	                                            <br />
	                                           	<div class="col-lg-12 text-right">
	                                           		<small class="text-muted">Yo | 23rd June at 5:00pm</small>
	                                           	</div>
	                                        </div>
	                                    </div>
	                                </div>
	                            </li>
	                        </ul>
	                    </div>
	                    <div class="panel-footer">
	                        <div class="input-group">
	                            <textarea type="text" class="form-control" rows="2" placeholder="Enter Message" style="resize: none;"></textarea>
	                            <span class="input-group-btn">
	                                <button class="btn btn-primary" type="button">SEND</button>
	                            </span>
	                        </div>
	                    </div>
	                </div>
	            </div>
            </div>
		</div>
	</body>
</html>
