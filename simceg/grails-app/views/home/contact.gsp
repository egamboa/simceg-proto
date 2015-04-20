<!DOCTYPE html>
<html>
	<head>
		<title>Contacto</title>
		<meta name="layout" content="page-full">
        <asset:javascript src="validator.js"/>
	</head>
	<body>	
		<!-- Content Row -->
        <div class="row text-left">
            <div class="col-lg-12">
                <h1 class="page-header">CONTACTO
                    <small>Cont&aacute;ctenos</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Inicio</a>
                    </li>
                    <li class="active">Contacto</li>
                </ol>
            </div>
            <!-- Map Column -->
            <div class="col-md-8">
                <!-- Embedded Google Map -->
                <iframe width="100%" height="400px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?hl=en&ie=UTF8&ll=9.973584,-84.120377&spn=56.506174,79.013672&t=m&z=18&output=embed"></iframe>
            </div>
            <!-- Contact Details Column -->
            <div class="col-md-4">
                <h3>Informaci&oacute;n de Contacto</h3>
                <p>
                    Estamos ubicados en Los Lagos #2 de Heredia, de la Iglesia Fuente de Luz 200 metros nor-oeste, 25 metros oeste, Portón negro, final de la calle mano derecha.</br></br>
                </p>
                <p><i class="fa fa-phone"></i> 
                    <abbr title="Tel&eacute;fono">Tel&eacute;fonos:</abbr></br> 2263-5839</br>2260-6428</br>2262-6287</br>8868-3387</p></br>
                <p><i class="fa fa-envelope-o"></i>
                    <abbr title="Email">Correo Electr&oacute;nico:</abbr> </br><a href="mailto:linitacordero@hotmail.com">linitacordero@hotmail.com</a></br><a href="mailto:rutsanchezcampos@gmail.com">rutsanchezcampos@gmail.com</a>
                </p></br>
                <p><i class="fa fa-clock-o"></i> 
                    <abbr title="Horario">Horario:</abbr> </br>Lunes - Jueves: 8:00 AM a 4:00 PM</br>Viernes: 8:00 AM a 12:00 MD</p></br>
                <ul class="list-unstyled list-inline list-social-icons">
                    <li>
                        <a href="#"><i class="fa fa-facebook-square fa-2x"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-linkedin-square fa-2x"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-twitter-square fa-2x"></i></a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-google-plus-square fa-2x"></i></a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- /.row -->

        <!-- Contact Form -->
        <!-- In order to set the email address and subject line for the contact form go to the bin/contact_me.php file. -->
        <div class="row text-left">
            <div class="col-md-8">
                <h3>Formulario de Contacto</h3>
                <form data-toggle="validator" role="form" id="formContacto">
                    <div class="form-group">
                        <label for="inputName" class="control-label">Nombre Completo</label>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            <input type="text" class="form-control" id="inputName" placeholder="Mahatma Gandhi" required>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputTel" class="control-label">N&uacute;mero Tel&eacute;fono</label>
                        <div class="input-group">
                          <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                          <input type="text" pattern="^[0-9]{8}$" maxlength="8" class="form-control" id="inputTel" placeholder="12345678" data-error="Por Favor ingrese un n&uacute;mero v&aacute;lido" required>
                        </div>
                        <span class="help-block with-errors">Escriba solo 8 digitos del n&uacute;mero de tel&eacute;fono</span>
                    </div>
                    <div class="form-group">
                        <label for="inputEmail" class="control-label">Correo Electr&oacute;nico</label>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                            <input type="email" class="form-control" id="inputEmail" placeholder="ejemplo@ejemplo.com" data-error="Por Favor ingrese un correo electr&oacute;nico v&aacute;lido" required>
                        </div>
                        <div class="help-block with-errors"></div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label for="inputMensaje" class="control-label">Mensaje</label>
                            <textarea rows="10" cols="100" class="form-control" id="inputMensaje" data-error="Debe ingresar un mensaje" required maxlength="999" style="resize:none"></textarea>
                            <div class="help-block with-errors"></div>
                        </div>
                    </div>
                    <div id="success"></div>
                    <!-- For success/fail messages -->
<<<<<<< HEAD
                    <div class="text-center">
                    	<button type="submit" id="enviar" class="btn btn-primary">Enviar</button>
=======
                    <div class="text-right">
                    	<button type="submit" class="btn btn-primary">Enviar</button>
>>>>>>> e4e9198f872679d529d0d4142bb7252193b34489
                    </div>
                </form>
            </div>
        </div>
        <!-- /.row -->
	</body>
</html>