<%@taglib uri="/struts-tags" prefix="s" %>
<div class="row">
	<div class="col-md-12">
		<div class="card">
			<p class="card-header primary-color white-text">Mis cursos activos</p>
	  		<div class="card-block">
				<div class="row">
					<div class="col-md-12">					 				
						<div class="table-responsive">
							<table class="table table-striped" id="grillaCursos"></table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- JQUERY-UI 1.12.1 -->
<script type="text/javascript" src="/disleXa/js/jquery/jquery-ui/jquery-ui.min.js"></script>

<!-- JQGRID 5.1.0 -->
<script type="text/javascript" src="/disleXa/js/jquery/jqGrid/i18n/grid.locale-en.js"></script>
<script type="text/javascript" src="/disleXa/js/jquery/jqGrid/i18n/grid.locale-es.js"></script>
<script type="text/javascript" src="/disleXa/js/jquery/jqGrid/jquery.jqGrid.min.js"></script>

<script>
	$.getScript("/disleXa/js/cursos.js");	
</script>