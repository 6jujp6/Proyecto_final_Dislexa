<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<div class="container">
	<s:hidden name="idEjecEvalActiv" id="idEjecEvalActiv" />
	<s:hidden name="idEjecEval" id="idEjecEval" />

	<h4 id="text" class="text-jutify">
		Escribe el nombre del objeto:<a href="#" class="btn btn-info"
			onclick="responsiveVoice.speak(document.getElementById('text').innerText, 'Spanish Female');"><i
			class="fa fa-volume-up" aria-hidden="true"></i></a>
	</h4>
	<br> <br>
	<div class="row">
		<div class="col-md-3">
			<div class="thumbnail">
				<img src="/disleXa/img/libro.jpg" alt="Lights" style="width: 100%">
				<div class="md-form">
					<label for="nombre" class="">Escribe aquí:</label> <input
						type="text" class="form-control" id="libro" name="texto">
				</div>

			</div>
		</div>
		<div class="col-md-3">
			<div class="thumbnail">
				<img src="/disleXa/img/televisor.jpg" alt="Lights"
					style="width: 100%">
				<div class="md-form">
					<label for="nombre" class="">Escribe aquí:</label> <input
						type="text" class="form-control" id="televisor" name="texto">
				</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="thumbnail">
				<img src="/disleXa/img/auto.jpg" alt="Lights" style="width: 100%">
				<div class="md-form">
					<label for="nombre" class="">Escribe aquí:</label> <input
						type="text" class="form-control" id="auto" name="texto">
				</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="thumbnail">
				<img src="/disleXa/img/smartphone.jpg" alt="Lights"
					style="width: 100%">
				<div class="md-form">
					<label for="nombre" class="">Escribe aquí:</label> <input
						type="text" class="form-control" id="smart" name="texto">
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
			<a href="#" onClick="concatenar(); guardarResultado();"
				class="btn btn-info pull-right">Siguiente</a>
		</div>
	</div>
	<div class="row">
		<input type="hidden" id="texto" name="texto">
	</div>
</div>

<script>
	$.getScript("/disleXa/js/actividades.js");

	function concatenar(){
		$('#texto').val('Libro: ' + $('#libro').val()+', Televisor: '+ $('#televisor').val()+', Automovil: '+$('#auto').val()+', Smarthpone: '+$('#smart').val());	
		}
</script>