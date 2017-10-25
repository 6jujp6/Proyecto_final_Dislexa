<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!-- Modal Reporte -->
<div id="modalAnalisisRiesgo" class="modal fade" role="dialog">
	<div class="modal-dialog modal-lg">

	<!-- Modal content-->
	<div class="modal-content">
  		<div class="modal-header">
    		<button type="button" class="close" data-dismiss="modal">&times;</button>
    		<h4 class="modal-title">Análisis de Riesgo de Dislexia</h4>
  		</div>
  		<div class="modal-body">
		 	<ul class="list-group" id="myList">
				<li class="list-group-item">NOMBRE: <s:text	name="analisisRiesgo.nombre"></s:text><p></p></li>
				<li class="list-group-item">EDAD: <s:text name="analisisRiesgo.edad"></s:text><p></p></li>
				<li class="list-group-item">CURSO: <s:text name="analisisRiesgo.curso"></s:text><p></p></li>					
			</ul>
			<br>
			<div class="alert alert-info" role="alert"><s:text name="analisisRiesgo.riesgo"></s:text></div>
   		</div>
		<div class="modal-footer">
	    	<button type="button" class="btn btn-default" onClick="">Imprimir</button>
	        <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
	    </div>
	</div>
  </div>
</div>

<script type="text/javascript">

$("#modalAnalisisRiesgo").modal("show");

</script>
							