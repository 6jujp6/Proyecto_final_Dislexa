<%@taglib uri="/struts-tags" prefix="s"%>
<div class="card wow fadeInRight">
	<div class="card-block">
		<!--Header-->
		<div class="text-center">
			<h3>Iniciar Sesion:</h3>
			<hr>
		</div>

		<!--Body-->
		<div class="md-form">
			<i class="fa fa-envelope prefix"></i>
			<s:textfield type="email" class="form-control" name="email"
				placeholder="mail@ejemplo.com" id="email"
				title="No parece un formato de mail valido"/>
		</div>

		<div class="md-form">
			<i class="fa fa-lock prefix"></i>
			<s:textfield type="password" class="form-control" name="password"
				placeholder="Contraseña" id="pass"/>
		</div>

		<div class="text-center">
			<button type="button" onclick="login();"
				class="btn btn-primary btn-lg waves-effect waves-light">Acceder</button>
			<hr>
			<label for="checkbox1">Olvidaste tu contraseña? <a href="">Click
					Aqui</a></label>
		</div>

	</div>
</div>



<script>
	$.getScript("/disleXa/js/login.js");
	
	function cargarHTMLContenido(html, div){
		if(div=='body')
			setTimeout(function () {
				$('body').html(html);})
		else
			setTimeout(function () {
				$("#" + div).html(html);
			}, 500);
	}
</script>
