<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<jsp:include page="/jsp/include_head.jsp" />
</head>
<body>
	<jsp:include page="jsp/include_toolbar.jsp" />
	<!--Mask-->
	<div class="view hm-light">
		<div class="full-bg-img flex-center">
			<div class="container" id="divContenido">
				<div class="row" id="home">

					<!--First column-->
					<div class="col-lg-6" id="izquierda">
						<!--Form-->
						<div class="card wow fadeInLeft">
							<div class="card-block">
								<!--Header-->
								<div class="text-center">
									<h3>Registrate:</h3>
									<hr>
								</div>

								<!--Body-->
								<div class="md-form">
									<i class="fa fa-user prefix"></i> <input type="text" id="nombre" name="nombre"
										class="form-control validate"> <label for="form3">Nombre</label>
								</div>
								<div class="md-form">
									<i class="fa fa-envelope prefix"></i> <input type="email"
										id="emailReg" class="form-control validate"> <label for="form2">Email</label>
								</div>

								<div class="md-form">
									<i class="fa fa-lock prefix"></i> <input type="password"
										id="passReg" class="form-control validate"> <label for="form4">Contraseña</label>
								</div>

								<div class="text-center">
									<label for="tipo">Como:</label> <a href="javascript:void(0);"
										onclick="cargarActionContenido('registro_login/regInstituto','derecha');"
										class="btn btn-primary btn-lg waves-effect waves-light">Institucion</a>
									<a href="javascript:void(0);"
										onclick="cargarActionContenido('registro_login/regProfesional','derecha');"
										class="btn btn-pink btn-lg waves-effect waves-light">Profesional</a>
									<hr>
									<label for="checkbox1">Activar cuenta "Responsable" <a
										href="javascript:void(0);"
										onclick="cargarActionContenido('registro_login/activarResp','derecha');">Click
											Aqui</a></label>
								</div>

							</div>
						</div>
						<!--/.Form-->
					</div>
					<!--/.First column-->

					<!--Second column-->
					<div class="col-lg-6" id="derecha">
						<div class="description">
							<h2 class="h2-responsive wow fadeInRight">Te ayudamos con tu
								rendimiento Escolar!</h2>
							<hr class="hr-light wow fadeInRight">
							<p class="wow fadeInRight" data-wow-delay="0.4s">Dislexa es
								una aplicación cuya finalidad es ayudar con la problemática de
								las DEA a través de actividades y juegos.</p>
							<br> <a class="btn btn-outline-white btn-rg wow fadeInRight"
								data-wow-delay="0.7s">LEER MAS</a>
						</div>
					</div>
					<!--/.Second column-->
				</div>
			</div>
		</div>
	</div>
	<!--/.Mask-->


	<jsp:include page="jsp/include_js.jsp" />
	<script>
		$.getScript("/disleXa/js/registro.js");
	</script>
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
</body>
</html>
