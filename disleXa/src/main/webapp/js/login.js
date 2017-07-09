$('#logis').click(function(){
	  $('.login').fadeToggle('slow');
	});

	$(document).mouseup(function (e)
	{
	    var container = $(".login");

	    if (!container.is(e.target) // if the target of the click isn't the container...
	        && container.has(e.target).length === 0) // ... nor a descendant of the container
	    {
	        container.hide();
	    }
	});

	
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
			cargarHTMLContenido(data);
		},
		error: function (xhr, ajaxOptions, thrownError) {
			alert("error falta mostrar usuario incorrecto");
		}
	});
}