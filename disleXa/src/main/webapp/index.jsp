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

	<div class="registro">
		<div class="arrow-up1"></div>
		<div id="regi" class="formholder"></div>
	</div>
	<div class="login">
		<div class="arrow-up2"></div>
		<div id="login" class="formholder"></div>
	</div>

	<div class="row">
		<div class="well well-sm">


<!-- EMPIEZA Carousel -->

<!--     TERMINA Carousel -->

			<div id="divContenido">
						<img src="/disleXa/images/escribiendo.jpg" id="imagen_home"
				alt="Cinque Terre" />
				<br>
				<div class="container">
					<div class="jumbotron">
						<h1>¡Te ayudamos con tu rendimiento escolar!</h1>
						<p>Dislexa es una aplicación cuya finalidad es ayudar con la
							problemática de las DEA a través de actividades y juegos.</p>
						<p>
							<button type="button" class="btn btn-default">Saber más</button>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="jsp/include_footer.jsp" />
	<jsp:include page="jsp/include_js.jsp" />
</body>
</html>