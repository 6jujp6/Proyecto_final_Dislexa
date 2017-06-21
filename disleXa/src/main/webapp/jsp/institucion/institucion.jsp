<div class="container">
	<div class="row">
		<div class="col-md-3">
			<div class="panel panel-default">
	  			<div class="panel-body">
	  				<ul class="nav nav-pills nav-stacked">
					  <li class="active"><a href="#">Bienvenido + Nombre Institucion</a></li>
					  <li><a href="javascript:void(0);" onclick="cargarActionContenido('institucion/misAlumnos', 'divContenidoInstitucion');"><span class="glyphicon glyphicon-user"></span> Mis alumnos</a></li>
					  <li><a href="javascript:void(0);" onclick="cargarActionContenido('institucion/datosPersonales', 'divContenidoInstitucion');"><span class="glyphicon glyphicon-cog"></span> Datos de la institucion	</a></li>
					  <li><a href="javascript:void(0);" onclick="cargarActionContenido('institucion/historico', 'divContenidoInstitucion');"><span class="glyphicon glyphicon-book"></span> Historico</a></li>
					</ul>
	  			</div>
			</div>			
	   	</div>
	   <div class="col-md-9">
			<div class="panel panel-default">
				<div class="container">
					<div class="panel-body">
						<div id="divContenidoInstitucion"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>