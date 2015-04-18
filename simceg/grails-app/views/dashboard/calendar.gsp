<!DOCTYPE html>
<html>
	<head>
		<title>Calendario</title>
		<meta name="layout" content="dashboard">
	</head>
	<body>
		<div class="row">
			<div class="col-md-12">
				<h1 class="main-title text-left">Calendario</h1>
				<hr>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 notas">
				<script>
					var eventData = "${eventos}";
				</script>
				<div id='calendar'>	
					
				</div>
			</div>
		</div>
	</body>
</html>