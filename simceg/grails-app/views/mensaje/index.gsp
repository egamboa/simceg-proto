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
			var mensajesParsed = JSON.parse(
									mensajes
									.replace(/&quot;/g,'"')
									.replace(/\\r\\n/g, "<br/>")
									);
			var currentChat = parseInt('${activeChat}');

			var currentUserId = ${currentUser.id};
		</script>
		<script id="templateChat" type="x-tmpl-mustache">
        	{{#.}}
			<li class="media chat hvr-sweep-to-right" data-id="{{id}}">
                <div class="media-body">
                    <div class="media">
                            <img
                            	alt="User Pic" 
                            	src="/simceg/assets/Icon-user.png" 
                            	height="40" 
                            	class="pull-left img-circle">
                        <div class="media-body">
                            <h5>{{nombre}}</h5>
                            <span>{{rol}}</span>
                        </div>
                        <div class="notify-holder"></div>
                    </div>
                </div>
            </li>
            {{/.}}
		</script>
		<script id="templateNotificacion" type="x-tmpl-mustache">
			<span class="notification pink">{{.}}</span>
		</script>
		<script id="templateMensaje" type="x-tmpl-mustache">
        	{{#.}}
            <li class="media mensaje">
                <div class="media-body row">
                    <div class="media col-lg-7 col-md-7 {{#side}}col-lg-offset-5 col-md-offset-5  text-right{{/side}}">
                    	<div class="media-body  alert {{color}}">
                    		<span>{{{mensaje}}}</span>
                            <br />
                            <small class="text-muted">
                            	<span>{{nombre}}</span> | {{fechaEnvio}}</small>
                        </div>
                    </div>
                </div>
            </li>
            {{/.}}
        </script>
        <script id="emptyChats" type="x-tmpl-mustache">
        	{{#.}}
            <li class="media">
                <div class="media-body row">
                    <div class="media col-lg-12 alert text-center">
                    	<div class="media-body">
                    		<span>{{mensaje}}</span>
                        </div>
                    </div>
                </div>
            </li>
            {{/.}}
        </script>
		<g:link class="hidden" elementId="getChats" controller="mensaje" action="getChats" />
		<g:link class="hidden" elementId="seenMessages" controller="mensaje" action="changeStatus" />
		<div id="mensajes-on" class="mensajes text-left">
			<div class="row">
				<div class="col-md-12">
					<h1 class="main-title text-left">Mensajes</h1>
				</div>
				<div class="col-md-4">
					<div class="row">
						<div class="col-lg-12 btn-group btn-group-xs">
							<h5><g:link class="create btn btn-primary" controller="mensaje" action="create">Nuevo Mensaje</g:link></h5>
						</div>
					</div>
	                <div class="panel panel-primary chats-holder">
	                    <div class="panel-heading">
	                        Mensajes
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
	                    <div class="panel-heading nombre-chat-activo">
	                        Mensaje Activo
	                    </div>
	                    <div class="panel-body">
	                        <ul class="media-list mensajes-list">
	                        	<li class="spinner text-center">
	                        		<g:img dir="images" file="spinner.gif" width="30" height="30"/>
	                        	</li>
	                        </ul>
	                    </div>
	                    <div class="panel-footer row hidden">
	                        <g:form id="send-message" url="[resource:mensajeInstance, action:'save']" >
								<fieldset class="form row">
									<div class="col-lg-12 text-left">
										<div class="row">
											<g:render template="form-chat"/>
											<div class="text-right col-lg-2">
												<g:submitButton name="create" class="save btn btn-primary" value="Enviar" />
											</div>
										</div>
									</div>
								</fieldset>
							</g:form>
	                    </div>
	                </div>
	            </div>
            </div>
		</div>
	</body>
</html>
