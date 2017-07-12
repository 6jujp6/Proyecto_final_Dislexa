<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:if test="${esAlumno}">
	<c:if
		test="${ejecucionEvaluacion !=null && ejecucionEvaluacion.fechaFin == null}">
		<div class="alert alert-success" role="alert">
			Tenés una nueva actividad para realizar!
			<s:hidden name="idEjecEval" id="idEjecEval" />
			<a href="#" class="btn btn-success" onClick="empezar();">Empezar</a>
		</div>
	</c:if>
</c:if>
<c:if
	test="${ejecucionEvaluacion == null || ejecucionEvaluacion.fechaFin != null}">
	<div class="alert alert-warning" role="alert">No tenés
		actividades nuevas.</div>
</c:if>

<script>
	$.getScript("/disleXa/js/actividades.js");

	
</script>