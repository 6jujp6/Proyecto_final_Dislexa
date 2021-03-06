<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!--Navbar-->
<nav class="navbar navbar-toggleable-md navbar-light">
	<div class="container">
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-toggle="collapse" data-target="#navbarNav1"
			aria-controls="navbarNav1" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<a class="navbar-brand" href="#"> <img class="isologo"
			src="/disleXa/img/isologo/isologo3.png" />
		</a>
		<div class="collapse navbar-collapse" id="navbarNav1">
			<ul class="navbar-nav ml-auto">
				<li><a href="/disleXa">
						<button type="button"
							class="
						btn btn-outline-black waves-effect waves-light">
							Salir</button>
				</a></li>
			</ul>
		</div>
	</div>
</nav>
<!--/.Navbar-->

<main> <!--Main layout-->
<div class="container">
	<div class="row">

		<!--Sidebar-->
		<div class="col-lg-3 wow fadeIn" data-wow-delay="0.2s">

			<div class="widget-wrapper">
				<div class="list-group">

					<a href="#" class="list-group-item active">Bienvenido/a <s:text
							name="nombre"></s:text>!
					</a> <a href="javascript:void(0);" onclick="buscarActividades();"
						class="list-group-item"><span
						class="glyphicon glyphicon-pencil"></span> Actividades</a><a
						href="javascript:void(0);"
						onclick="cargarActionContenido('paciente/datosPersonales', 'divContenidoPaciente');"
						class="list-group-item"><span class="glyphicon glyphicon-cog"></span>
						Datos personales</a> <a href="javascript:void(0);"
						onclick="cargarActionContenido('paciente/mensaje', 'divContenidoPaciente');"
						class="list-group-item"><span
						class="glyphicon glyphicon-envelope"></span> Mensaje</a>
				</div>
			</div>

			<div class="widget-wrapper wow fadeIn" data-wow-delay="0.4s">

				<div class="card">
					<div class="card-block">
						<h4>
							<strong>Notificaciones:</strong>
						</h4>
						<br>

						<p>Aqui apareceran las notificaciones</p>

					</div>
				</div>
			</div>

		</div>
		<!--/.Sidebar-->

		<!--Main column-->
		<div class="col-lg-9">

			<!--First row-->
			<div class="row wow fadeIn" data-wow-delay="0.4s">
				<div class="col-lg-12">

					<div id="divContenidoPaciente" class="jumbotron">
					<!--  <a href="javascript:void(0);" onclick="buscarActividades();"
						class="list-group-item"><img class="animated tada" src="/disleXa/img/juega_ahora.jpg" /></a>-->					
					</div>
				</div>
			</div>
			<!--/.First row-->
			<br>

		</div>
		<!--/.Main column-->

	</div>
</div>
</main>
<!--/.Main layout-->

<!--/.DISLEXA-->
<div class="girl-button wow fadeInRight" id="esconder">
	<i class="fa fa-close" aria-hidden="true"></i>
</div>
<p class="girl-text wow fadeInRight" id="dtexto">Bienvenido!</p>

<img src="/disleXa/img/Dislexa_girl/dislexa_bienvenido.png"
	class="girl wow fadeInLeft" id="girl" />
<div class="transparente" id="transparente"></div>
<button class="help-button btn btn-outline-black btn-lg wow fadeInLeft"
	id="ayuda">
	<i class="fa fa-question" aria-hidden="true"></i>
</button>

<!--/.DISLEXA-->

<%-- <jsp:include page="../include_footer.jsp" /> --%>

<jsp:include page="../include_js.jsp" />

<script>
	function buscarActividades() {
		$.ajax({
			url : 'paciente/actividades',
			type : "GET",
			contentType : false,
			success : function(data) {
				cargarHTMLContenido(data, 'divContenidoPaciente');
			},
			error : function(xhr, ajaxOptions, thrownError) {
				alert("error al cargar actividades");
			}
		});
	};
</script>
<script>
	$(document).ready(function() {
		$("#esconder").click(function() {
			$("#girl").toggle();
			$("#esconder").toggle();
			$("#transparente").toggle();
			$("#dtexto").toggle();
			$("#ayuda").toggle();
		});
		$("#ayuda").click(function() {
			$("#girl").toggle();
			$("#esconder").toggle();
			$("#transparente").toggle();
			$("#dtexto").toggle();
			$("#ayuda").toggle();
		});
	});

	
</script>