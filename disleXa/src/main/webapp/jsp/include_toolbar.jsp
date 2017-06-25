<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<div class="row">
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="/disleXa"> <img alt="Brand"
					id="logo" src="/disleXa/images/isologo.png"></a>
			</div>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="javascript:void(0);" id="registrarse"
					onclick="cargarActionContenido('registro_login/registrarse','regi');">
						<button type="button" class="btn btn-default">
							<span class="glyphicon glyphicon-user"></span> Registrarse
						</button>
				</a></li>
				<li><a href="javascript:void(0);" id="login"
					onclick="cargarActionContenido('registro_login/login','divContenido');">
						<button type="button" class="btn btn-default">
						<span class="glyphicon glyphicon-log-in"></span> Login
						</button>
				</a></li>
			</ul>
		</div>
	</nav>
</div>
