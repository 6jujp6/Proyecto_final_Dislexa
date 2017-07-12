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
			            'Nombre',
			           	'Apellido',
			           	'Documento',
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
				name : 'dni',
				width : 200
			}
			, {
				name : 'curso.nombre',
				width : 100
			}
			],
			height : 'auto' ,
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
