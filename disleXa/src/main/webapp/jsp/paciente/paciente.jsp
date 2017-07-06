<div class="container">
	<div class="row">
		<div class="col-md-3">
			<div class="panel panel-default">
	  			<div class="panel-body">
	  				<ul class="nav nav-pills nav-stacked">
					  <li class="active"><a href="#">Bienvenido + Nombre Paciente</a></li>
					  <li><a href="javascript:void(0);" onclick="cargarActionContenido('paciente/111libre', 'divContenidoPaciente');"><span class="glyphicon glyphicon-pencil"></span> Actividades</a></li>
					  <li><a href="javascript:void(0);" onclick="cargarActionContenido('paciente/datosPersonales', 'divContenidoPaciente');"><span class="glyphicon glyphicon-cog"></span> Datos personales</a></li>
					  <li><a href="javascript:void(0);" onclick="cargarActionContenido('paciente/mensaje', 'divContenidoPaciente');"><span class="glyphicon glyphicon-envelope"></span> Mensaje</a></li>
					</ul>
	  			</div>
			</div>			
	   	</div>
	   <div class="col-md-9">
			<div class="panel panel-default">
				<div class="container">
		  			<div class="panel-body">
						<div id="divContenidoPaciente"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>