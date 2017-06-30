<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<jsp:include page="/jsp/include_head.jsp" />
</head>
<body>
	<%-- 	<jsp:include page="jsp/include_toolbar.jsp" /> --%>

	<div class="bs-example">
		<jsp:include page="jsp/include_toolbar.jsp" />
		<div class="login">
			<div class="arrow-up2"></div>
			<div id="login" class="formholder"></div>
		</div>
		<div id="nuevo">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<div class="transparente">
					<div id="indexIzq">
						<h1>¡Te ayudamos con tu rendimiento escolar!</h1>
						<p>Dislexa es una aplicación cuya finalidad es ayudar con la
							problemática de las DEA a través de actividades y juegos.</p>
						<p>
							<button type="button" class="btn btn-default">Saber más</button>
						</p>
					</div>
					<div id="indexDer">
						<h1>Registrarse</h1>
						<label for="mail">Mail: </label> <input type="email" id="email"
							class="form-control" title="No parece un formato de mail valido"
							required> <label for="pass">Contraseña: </label> <input
							type="password" id="pass" class="form-control"> <span>
							Como:</span> <br> <a href="javascript:void(0);" id="login"
							onclick="cargarActionContenido('registro_login/regInstituto','nuevo');">
							<button type="button" class="btn btn-default">Instituto</button>
						</a> <a href="javascript:void(0);" id="login"
							onclick="cargarActionContenido('paciente/menu','nuevo');">
							<button type="button" class="btn btn-default">Profesional</button>
						</a> <br> <span> Activar usuario "Responsable" <a
							href="javascript:void(0);" id="login"
							onclick="cargarActionContenido('registro_login/activarResp','nuevo');">
								Click aqui</a>
						</span> <br>
					</div>
				</div>

				<!-- 				Carousel indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
				<!-- 				Wrapper for carousel items -->
				<div class="carousel-inner">
					<div class="item active">
						<img src="/disleXa/images/slaider1.jpg" alt="First Slide"
							class="slide">
					</div>
					<div class="item">
						<img src="/disleXa/images/slaider.jpg" alt="Second Slide">
					</div>
					<div class="item">
						<img src="/disleXa/images/slaider.jpg" alt="Third Slide">
					</div>
				</div>
				<!--         Carousel controls -->
				<!--         <a class="carousel-control left" href="#myCarousel" data-slide="prev"> -->
				<!--             <span class="glyphicon glyphicon-chevron-left"></span> -->
				<!--         </a> -->
				<!--         <a class="carousel-control right" href="#myCarousel" data-slide="next"> -->
				<!--             <span class="glyphicon glyphicon-chevron-right"></span> -->
				<!--         </a> -->
			</div>

		</div>
	</div>
	<!-- 	<div class="registro"> -->
	<!-- 		<div class="arrow-up1"></div> -->
	<!-- 		<div id="regi" class="formholder"></div> -->
	<!-- 	</div> -->

	<!-- 	<div class="row"> -->
	<!-- 		<div class="well well-sm"> -->

	<!-- 			<div id="divContenido"> -->
	<!-- 						<img src="/disleXa/images/escribiendo.jpg" id="imagen_home" -->
	<!-- 				alt="Cinque Terre" /> -->
	<!-- 				<br> -->
	<!-- 				<div class="container"> -->
	<!-- 					<div class="jumbotron"> -->
	<!-- 							<h1>¡Te ayudamos con tu rendimiento escolar!</h1> -->
	<!-- 							<p>Dislexa es una aplicación cuya finalidad es ayudar con la -->
	<!-- 								problemática de las DEA a través de actividades y juegos.</p> -->
	<!-- 							<p> -->
	<!-- 								<button type="button" class="btn btn-default">Saber más</button> -->
	<!-- 							</p> -->
	<!-- 					</div> -->
	<!-- 				</div> -->
	<!-- 			</div> -->
	<!-- 		</div> -->
	<!-- 	</div> -->
	<jsp:include page="jsp/include_footer.jsp" />
	<jsp:include page="jsp/include_js.jsp" />
</body>
</html>