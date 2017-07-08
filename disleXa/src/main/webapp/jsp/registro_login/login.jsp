<%@taglib uri="/struts-tags" prefix="s" %>
<div class="row">
	<label for="mail">Mail: </label> 
	<!--<input type="email" id="email" placeholder="EMAIL" class="form-control"
		title="No parece un formato de mail valido" required>-->
		<s:textfield type="email" class="form-control" name="email" placeholder="mail@ejemplo.com" id="email" title="No parece un formato de mail valido"/>
</div>
<br>
<div class="row">
	<label for="pass">Contraseña: </label> 
	<s:textfield type="password" class="form-control" name="password" placeholder="" id="pass"/>
	<!-- <input type="password" placeholder="CONTRASEÑA"  id="pass" class="form-control"> -->
</div>
<br>
<!--<button type="button" class="btn btn-default" onclick="cargarActionContenido('index/login','divContenido');">Acceder</button>-->
 <button type="button" class="btn btn-default" onclick="login();">Acceder</button> 

<script>
	$.getScript("/disleXa/js/login.js");
	
	function cargarHTMLContenido(html){
		setTimeout(function () {
			$('#divContenido').html(html);
		}, 500);
	}
</script>
