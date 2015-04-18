<%@ page import="org.una.simceg.Mensaje" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">	
		<title>Mensajes</title>
	</head>
	<body>
		<script type="text/javascript">
			var mensajes = '${mensajes}';
			var mensajesParsed = JSON.parse(mensajes.replace(/&quot;/g,'"'));
			var currentUserId = ${currentUser.id};
		</script>
		<script id="templateChat" type="x-tmpl-mustache">
        	{{#.}}
			<li class="media chat hvr-sweep-to-right" data-id="{{id}}">
                <div class="media-body">
                    <div class="media">
                            <img
                            	alt="User Pic" 
                            	src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=100" 
                            	height="40" 
                            	class="pull-left img-circle">
                        <div class="media-body">
                            <h5>{{nombre}}</h5>
                            <span>{{rol}}</span>
                        </div>
                    </div>
                </div>
            </li>
            {{/.}}
		</script>
		<script id="templateMensaje" type="x-tmpl-mustache">
        	{{#.}}
            <li class="media mensaje">
                <div class="media-body row">
                    <div class="media col-lg-7 col-md-7 {{#side}}col-lg-offset-5 col-md-offset-5  text-right{{/side}}">
                    	<div class="media-body  alert {{color}}">
                    		<span>{{mensaje}}</span>
                            <br />
                            <small class="text-muted">
                            	<span>{{nombre}}</span> | 23rd June at 5:00pm</small>
                        </div>
                    </div>
                </div>
            </li>
            {{/.}}
        </script>
		<g:link class="hidden" elementId="getChats" controller="mensaje" action="getChats" />
		<div id="mensajes-on" class="mensajes text-left">
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
	                <div class="panel panel-primary chats-holder">
	                    <div class="panel-heading">
	                        Chats
	                    </div>
	                    <div class="panel-body">
	                        <ul class="media-list chat-list">
	                        	<li class="spinner text-center">
	                        		<g:img dir="images" file="spinner.gif" width="30" height="30"/>
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
	                        <ul class="media-list mensajes-list">
	                        	<li class="spinner text-center">
	                        		<g:img dir="images" file="spinner.gif" width="30" height="30"/>
	                        	</li>
	                        </ul>
	                    </div>
	                    <div class="panel-footer row hidden">
	                        <div class="col-lg-12">
	                            <textarea type="text" class="form-control" rows="2" placeholder="Enter Message" style="resize: none;"></textarea>
	                        </div>
	                        <div class="text-right col-lg-12">
	                                <button class="btn btn-primary" type="button">SEND</button>
	                        </div>
	                    </div>
	                </div>
	            </div>
            </div>
		</div>
	</body>
</html>
