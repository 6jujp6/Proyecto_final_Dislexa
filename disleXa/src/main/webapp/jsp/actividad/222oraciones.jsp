<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<div class="container">
	<s:hidden name="idEjecEvalActiv" id="idEjecEvalActiv" />
	<s:hidden name="idEjecEval" id="idEjecEval" />

	<h4 id="text" class="text-jutify">
		Lee en voz alta las siguientes oraciones:<a href="#" class="btn btn-info"
			onclick="responsiveVoice.speak(document.getElementById('text').innerText, 'Spanish Female');"><i
			class="fa fa-volume-up" aria-hidden="true"></i></a>
	</h4>
	<p>
		<span id="text1"><i class="fa fa-info-circle"
			aria-hidden="true"></i> Para grabar toca el botón en rojo. Para
			finalizar tocalo cuando este verde: <a href="#" class="btn btn-info"
			onclick="responsiveVoice.speak(document.getElementById('text1').innerText, 'Spanish Female');"><i
				class="fa fa-volume-up" aria-hidden="true"></i></a></span>
	</p>
	<br>
	<div class="type_buttons"></div>

	<div class="row">
		<div class="col-md-4">
			<div class="thumbnail">
				<img src="/disleXa/images/cangrejos.jpg"
					alt="Doña Cangrejo queria vacacionar en las sierras"
					style="width: 100%">
				<div class="caption">
					<label for="comment">Doña Cangrejo queria vacacionar en las
						sierras.</label>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="thumbnail">
				<img src="/disleXa/images/Mono.jpg"
					alt="El rey mono esta en problemas" style="width: 100%">
				<div class="caption">
					<label for="comment">El rey mono esta en problemas.</label>
				</div>
			</div>
		</div>
		<div class="col-md-4">
			<div class="thumbnail">
				<img src="/disleXa/images/Leon.jpg"
					alt="El leon esta muy enojado con sus amigos" style="width: 100%">
				<div class="caption">
					<label for="comment">El leon esta muy enojado con sus
						amigos.</label>
				</div>
			</div>
		</div>


	</div>
	<textarea class="form-control" rows="5" id="texto" name="texto"
		style="display: none;"></textarea>
	<div class="md-form">
		<!-- 		<label for="comment">Escribe aquí:</label> -->
		<!-- 		<textarea class="md-textarea" rows="3" id="texto" name="texto"></textarea> -->
		<a href="#" onClick="guardarResultado();"
			class="btn btn-info pull-right">Siguiente</a>
	</div>
</div>


<script src="/disleXa/js/recorder.js"></script>
<script src="/disleXa/js/Fr.voice.js"></script>
<script src="/disleXa/js/jquery.js"></script>
<script src="/disleXa/js/app.js"></script>

<script>
	$.getScript("/disleXa/js/actividades.js");
</script>
