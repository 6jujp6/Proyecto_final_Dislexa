<div class="row">
	<div class="col-md-8">
		<div class="panel panel-primary">
			<div class="panel-heading">Filtros</div>
	  		<div class="panel-body">
	   			<div class="row">
	   				<div class="col-md-6">
		   				<input type="text" class="form-control" placeholder="Nombre" id="nombre">
		   			</div>
		   			<div class="col-md-6">
		   				<input type="text" class="form-control" placeholder="Apellido">
   					</div>
	   			</div>
	   			<br>
	   			<div class="row">
		   			<div class="col-md-2">
		   				<div class="dropdown">
							<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">    Curso    
							<span class="caret"></span></button>
							<ul class="dropdown-menu">
							  <li><a href="#">HTML</a></li>
							  <li><a href="#">CSS</a></li>
							  <li><a href="#">JavaScript</a></li>
							</ul>
						</div>		
		   			</div>
		   			<div class="col-md-10">
		   				<input type="text" class="form-control" placeholder="Documento">		
		   			</div>		   							
  				</div>
  				<br>
  				<div class="row">
	   				<div class="col-md-6"></div>
	   				<div class="col-md-6">
	   					<button type="button" class="btn btn-primary pull-right" onclick="setearGrillaAlumnos();">Buscar</button>
	   				</div>
	   			</div>	   			
			</div>
		</div>
	</div>	
</div>
<div class="row">
	<div class="col-md-12">
		<table class="table" id="grillaAlumnos"></table>
	</div>
</div>

<script>
	function setearGrillaAlumnos(){
		$("#grillaAlumnos").jqGrid({
			datatype : 'json',
			url : 'institucion/buscarAlumnos',
			postData : {
				"nombre" : $("#nombre").val()
			},
			colNames : [ 
			            'Nombre',
			           	'Apellido',
			           	'Curso'
			],
			colModel : [
			{
				name : 'nombre',
				key : true,
				width : 200
			}, {
				name : 'apellido',
				width : 200
			}, {
				name : 'curso.nombre',
				width : 200
			}
			],
			height : '400' ,
			width: null ,
			shrinkToFit: false ,
			loadui : 'block' ,
			loadonce: true ,
			rowNum: 20,
			scroll: 1, // PARA HABILITAR EL VIRTUAL SCROLL
			gridview : true ,
			autoencode : true ,
			sortable : true 
			});
		}
</script>