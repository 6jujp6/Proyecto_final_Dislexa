<%@taglib uri="/struts-tags" prefix="s"%>
<div class="card wow fadeInRight">
	<div class="card-block">
		<!--Header-->
		<div class="text-center">
			<h3>Iniciar Sesion:</h3>
			<hr>
		</div>

		<!--Body-->
		<form action="" role="form" class="form-horizontal">
			<div class="md-form">
				<i class="fa fa-envelope prefix"></i>
				<input type="email" id="email" type="email" class="form-control validate" name="email"/>
				<label for="email">Escribe tu email</label>
			</div>
	
			<div class="md-form">
				<i class="fa fa-lock prefix"></i>
				<input type="password" class="form-control validate" id="pass"/>
				<!--<s:textfield type="password" class="form-control validate" name="password" id="pass"/>-->
				<label for="password">Contraseña</label>
			</div>
	
			<div class="text-center">
				<button type="button" onclick="login();"
					class="btn btn-primary btn-lg waves-effect waves-light">Acceder</button>
				<hr>
				<label for="checkbox1">Olvidaste tu contraseña? <a href="">Click
						Aqui</a></label>
			</div>
		</form>
	</div>
</div>




