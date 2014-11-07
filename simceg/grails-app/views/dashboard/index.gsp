<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="dashboard">
		<title>P&aacute;gina Principal</title>
	</head>
	<body>
		<div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12 text-left">
                    <h1 class="page-header">Hola, ${user.nombreCompleto()}.</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-envelope fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">50</div>
                                    <div>Nuevos Mensajes!</div>
                                </div>
                            </div>
                        </div>
                        <a href="mensajes.gsp">
                            <div class="panel-footer">
                                <span class="pull-left">Ver Mensajes</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-calendar fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">12</div>
                                    <div>Nuevos<br> Eventos!</div>
                                </div>
                            </div>
                        </div>
                        <a href="eventos.gsp">
                            <div class="panel-footer">
                                <span class="pull-left">Ver Eventos</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-check-circle fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">2</div>
                                    <div>Nuevas<br> Calificaciones!</div>
                                </div>
                            </div>
                        </div>
                        <a href="notas.gsp">
                            <div class="panel-footer">
                                <span class="pull-left">Ver Calificaciones</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-exclamation-circle fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">64</div>
                                    <div>Nuevas Notificaciones!</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">Ver Notificaciones</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                        
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-clock-o fa-fw"></i> Ultimas Notificaciones
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <ul class="timeline">
                                <li>
                                    <div class="timeline-badge warning"><i class="fa fa-check-circle"></i>
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Exposici&oacute;n Insectos</h4>
                                            <p><small class="text-muted"><i class="fa fa-clock-o"></i> Entrega: 15/05/2014</small>
                                            </p>
                                        </div>
                                        <div class="timeline-body">
                                            <p>La exposici&oacute;n debe venir acompa&ntilde;ada de una investigaci&oacute;n formal en formato PDF con la siguiente estructura: Introducci&oacute;n, Desarrollo, Conclusi&oacute;n y Bibliograf&iacute;a. Tambi&eacute;n se debe preparar una presentaci&oacute;n en Power Point o similar.</p></br>
                                            <p><small class="text-muted"><i class="fa fa-check-circle-o"></i> Valor: 5% Nota Trimestral</small>
                                        </div> 
                                    </div>
                                </li>
                                <li class="timeline-inverted">
                                    <div class="timeline-badge success"><i class="fa fa-calendar"></i>
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Domingo Familiar</h4>
                                            <p><small class="text-muted"><i class="fa fa-clock-o"></i> Fecha: 20/08/2014</small>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Ven y disfrut&aacute; en familia de actividades recreativas y contribuye con la causa de la remodelaci&oacute;n de la cancha multiusos de la escuela.</p>
                                            <p>Tendremos campeonatos de baloncesto y fut5. Presentaci&oacute;n de la banda y equipo de porrismo. Venta de comidas y un bingo con excelentes premios.</p>
                                            <p>Te Esperamos!</p>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="timeline-badge info"><i class="fa fa-envelope"></i>
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Falta Entrega Tarea</h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Se le recuerda al encargado que el alumno debe presentar las tareas en la fecha respectiva, la tarea de Estudios Sociales ten&iacute;a fecha de entrega para el d&iacute;a 03/03/2014 y el alumno no present&oacute; la misma.</p>
                                            <hr>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-primary btn-sm dropdown-toggle" data-toggle="dropdown">
                                                    <i class="fa fa-gear"></i> Acciones <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li><a href="#">Responder</a>
                                                    </li>
                                                    <li><a href="#">Eliminar</a>
                                                    </li>
                                                    <li><a href="#">Guardar</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li>
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