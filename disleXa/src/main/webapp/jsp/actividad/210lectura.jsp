<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<div class="container">
	<s:hidden name="idEjecEvalActiv" id="idEjecEvalActiv" />
	<s:hidden name="idEjecEval" id="idEjecEval" />

	<h4 id="text" class="text-jutify">
		Escucha atentamente la siguiente historia:<a href="#"
			class="btn btn-info"
			onclick="responsiveVoice.speak(document.getElementById('text').innerText, 'Spanish Female');"><i
			class="fa fa-volume-up" aria-hidden="true"></i></a>
	</h4>
	<input class="btn btn-primary"
		onclick="responsiveVoice.speak('Mariela había preparado el regalo y había ayudado a su mejor amiga a inflar los globos y a terminar la torta. Estaba muy contenta porque era el día de la fiesta. Faltaba poco para que la vinieran a buscar, pero Mariela prendió la tele y daban su programa preferido. Cuando sonó el timbre corrió apurada a ponerse el vestido y a peinarse. Se fueron caminando porque era cerca. Al llegar a la fiesta y saludar a su amiga no tenía regalo.', 'Spanish Latin American Female');"
		type="button" value="Comenzar a escuchar" /> <BR> <BR>

	<div class="row">
		<div class="col-md-4">
			<p>¿Qué te acordás de lo que te conté?</p>
			<input class="btn btn-info"
				onclick="responsiveVoice.speak('¿Qué te acordás de lo que te conté?', 'Spanish Latin American Female');"
				type="button" value="Leer" id="texto" name="texto" />
		</div>
		<div class="col-md-4">
			<p>¿Qué le pasó a Mariela?</p>
			<input class="btn btn-info"
				onclick="responsiveVoice.speak('¿Qué le pasó a Mariela?', 'Spanish Latin American Female');"
				type="button" value="Leer" />
		</div>
		<div class="col-md-4">
			<p>¿Por qué Mariela estaba contenta?</p>
			<input class="btn btn-info"
				onclick="responsiveVoice.speak('¿Por qué Mariela estaba contenta?', 'Spanish Latin American Female');"
				type="button" value="Leer" />
		</div>
	</div>
	<br>
	<!-- 	<div class="row"> -->
	<!-- 		<div class="col-md-4"> -->
	<!-- 			<p>¿Que hizo antes de que la vinieran a buscar?</p> -->
	<!-- 			<input class="btn btn-info" -->
	<!-- 				onclick="responsiveVoice.speak('¿Que hizo antes de que la vinieran a buscar?', 'Spanish Latin American Female');" -->
	<!-- 				type="button" value="Leer" /> -->
	<!-- 		</div> -->
	<!-- 		<div class="col-md-4"> -->
	<!-- 			<p>¿Qué pasó después?</p> -->
	<!-- 			<input class="btn btn-info" -->
	<!-- 				onclick="responsiveVoice.speak('¿Qué pasó después?', 'Spanish Latin American Female');" -->
	<!-- 				type="button" value="Leer" /> -->
	<!-- 		</div> -->
	<!-- 		<div class="col-md-4"> -->
	<!-- 			<p>¿Qué se festejaba? ¿Cómo te diste cuenta?</p> -->
	<!-- 			<input class="btn btn-info" -->
	<!-- 				onclick="responsiveVoice.speak('¿Qué se festejaban? ¿Cómo te diste cuenta?', 'Spanish Latin American Female');" -->
	<!-- 				type="button" value="Leer" /> -->
	<!-- 		</div> -->
	<!-- 	</div> -->
	<!-- 	<br> -->
	<!-- 	<div class="row"> -->
	<!-- 		<div class="col-md-4"> -->
	<!-- 			<p>¿Que hizo antes de que la vinieran a buscar?</p> -->
	<!-- 			<input class="btn btn-info" -->
	<!-- 				onclick="responsiveVoice.speak('¿Que hizo antes de que la vinieran a buscar?', 'Spanish Latin American Female');" -->
	<!-- 				type="button" value="Leer" /> -->
	<!-- 		</div> -->
	<!-- 	</div> -->

	<span id="text1"><i class="fa fa-info-circle" aria-hidden="true"></i>
		Para grabar toca el botón en rojo. Para finalizar tocalo cuando este
		verde: <a href="#" class="btn btn-info"
		onclick="responsiveVoice.speak(document.getElementById('text1').innerText, 'Spanish Female');"><i
			class="fa fa-volume-up" aria-hidden="true"></i></a></span> <br>
	<div class="type_buttons"></div>

	<!-- 	<br> <br> <br> <label for="comment">Avance:</label> -->
	<!-- 	<div class="progress"> -->
	<!-- 		<div class="progress-bar" role="progressbar" aria-valuenow="70" -->
	<!-- 			aria-valuemin="0" aria-valuemax="100" style="width: 00%">0%</div> -->
	<!-- 	</div> -->
	<a href="#" onClick="guardarResultado();"
		class="btn btn-info pull-right">Siguiente</a>
</div>


<script src="/disleXa/js/recorder.js"></script>
<script src="/disleXa/js/Fr.voice.js"></script>
<script src="/disleXa/js/jquery.js"></script>
<script src="/disleXa/js/app.js"></script>

<script>
	$.getScript("/disleXa/js/actividades.js");
</script>
