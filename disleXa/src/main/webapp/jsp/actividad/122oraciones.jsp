
<div class="container">


	<h4 id="text" class="text-jutify">
		Te voy a dictar algunas oraciones para que vos escribas. <a href="#" class="btn btn-info"
			onclick="responsiveVoice.speak(document.getElementById('text').innerText, 'Spanish Female');"><i
			class="fa fa-microphone" aria-hidden="true"></i></a>
	</h4>
	<br> <br>

	<div class="row">
		<div class="col-md-2">
			<label for="comment">Oración 1:</label> <input
				class="btn btn-success center-block"
				onclick="responsiveVoice.speak('En la laguna, los sapos nadan.', 'Spanish Latin American Female');"
				type="button" value="Dictar" />
		</div>
		<div class="col-md-10">
			<div class="form-group">
				<label for="comment">Escribe aquí:</label>
				<textarea class="form-control" rows="2" id="texto" name="texto"></textarea>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-md-2">
			<label for="comment">Oración 2:</label> <input
				class="btn btn-success center-block"
				onclick="responsiveVoice.speak('Los chicos juegan al futbol en la plaza de la esquina.', 'Spanish Latin American Female');"
				type="button" value="Dictar" />
		</div>
		<div class="col-md-10">
			<div class="form-group">
				<label for="comment">Escribe aquí:</label>
				<textarea class="form-control" rows="2" id="comment"></textarea>
			</div>
		</div>
	</div>

<!-- 	<br> <label for="comment">Avance:</label> -->
<!-- 	<div class="progress"> -->
<!-- 		<div class="progress-bar" role="progressbar" aria-valuenow="70" -->
<!-- 			aria-valuemin="0" aria-valuemax="100" style="width: 25%"> -->
<!-- 			33.33%</div> -->
<!-- 	</div> -->
		<a href="#" onClick="guardarResultado();"
			class="btn btn-info pull-right">Siguiente</a>
<!-- 	<ul class="pager"> -->
<!-- 		<li class="previous"><a href="#">Anterior</a></li> -->
<!-- 		<li class="next"><a href="#">Siguiente</a></li> -->
<!-- 	</ul> -->
</div>
