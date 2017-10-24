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
					if(rowObject.estadoEvaluacion=='PENDIENTE DE DIAGNOSTICO')
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
	//var span = '<button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#myModal">Ver';
	var span = '<button type="button" class="btn btn-info btn-sm" onclick="verDetalleEvaluacion(' + id	+ ')" >Ver';
	span = span + '</button>';
	return span;
}

function verDetalleEvaluacion(id){
	//obtener los resultados en un una lista y mostrar el modal
//	var resoluciones = '';
//	$.ajax({
//		url : 'paciente/obtenerResultados',
//		type : "GET",
//		data : {
//			"idAlumno" :  id
//		},		
//		contentType : false,
//		success: function (data) {
//			$.each(data, function(i,item){
//				resoluciones = resoluciones + '<div id = ' + i + 'class="panel panel-default"> <div class="panel-body">' + item.resolucion + ' </div></div>';
//			});
//			
//			//<p>hola</p>
//			document.getElementById('actividadesResueltas').innerHTML=resoluciones;
//			$("#myModal").modal("show");
//		},
//		
//		error: function (xhr, ajaxOptions, thrownError) {
//			alert("error");				
//		}
//	});
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
		           	'Resolucion'  
		],
		colModel : [
		{	name : 'idEjecucion_evaluacion_actividad',
			key : true,
			hidden : true
		}, {
			name : 'actividad.descripcion',
			width :150
		},{
			name : 'actividad.objetivo',
			width :150
		}, {
			name : 'resolucion',
			width :150
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

$(document).ready(function() {
	cargarComboCurso();
});
