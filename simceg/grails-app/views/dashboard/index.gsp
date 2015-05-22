<%@ page import="org.una.simceg.Mensaje" %>
<%@ page import="org.una.simceg.Evento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<title>P&aacute;gina Principal</title>
	</head>
	<body>
		<div id="">
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-envelope fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">${mensajesCount}</div>
                                    <div>Nuevos Mensajes!</div>
                                </div>
                            </div>
                        </div>
                        <g:link controller="mensaje" action="index">
                            <div class="panel-footer">
                                <span class="pull-left">Ver Mensajes</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </g:link>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-calendar fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">${eventosCount}</div>
                                    <div>Nuevos Eventos!</div>
                                </div>
                            </div>
                        </div>
                        <g:link action="calendario">
                            <div class="panel-footer">
                                <span class="pull-left">Ver Eventos</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </g:link>
                    </div>
                </div>
            </div>
            <!-- /.row -->
            <div class="row text-left">
                <div class="col-lg-12">
                        
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-clock-o fa-fw"></i> Ultimas Notificaciones
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <ul class="timeline">
                                <g:each var="notificacion" in="${notificaciones}">
                                    <g:if test="${notificacion instanceof Evento}">
                                        <li class="timeline-inverted">
                                            <div class="timeline-badge success"><i class="fa fa-calendar"></i>
                                            </div>
                                            <div class="timeline-panel">
                                                <g:link class="timeline-link" action="show" controller="evento" id="${notificacion.id}">
                                                    <div class="timeline-heading">
                                                        <h4 class="timeline-title">${notificacion.titulo}</h4>
                                                        <p><small class="text-muted"><i class="fa fa-clock-o"></i> Fecha y hora de inicio: <g:formatDate date="${notificacion?.tiempoInicio}" format="dd - MM - yyyy hh:mm a"/></small></p>
                                                        <p><small class="text-muted"><i class="fa fa-clock-o"></i> Fecha y hora de cierre: <g:formatDate date="${notificacion?.tiempoFinal}" format="dd - MM - yyyy hh:mm a"/></small></p>
                                                    </div>
                                                    <div class="timeline-body">
                                                        <p>${notificacion.descripcion}</p>
                                                    </div>
                                                </g:link>
                                            </div>
                                        </li>
                                    </g:if>
                                    <g:if test="${notificacion instanceof Mensaje}">
                                        <li>
                                            <div class="timeline-badge info"><i class="fa fa-envelope"></i>
                                            </div>
                                            <div class="timeline-panel">
                                                <g:link class="timeline-link" action="index" controller="mensaje">
                                                <div class="timeline-heading">
                                                    <h4 class="timeline-title">de ${notificacion.emisor}</h4>
                                                    <p><small class="text-muted"><i class="fa fa-clock-o"></i> Fecha de envio: <g:formatDate date="${notificacion?.fechaEnvio}" format="dd - MM - yyyy hh:mm a"/></small></p>
                                                </div>
                                                <div class="timeline-body">
                                                    <h5>Mensaje:</h5>
                                                    <p>${notificacion.mensaje}</p>
                                                    <hr>
                                                </div>
                                                </g:link>
                                            </div>
                                        </li>
                                    </g:if>
                                </g:each>
                            </ul>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->

            </div>
            <!-- /.row -->
        </div>
	</body>
</html>