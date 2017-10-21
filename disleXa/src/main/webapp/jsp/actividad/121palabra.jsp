
<div class="container">


	<h4 id="text" class="text-jutify">
		Escribe la palabra que oigas: <a href="#"
			class="btn btn-info"
			onclick="responsiveVoice.speak(document.getElementById('text').innerText, 'Spanish Female');">
			<i class="fa fa-volume-up" aria-hidden="true"></i>
		</a>
	</h4>
	<br> <br>

	<div class="row">
		<div class="col-md-1">
			<label for="comment">Palabra 1:</label> <input
				class="btn btn-success center-block"
				onclick="responsiveVoice.speak('Paleta', 'Spanish Latin American Female');"
				type="button" value="Dictar" />

		</div>
		<div class="col-md-3">
			<div class="form-group">
				<label for="comment">Escribe aquí:</label>
				<textarea class="form-control" rows="1" id="comment"></textarea>
			</div>
		</div>
		<div class="col-md-1">
			<label for="comment">Palabra 2:</label> <input
				class="btn btn-success center-block"
				onclick="responsiveVoice.speak('Tomáte', 'Spanish Latin American Female');"
				type="button" value="Dictar" />
		</div>
		<div class="col-md-3">
			<div class="form-group">
				<label for="comment">Escribe aquí:</label>
				<textarea class="form-control" rows="1" id="comment"></textarea>
			</div>
		</div>
		<div class="col-md-1">
			<label for="comment">Palabra 3:</label> <input
				class="btn btn-success center-block"
				onclick="responsiveVoice.speak('Música', 'Spanish Latin American Female');"
				type="button" value="Dictar" />
		</div>
		<div class="col-md-3">
			<div class="form-group">
				<label for="comment">Escribe aquí:</label>
				<textarea class="form-control" rows="1" id="comment"></textarea>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-1">
			<label for="comment">Palabra 4:</label> <input
				class="btn btn-success center-block"
				onclick="responsiveVoice.speak('Cama', 'Spanish Latin American Female');"
				type="button" value="Dictar" />
		</div>
		<div class="col-md-3">
			<div class="form-group">
				<label for="comment">Escribe aquí:</label>
				<textarea class="form-control" rows="1" id="comment"></textarea>
			</div>
		</div>
		<div class="col-md-1">
			<label for="comment">Palabra 5:</label> <input
				class="btn btn-success center-block"
				onclick="responsiveVoice.speak('Ratón', 'Spanish Latin American Female');"
				type="button" value="Dictar" />
		</div>
		<div class="col-md-3">
			<div class="form-group">
				<label for="comment">Escribe aquí:</label>
				<textarea class="form-control" rows="1" id="comment"></textarea>
			</div>
		</div>
		<div class="col-md-1">
			<label for="comment">Palabra 6:</label> <input
				class="btn btn-success center-block"
				onclick="responsiveVoice.speak('Sol', 'Spanish Latin American Female');"
				type="button" value="Dictar" />
		</div>
		<div class="col-md-3">
			<div class="form-group">
				<label for="comment">Escribe aquí:</label>
				<textarea class="form-control" rows="1" id="comment"></textarea>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-1">
			<label for="comment">Palabra 7:</label> <input
				class="btn btn-success center-block"
				onclick="responsiveVoice.speak('Auto', 'Spanish Latin American Female');"
				type="button" value="Dictar" />
		</div>
		<div class="col-md-3">
			<div class="form-group">
				<label for="comment">Escribe aquí:</label>
				<textarea class="form-control" rows="1" id="comment"></textarea>
			</div>
		</div>
		<div class="col-md-1">
			<label for="comment">Palabra 8:</label> <input
				class="btn btn-success center-block"
				onclick="responsiveVoice.speak('Hormiga', 'Spanish Latin American Female');"
				type="button" value="Dictar" />
		</div>
		<div class="col-md-3">
			<div class="form-group">
				<label for="comment">Escribe aquí:</label>
				<textarea class="form-control" rows="1" id="comment"></textarea>
			</div>
		</div>
		<div class="col-md-1">
			<label for="comment">Palabra 9:</label> <input
				class="btn btn-success center-block"
				onclick="responsiveVoice.speak('Noche', 'Spanish Latin American Female');"
				type="button" value="Dictar" />
		</div>
		<div class="col-md-3">
			<div class="form-group">
				<label for="comment">Escribe aquí:</label>
				<textarea class="form-control" rows="1" id="comment"></textarea>
			</div>
		</div>
	</div>

	<!-- 	<br> <label for="comment">Avance:</label> -->
	<!-- 	<div class="progress"> -->
	<!-- 		<div class="progress-bar" role="progressbar" aria-valuenow="70" -->
	<!-- 			aria-valuemin="0" aria-valuemax="100" style="width: 25%">25%</div> -->
	<!-- 	</div> -->
	<a href="#" onClick="guardarResultado();"
		class="btn btn-info pull-right">Siguiente</a>
	<!-- 	<ul class="pager"> -->
	<!-- 		<li class="previous"><a href="#">Anterior</a></li> -->
	<!-- 		<li class="next"><a href="#">Siguiente</a></li> -->
	<!-- 	</ul> -->
</div>
