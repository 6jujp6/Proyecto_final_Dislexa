//function setearGrillaAlumnos(){
//		$.jgrid.gridUnload("#grillaAlumnos");
//		$("#grillaAlumnos").jqGrid({
//			datatype : 'json',
//			url : 'institucion/buscarAlumnos',
//			postData : {
//				"nombre" : $("#nombre").val(),
//				"apellido" : $("#apellido").val(),
//				"dni" : $("#dni").val(),
//				"idCurso" : $("#cboCurso").val()
//			},
//			colNames : [ 
//			            'Nombre',
//			           	'Apellido',
//			           	'Documento',
//			           	'Curso'
//			],
//			colModel : [
//			{
//				name : 'nombre',
//				key : true,
//				width : 200
//			}, {
//				name : 'apellido',
//				width : 200
//			}, {
//				name : 'dni',
//				width : 200
//			}
//			, {
//				name : 'curso.nombre',
//				width : 200
//			}
//			],
//			height : '250' ,
//			width: null ,
//			shrinkToFit: false ,
//			loadui : 'block' ,
//			loadonce: true ,
//			rowNum: 20,
//			scroll: 1, // PARA HABILITAR EL VIRTUAL SCROLL
//			gridview : true ,
//			autoencode : true ,
//			sortable : true 
//			});
//		}