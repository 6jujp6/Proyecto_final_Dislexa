<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<div class="row">
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">

				<a class="navbar-brand" href="/disleXa"><img alt="Brand"
					id="logo" src="/disleXa/images/isologo.png"></a>

			<ul class="nav navbar-nav navbar-right">
<!-- 				<li><a href="javascript:void(0);" id="regis" -->
<!-- 					onclick="cargarActionContenido('registro_login/registrarse','regi');"> -->
<!-- 						<button type="button" class="btn btn-default"> -->
<!-- 							<span class="glyphicon glyphicon-user"></span> Registrarse -->
<!-- 						</button> -->
<!-- 				</a></li> -->
				<li><a href="javascript:void(0);" id="logis"
					onclick="cargarActionContenido('registro_login/login','login');">
						<button type="button" class="btn btn-default">
						<span class="glyphicon glyphicon-log-in"></span> Login
						</button>
				</a></li>
				<li><a href="javascript:void(0);" id="actividad"
					onclick="cargarActionContenido('paciente/actividades', 'paciente');">
						<button type="button" class="btn btn-default">
						<span class="glyphicon glyphicon-log-in"></span> Prueba
						</button>
						
				</a></li>
			</ul>
		</div>
	</nav>
</div>
