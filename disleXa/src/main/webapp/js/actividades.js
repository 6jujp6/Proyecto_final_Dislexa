function empezar(){
	$.ajax({
		url : 'paciente/guardarResultado',
		type : "GET",
		data : {
			"idEjecEval" :  $('#idEjecEval').val()
		},
		contentType : false,
		success: function (data) {
			cargarHTMLContenido(data,'divContenidoPaciente');
		},
		error: function (xhr, ajaxOptions, thrownError) {
			alert("error al cargar actividades");
		}
	});
}
	
function guardarResultado(){
	$.ajax({
		url : 'paciente/guardarResultado',
		type : "GET",
		data : {
			"idEjecEvalActiv" :  $('#idEjecEvalActiv').val(),
			"idEjecEval" :  $('#idEjecEval').val(),
			"resolucion" : $('#texto').val()
		},
		contentType : false,
		success: function (data) {
			cargarHTMLContenido(data,'divContenidoPaciente');
		},
		error: function (xhr, ajaxOptions, thrownError) {
			alert(xhr);
			alert(ajaxOptions);
			alert(thrownError);
		}
	});
}
	