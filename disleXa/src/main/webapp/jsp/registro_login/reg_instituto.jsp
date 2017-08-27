
<div class="card wow fadeInLeft">
	<div class="card-block">
		<div class="text-Left">
			<h3>Institucion:</h3>
		</div>
		<!--Body-->
		<div class="md-form">
			<input type="text" id="direccion" class="form-control validate"> <label
				for="form3">Direccion</label>
		</div>
		<div class="md-form">
			<input type="text" id="telefono" class="form-control validate"> <label
				for="form2">Telefono</label>
		</div>

		<div class="text-center">
			<button class="btn btn-purple btn-lg waves-effect waves-light" onclick="registroInstitucion();">Registrarse</button>
		</div>
	</div>
</div>
<script>
	$.getScript("/disleXa/js/registro.js");
</script>