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
					<a href="#" class="list-group-item active">Bienvenido  <s:text name="nombre"></s:text></a> 
					<a href="javascript:void(0);" onclick="cargarActionContenido('institucion/misCursos', 'divContenidoInstitucion');"	class="list-group-item"><span class="glyphicon glyphicon-user"></span>Mis cursos</a>
					<a href="javascript:void(0);" onclick="cargarActionContenido('institucion/misAlumnos', 'divContenidoInstitucion');"	class="list-group-item"><span class="glyphicon glyphicon-user"></span>Mis alumnos</a>					
					<a href="javascript:void(0);"onclick="cargarActionContenido('institucion/datosPersonales', 'divContenidoInstitucion');"	class="list-group-item"><span class="glyphicon glyphicon-cog"></span>Datos de la institucion</a> 
					<a href="javascript:void(0);"onclick="cargarActionContenido('institucion/historico', 'divContenidoInstitucion');"class="list-group-item"><span class="glyphicon glyphicon-book"></span>Historico</a>
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
					<div id="divContenidoInstitucion" class="jumbotron"></div>
				</div>
			</div>
			<!--/.First row-->
			<br>

			<!--Second row-->
			
		</div>
		<!--/.Main column-->

	</div>
</div>
<!--/.Main layout--> </main>

<jsp:include page="../include_footer.jsp" />

<jsp:include page="../include_js.jsp" />
