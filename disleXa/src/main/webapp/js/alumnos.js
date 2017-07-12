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
			           	'Estado Eval.'
			],
			colModel : [
			{	name : 'idAlumno',
				key : true,
				hidden : true
			}, {
				name : 'nombre',
				key : true,
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
				width :150
			}
			, {
				name : 'estadoEvaluacion',
				width :150
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
