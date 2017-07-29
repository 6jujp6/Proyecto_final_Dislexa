function login(){	
	
	
	if(validarInputs()){	
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
				toastr.options = {
						  "closeButton": false,
						  "debug": false,
						  "newestOnTop": true,
						  "progressBar": false,
						  "positionClass": "toast-bottom-right",
						  "preventDuplicates": false,
						  "onclick": null,
						  "showDuration": "300",
						  "hideDuration": "1000",
						  "timeOut": "1000",
						  "extendedTimeOut": "1000",
						  "showEasing": "swing",
						  "hideEasing": "linear",
						  "showMethod": "fadeIn",
						  "hideMethod": "fadeOut"
						}
				toastr["error"]("Usuario o password incorrecto")
				
			}
		});
	}
}

function validarInputs(){
	if($('#email').val()=='')
		jQuery('#email').addClass('invalid');
	if($('#pass').val()=='')
		jQuery('#pass').addClass('invalid');	
	
	if(!$('#email').val()=='' && !$('#pass').val()==''){
		if (!jQuery('#email').hasClass('invalid') && !jQuery('#pass').hasClass('invalid')) 			
			return true;
	}		
	return false;
}

$(document).ready(function() {	
	$("span.help-block").hide();
});
