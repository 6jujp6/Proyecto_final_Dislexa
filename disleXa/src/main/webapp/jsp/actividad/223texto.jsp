<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<div class="container">
	<s:hidden name="idEjecEvalActiv" id="idEjecEvalActiv" />
	<s:hidden name="idEjecEval" id="idEjecEval" />

	<h4 id="text" class="text-jutify">Leé este cuento en voz alta:</h4>
	<span id="text1"><i class="fa fa-info-circle" aria-hidden="true"></i>
		Para grabar toca el botón en rojo. Para finalizar tocalo cuando este
		verde: <a href="#" class="btn btn-info"
		onclick="responsiveVoice.speak(document.getElementById('text1').innerText, 'Spanish Female');"><i
			class="fa fa-volume-up" aria-hidden="true"></i></a></span> <br>
	<div class="type_buttons"></div>

	<BR>
	<div class="alert alert-info">
		<p>Un día, el dueño de la calesita se dio cuenta de que el caballo
			Valentín tenía rota una de sus patas de madera, entonces se lo llevo
			a Don Andres, el carpintero.</p>
		<p>Don andres apoyándose en su bastón, fue despacito a preparar
			las cosas necesarias y clavó la pata del caballo hasta que quedó como
			nueva.</p>
		<p>Cuando el dueño de la calesita lo fue a buscar, se puso muy
			contento al ver a valentin con su pata arreglada.</p>
	</div>
	<BR>
	<!-- 	<div class="row"> -->
	<!-- 		<div class="col-md-4"> -->
	<!-- 			<p>¿Qué te acordás de lo que leíste?</p> -->
	<!-- 			<input class="btn btn-info" -->
	<!-- 				onclick="responsiveVoice.speak('¿Qué te acordás de lo que leíste?', 'Spanish Latin American Female');" -->
	<!-- 				type="button" value="Leer" /> -->
	<!-- 		</div> -->
	<!-- 		<div class="col-md-4"> -->
	<!-- 			<p>¿Qué le pasó al dueño de la calesita?</p> -->
	<!-- 			<input class="btn btn-info" -->
	<!-- 				onclick="responsiveVoice.speak('¿Qué le pasó al dueño de la calesita?', 'Spanish Latin American Female');" -->
	<!-- 				type="button" value="Leer" /> -->
	<!-- 		</div> -->
	<!-- 		<div class="col-md-4"> -->
	<!-- 			<p>¿De qué se dio cuenta el dueño de la calesita?</p> -->
	<!-- 			<input class="btn btn-info" -->
	<!-- 				onclick="responsiveVoice.speak('¿De qué se dio cuenta el dueño de la calesita?', 'Spanish Latin American Female');" -->
	<!-- 				type="button" value="Leer" /> -->
	<!-- 		</div> -->
	<!-- 	</div> -->
	<!-- 	<br> -->
	<!-- 	<div class="row"> -->
	<!-- 		<div class="col-md-4"> -->
	<!-- 			<p>¿Qué decidió hacer?</p> -->
	<!-- 			<input class="btn btn-info" -->
	<!-- 				onclick="responsiveVoice.speak('¿Qué decidió hacer?', 'Spanish Latin American Female');" -->
	<!-- 				type="button" value="Leer" /> -->
	<!-- 		</div> -->
	<!-- 		<div class="col-md-4"> -->
	<!-- 			<p>¿Qué pasó después?</p> -->
	<!-- 			<input class="btn btn-info" -->
	<!-- 				onclick="responsiveVoice.speak('¿Qué pasó después?', 'Spanish Latin American Female');" -->
	<!-- 				type="button" value="Leer" /> -->
	<!-- 		</div> -->
	<!-- 		<div class="col-md-4"> -->
	<!-- 			<p>¿Qué herramienta te parece que usó el carpintero?</p> -->
	<!-- 			<input class="btn btn-info" -->
	<!-- 				onclick="responsiveVoice.speak('¿Qué herramienta te parece que usó el carpintero?', 'Spanish Latin American Female');" -->
	<!-- 				type="button" value="Leer" /> -->
	<!-- 		</div> -->
	<!-- 	</div> -->
	<!-- 	<br> -->
	<!-- 	<div class="row"> -->
	<!-- 		<div class="col-md-4"> -->
	<!-- 			<p>¿Cómo te imaginas a Don Andres, joven o viejo? ¿Cómo te diste -->
	<!-- 				cuenta?</p> -->
	<!-- 			<input class="btn btn-info" -->
	<!-- 				onclick="responsiveVoice.speak('¿Como te imaginas a Don Andres, joven o viejo? ¿Cómo te diste cuenta?', 'Spanish Latin American Female');" -->
	<!-- 				type="button" value="Leer" /> -->
	<!-- 		</div> -->
	<!-- 	</div> -->

	<ul class="pager">
		<!-- <li class="previous"><a href="#">Previous</a></li> -->
		<li class="next"><a href="#" onClick="guardarResultado();">Siguiente</a></li>
	</ul>
</div>


<script src="/disleXa/js/recorder.js"></script>
<script src="/disleXa/js/Fr.voice.js"></script>
<script src="/disleXa/js/jquery.js"></script>
<script src="/disleXa/js/app.js"></script>
