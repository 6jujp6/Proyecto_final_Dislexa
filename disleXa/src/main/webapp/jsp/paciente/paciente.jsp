<!--Navbar-->
<nav class="navbar navbar-toggleable-md navbar-light">
	<div class="container">
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-toggle="collapse" data-target="#navbarNav1"
			aria-controls="navbarNav1" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<a class="navbar-brand" href="#"> <img
			src="/disleXa/img/isologo/isologo.png" />
		</a>
		<div class="collapse navbar-collapse" id="navbarNav1">
			<ul class="navbar-nav ml-auto">
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

					<a href="#" class="list-group-item active">Bienvenido + Nombre
						Paciente</a> <a href="javascript:void(0);"
						onclick="buscarActividades();"
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

						<p>Once a week we will send you a summary of the most useful
							news</p>

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
					<!--                             <div class="divider-new"> -->
					<!--                                 <h2 class="h2-responsive">What's new?</h2> -->
					<!--                             </div> -->

					<div id="divContenidoPaciente" class="jumbotron"></div>
				</div>
			</div>
			<!--/.First row-->
			<br>

			<!--Second row-->
			<div class="row">
				<!--First columnn-->
				<div class="col-lg-4">
					<!--Card-->
					<div class="card  wow fadeIn" data-wow-delay="0.2s">

						<!--Card image-->
						<div class="view overlay hm-white-slight">
							<img
								src="http://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/img%20(32).jpg"
								class="img-fluid" alt=""> <a href="#">
								<div class="mask"></div>
							</a>
						</div>
						<!--/.Card image-->

						<!--Card content-->
						<div class="card-block">
							<!--Title-->
							<h4 class="card-title">Product title</h4>
							<!--Text-->
							<p class="card-text">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit.</p>
							<a href="#" class="btn btn-default">Buy now for <strong>10$</strong></a>
						</div>
						<!--/.Card content-->

					</div>
					<!--/.Card-->
				</div>
				<!--First columnn-->

				<!--Second columnn-->
				<div class="col-lg-4">
					<!--Card-->
					<div class="card  wow fadeIn" data-wow-delay="0.4s">

						<!--Card image-->
						<div class="view overlay hm-white-slight">
							<img
								src="http://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/img%20(38).jpg"
								class="img-fluid" alt=""> <a href="#">
								<div class="mask"></div>
							</a>
						</div>
						<!--/.Card image-->

						<!--Card content-->
						<div class="card-block">
							<!--Title-->
							<h4 class="card-title">Product title</h4>
							<!--Text-->
							<p class="card-text">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit.</p>
							<a href="#" class="btn btn-default">Buy now for <strong>30$</strong></a>
						</div>
						<!--/.Card content-->

					</div>
					<!--/.Card-->
				</div>
				<!--Second columnn-->

				<!--Third columnn-->
				<div class="col-lg-4">
					<!--Card-->
					<div class="card  wow fadeIn" data-wow-delay="0.6s">

						<!--Card image-->
						<div class="view overlay hm-white-slight">
							<img
								src="http://mdbootstrap.com/img/Photos/Horizontal/E-commerce/Products/img%20(1).jpg"
								class="img-fluid" alt=""> <a href="#">
								<div class="mask"></div>
							</a>
						</div>
						<!--/.Card image-->

						<!--Card content-->
						<div class="card-block">
							<!--Title-->
							<h4 class="card-title">Product title</h4>
							<!--Text-->
							<p class="card-text">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit.</p>
							<a href="#" class="btn btn-default">Buy now for <strong>20$</strong></a>
						</div>
						<!--/.Card content-->

					</div>
					<!--/.Card-->
				</div>
				<!--Third columnn-->
			</div>
			<!--/.Second row-->

		</div>
		<!--/.Main column-->

	</div>
</div>
<!--/.Main layout--> </main>


<script>
	function buscarActividades(){
		$.ajax({
			url : 'paciente/actividades',
			type : "GET",
			contentType : false,
			success: function (data) {
				cargarHTMLContenido(data,'divContenidoPaciente');
			},
			error: function (xhr, ajaxOptions, thrownError) {
				alert("error al cargar actividades");
			}
		});
	}
</script>

<jsp:include page="../include_footer.jsp" />

<jsp:include page="../include_js.jsp" />
