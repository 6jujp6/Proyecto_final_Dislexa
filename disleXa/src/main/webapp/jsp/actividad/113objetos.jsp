<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<div class="container">
	<s:hidden name="idEjecEvalActiv" id="idEjecEvalActiv" />
	<s:hidden name="idEjecEval" id="idEjecEval" />

	<h4 id="text" class="text-jutify">
		Te voy a mostrar algunas figuras. Te pido que escribas el nombre de
		cada una de ellas.<a href="#" class="btn btn-info"
			onclick="responsiveVoice.speak(document.getElementById('text').innerText, 'Spanish Female');"><i
			class="fa fa-microphone" aria-hidden="true"></i></a>
	</h4>
	<br> <br>
	<div class="row">
		<div class="col-md-3">
			<div class="thumbnail">
				<img src="/disleXa/images/pava.jpg" alt="Lights" style="width: 100%">
				<div class="md-form">
					<label for="nombre" class="">Escribe aquí:</label> <input
						type="text" class="form-control" id="texto" name="texto">
				</div>

			</div>
		</div>
		<div class="col-md-3">
			<div class="thumbnail">
				<img src="/disleXa/images/televisor.jpg" alt="Lights"
					style="width: 100%">
				<div class="md-form">
					<label for="nombre" class="">Escribe aquí:</label> <input
						type="text" class="form-control" id="texto" name="texto">
				</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="thumbnail">
				<img src="/disleXa/images/vaso.jpg" alt="Lights" style="width: 100%">
				<div class="md-form">
					<label for="nombre" class="">Escribe aquí:</label> <input
						type="text" class="form-control" id="texto" name="texto">
				</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="thumbnail">
				<img src="/disleXa/images/tenedor.jpg" alt="Lights"
					style="width: 100%">
				<div class="md-form">
					<label for="nombre" class="">Escribe aquí:</label> <input
						type="text" class="form-control" id="texto" name="texto">
				</div>
			</div>
		</div>

	</div>

	<a href="#" onClick="guardarResultado();"
		class="btn btn-info pull-right">Siguiente</a>
</div>

<script>
	$.getScript("/disleXa/js/actividades.js");

	
</script>