function cargarActionContenido(action, div){
	$("#" + div).load(action, function( response, status, xhr ) {		
		if ( status == "error" ) {
			alert("Error al cargar la opcion. Error " + status);
		}
	});
}