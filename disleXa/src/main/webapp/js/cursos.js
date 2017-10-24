function setearGrillaCursos(){
	$.jgrid.gridUnload("#grillaCursos");
	$("#grillaCursos").jqGrid({
		datatype : 'json',
		url : 'institucion/listarCursos',
		colNames : [ 
		            'Id',
		            'Nombre',
		           	'Turno',
		           	'Estado Eval.'
		],
		colModel : [
		{	name : 'idCurso',
			key : true,
			hidden : true
		}, {
			name : 'nombre',
			key : true,
			width : 150
		}, {
			name : 'turno',
			width : 150
		}, {
			name : 'estado',
			width :150
		}
		],
		height : '120' ,
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

$(document).ready(function() {	
	setearGrillaCursos();
});
