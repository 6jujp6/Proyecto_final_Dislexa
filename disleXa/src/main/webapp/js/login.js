	
function login(){	
	$.ajax({
		url : 'index/login',
		type : "GET",
		data : {
			"email" :  $('#email').val(),
			"pass":  $('#pass').val()
		},		
		contentType : false,
		success: function (data) {
			cargarHTMLContenido(data, 'body');
		},
		error: function (xhr, ajaxOptions, thrownError) {
			alert("error falta mostrar usuario incorrecto");
		}
	});
}