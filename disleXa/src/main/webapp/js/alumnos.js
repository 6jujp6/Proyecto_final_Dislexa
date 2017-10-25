function setearGrillaAlumnos(){
		$.jgrid.gridUnload("#grillaAlumnos");
		$("#grillaAlumnos").jqGrid({
			datatype : 'json',
			url : 'institucion/buscarAlumnos',
			postData : {
				"nombre" : $("#nombre").val(),
				"apellido" : $("#apellido").val(),
				"dni" : $("#dni").val(),
				"idCurso" : $("#cboCurso").val()
			},
			colNames : [ 
			            'Id',
			            'Nombre',
			           	'Apellido',
			           	'Documento',
			           	'Curso',
			           	'Estado Eval.',
			           	'Resultado' // botón detalle
			],
			colModel : [
			{	name : 'idAlumno',
				key : true,
				hidden : true
			}, {
				name : 'nombre',
				width : 150
			}, {
				name : 'apellido',
				width : 150
			}, {
				name : 'dni',
				width : 150
			}
			, {
				name : 'curso',
				width :70
			}
			, {
				name : 'estadoEvaluacion',
				width :150
			}
			,{
				formatter:function (cellvalue, options, rowObject) {
					if(rowObject.estadoEvaluacion=='PENDIENTE DE DIAGNÓSTICO')
						return botonDetalleEvaluacion(options.rowId);
					else
						return '';	
				}
			}
			],
			height : '350' ,
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
function botonDetalleEvaluacion(id) {	
	var span = '<button type="button" class="btn btn-info btn-sm" onclick="verDetalleEvaluacion(' + id	+ ')" >Ver';
	span = span + '</button>';
	return span;
}

function selectEvaluacionProfesional(id){
	var span = '<select class="form-control" id="eval' + id	+ '"><option>BIEN</option><option>CON ERRORES</option></select>';
	//span = span + '</button>';
	return span;	
}

function verDetalleEvaluacion(id){
	$.jgrid.gridUnload("#grillaResultados");
	$("#grillaResultados").jqGrid({
		datatype : 'json',
		url : 'paciente/obtenerResultados',
		postData : {
			"idAlumno" :  id
		},	
		colNames : [ 
		            'Id',		  
		            'Actividad',
		            'Objetivo',
		            'Fecha',
		           	'Resol. del alumno',
		           	'Eval. Profesional'
		],
		colModel : [
		{	name : 'idEjecucionEvaluacionActividad',
			key : true,
			hidden : true
		}, {
			name : 'actividad.descripcion',
			width :150
		},{
			name : 'actividad.objetivo',
			width :150
		}, {
			name : 'fecha',
			formatter: 'date',
			formatoptions: { srcformat: 'ISO8601Long', newformat: 'd/m/Y'},
			width :150
		}, {
			name : 'resolucion',
			width :150
		},{
			formatter:function (cellvalue, options, rowObject) {
				return selectEvaluacionProfesional(options.rowId);
			}
		}
		],
		height : '350' ,
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
	$("#myModal").modal("show");
}
function cargarComboCurso() {
	$.ajax({
		type : "POST",
		url : "institucion/listarCursos",
		dataType : "json",
	}).done(
		function(data, textStatus, jqXHR) {			
			var datos = data;
			$(datos).each(
					function() {
						var option = $(document.createElement('option'));
						option.text(this.nombre);
						option.val(this.idCurso);
						$("#cboCurso").append(option);
					});
		}
	).fail(
		function(jqXHR, responseText, errorThrow) {
		}
	);
	$("#cboCurso").prepend("<option value=''></option>").val('');
}

function generarReporte(){
	//recorrer grilla
	var evaluacionActividades = "";
	var allRowsInGrid = $('#grillaResultados').jqGrid('getRowData');
	  for (i = 0; i < allRowsInGrid.length; i++) {		  
		  var id = allRowsInGrid[i].idEjecucionEvaluacionActividad;
		  var idSelect = "eval" + id;
		  evaluacionActividades = evaluacionActividades + id + "," + $('#'+ idSelect +'').val() + ";";
	  }
	$.ajax({
		type : "POST",
		url : "paciente/generarReporte",
		data : {
			"evaluacionActividades" : evaluacionActividades
		},	
	}).done(			
		function(data, textStatus, jqXHR) {	
			$("#myModal").modal("hide");
			cargarHTMLContenido(data, 'divModalReporte');
		}
	).fail(			
		function(jqXHR, responseText, errorThrow) {
			alert(errorThrow);
		}
	);
}


$(document).ready(function() {
	cargarComboCurso();
});
