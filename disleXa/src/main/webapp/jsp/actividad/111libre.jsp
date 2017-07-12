<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="container">
 <s:hidden name="idEjecEvalActiv" id="idEjecEvalActiv" />
  <s:hidden name="idEjecEval" id="idEjecEval" />
    <h4 id="text" class="text-jutify">Escribe sobre lo que quieras 
       <input class="btn btn-info" onclick="responsiveVoice.speak(document.getElementById('text').innerText, 'Spanish Female');" type="button" value="Leer"  />
    </h4>
   <br>

  
      <div class="form-group">
        <label for="comment">Escribe aquí:</label>
        <textarea class="form-control" rows="5" id="texto" name="texto"></textarea>
      </div>
    
    <br>
    <label for="comment">Avance:</label>
    <div class="progress">          
      <div class="progress-bar" role="progressbar" aria-valuenow="70"
          aria-valuemin="0" aria-valuemax="100" style="width:00%">
        0%
      </div>
    </div>

  <ul class="pager">
    <!-- <li class="previous"><a href="#">Previous</a></li> -->
    <li class="next"><a href="#" onClick="guardarResultado();">Siguiente</a></li>
  </ul>
 </div>
  <script>
	$.getScript("/disleXa/js/actividades.js");
</script>