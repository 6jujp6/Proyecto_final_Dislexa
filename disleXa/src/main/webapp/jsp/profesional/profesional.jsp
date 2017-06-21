<div class="container">
	<div class="row">
		<div class="col-md-3">
			<div class="panel panel-default">
	  			<div class="panel-body">
	  				<ul class="nav nav-pills nav-stacked">
					  <li class="active"><a href="#">Bienvenido + Nombre Profesional</a></li>
					  <li><a href="javascript:void(0);" onclick="cargarActionContenido('profesional/pacientes', 'divContenidoProfesional');"><span class="glyphicon glyphicon-user"></span> Pacientes</a></li>
					  <li><a href="javascript:void(0);" onclick="cargarActionContenido('profesional/datosPersonales', 'divContenidoProfesional');"><span class="glyphicon glyphicon-cog"></span> Datos personales</a></li>
					  <li><a href="javascript:void(0);" onclick="cargarActionContenido('profesional/mensajes', 'divContenidoProfesional');"><span class="glyphicon glyphicon-envelope"></span> Mensaje</a></li>
					</ul>
	  			</div>
			</div>			
	   	</div>
	   <div class="col-md-9">
			<div class="panel panel-default">
				<div class="container">
					<div class="panel-body">
						<div id="divContenidoProfesional"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>