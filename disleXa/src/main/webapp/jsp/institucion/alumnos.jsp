<%@taglib uri="/struts-tags" prefix="s" %>
<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary">
			<div class="panel-heading">Filtros</div>
	  		<div class="panel-body">
	   			<div class="row">
	   				<div class="col-md-6">
		   				<!-- <input type="text" class="form-control" placeholder="Nombre" id="nombre" name="nombre"/> -->
		   				<s:textfield type="text" class="form-control" name="nombre" placeholder="Nombre" id="nombre"/>
		   			</div>
		   			<div class="col-md-6">
		   				<!-- <input type="text" class="form-control" placeholder="Apellido" id="apellido" name="apellido"/>-->
		   				<s:textfield type="text" class="form-control" name="apellido" placeholder="Apellido" id="apellido"/>
   					</div>
	   			</div>
	   			<br>
	   			<div class="row">
		   			<div class="col-md-2">
		   				<div class="dropdown">
							<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" disabled>    Curso    
							<span class="caret"></span></button>
							<ul class="dropdown-menu">
							  <li><a href="#">HTML</a></li>
							  <li><a href="#">CSS</a></li>
							  <li><a href="#">JavaScript</a></li>
							</ul>
						</div>		
		   			</div>
		   			<div class="col-md-10">		   				
		   				<s:textfield type="text" class="form-control" name="dni" placeholder="Documento" id="dni"/>		   			</div>		   							
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
		<table class="table table-striped" id="grillaAlumnos"></table>
	</div>
</div>


<!-- JQUERY-UI 1.12.1 -->
<script type="text/javascript" src="/disleXa/js/jquery/jquery-ui/jquery-ui.min.js"></script>

<!-- JQGRID 5.1.0 -->
<script type="text/javascript" src="/disleXa/js/jquery/jqGrid/i18n/grid.locale-en.js"></script>
<script type="text/javascript" src="/disleXa/js/jquery/jqGrid/i18n/grid.locale-es.js"></script>
<script type="text/javascript" src="/disleXa/js/jquery/jqGrid/jquery.jqGrid.min.js"></script>
<script>

/* 	function filtrarBusqueda(){
		$('#formularioAlumnoConsulta').on('submit', function(e){
			
	}
	 */
	function setearGrillaAlumnos(){
		$("#grillaAlumnos").jqGrid({
			datatype : 'json',
			url : 'institucion/buscarAlumnos',
			postData : {
				"nombre" : $("#nombre").val(),
				"apellido" : $("#apellido").val(),
				"dni" : $("#dni").val()
			},
			colNames : [ 
			            'NOMBRE',
			           	'APELLIDO',
			           	'DOCUMENTO',
			           	'CURSO'
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
				name : 'dni',
				width : 200
			}
			, {
				name : 'curso.nombre',
				width : 200
			}
			],
			height : '250' ,
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