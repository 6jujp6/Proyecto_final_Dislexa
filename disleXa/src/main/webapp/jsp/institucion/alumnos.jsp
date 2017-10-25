<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="row">
	<div class="col-md-12">
		<div class="panel panel-primary">
			<div class="panel-heading">Filtros</div>
	  		<div class="panel-body">
	   			<div class="row">
	   				<div class="col-md-6">
		   				<!-- <input type="text" class="form-control" placeholder="Nombre" id="nombre" name="nombre"/> -->
		   				<s:textfield type="text" class="form-control" name="nombre" placeholder="Nombre" id="nombre"/>
		   			</div>
		   			<div class="col-md-6">
		   				<!-- <input type="text" class="form-control" placeholder="Apellido" id="apellido" name="apellido"/>-->
		   				<s:textfield type="text" class="form-control" name="apellido" placeholder="Apellido" id="apellido"/>
   					</div>
	   			</div>
	   			<br>
	   			<div class="row">
		   			<div class="col-md-2">
						<select class="form-control" id="cboCurso"/>
		   			</div>
		   			<div class="col-md-10">		   				
		   				<s:textfield type="text" class="form-control" name="dni" placeholder="Documento" id="dni"/>		   			</div>		   							
  				</div>
  				<br>
  				<div class="row">
	   				<div class="col-md-6"></div>
	   				<div class="col-md-6">
	   					<button type="button" class="btn btn-primary pull-right" onclick="setearGrillaAlumnos();">Buscar</button>
	   				</div>
	   			</div>	   			
			</div>
		</div>
	</div>	
</div>
<div class="row">
	<div class="col-md-12">
		<div class="table-responsive">
			<table class="table table-striped" id="grillaAlumnos"></table>
		</div>
	</div>
</div>
<!-- Trigger the modal with a button -->
<!-- <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>-->

<!-- Modal Resutados -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog modal-lg">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Resultados</h4>
      </div>
      <div class="modal-body">
        <div class="table-responsive">
			<table class="table table-striped" id="grillaResultados"></table>
		</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" onClick="generarReporte();">Generar reporte</button>
         <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
      </div>
    </div>

  </div>
</div>

<div id="divModalReporte"></div>




<!-- JQUERY-UI 1.12.1 -->
<script type="text/javascript" src="/disleXa/js/jquery/jquery-ui/jquery-ui.min.js"></script>

<!-- JQGRID 5.1.0 -->
<script type="text/javascript" src="/disleXa/js/jquery/jqGrid/i18n/grid.locale-en.js"></script>
<script type="text/javascript" src="/disleXa/js/jquery/jqGrid/i18n/grid.locale-es.js"></script>
<script type="text/javascript" src="/disleXa/js/jquery/jqGrid/jquery.jqGrid.min.js"></script>

<script>
	$.getScript("/disleXa/js/alumnos.js");	
</script>