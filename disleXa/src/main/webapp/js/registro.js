function registroInstitucion(){
	if(validarInputsReg()){
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
}

function validarInputsReg(){
	if($('#nombre').val()=='')
		jQuery('#nombre').addClass('invalid');
	if($('#emailReg').val()=='')
		jQuery('#emailReg').addClass('invalid');
	if($('#passReg').val()=='')
		jQuery('#passReg').addClass('invalid');
	if($('#direccion').val()=='')
		jQuery('#direccion').addClass('invalid');
	if($('#telefono').val()=='')
		jQuery('#telefono').addClass('invalid');
	
	if(!$('#emailReg').val()=='' && !$('#passReg').val()=='' && !$('#direccion').val()=='' && !$('#telefono').val()=='' && !$('#nombre').val()==''){
		if (!jQuery('#emailReg').hasClass('invalid') && !jQuery('#passReg').hasClass('invalid') && !jQuery('#telefono').hasClass('invalid') && !jQuery('#nombre').hasClass('invalid') && !jQuery('#direccion').hasClass('invalid')) 			
			return true;
	}		
	return false;	
}