function registroInstitucion(){
	$.ajax({
		url : 'index/registroInstitucion',
		type : "GET",
		data : {
			"email" :  $('#emailReg').val(),
			"pass":  $('#passReg').val(),
			"nombre" :  $('#nombre').val(),
			"direccion" :  $('#direccion').val(),
			"telefono" :  $('#telefono').val()
		},		
		contentType : false,
		success: function (data) {
			cargarHTMLContenido(data, 'body');
		},
		error: function (xhr, ajaxOptions, thrownError) {
			alert("error falta mostrar error");
		}
	});
}