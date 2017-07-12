<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>



<div class="container">
 <s:hidden name="idEjecEvalActiv" id="idEjecEvalActiv" />
  <s:hidden name="idEjecEval" id="idEjecEval" />
    
    <h4 id="text" class="text-jutify">Aca hay algunas palabras escritas debajo de las imágenes. Te pido que las leas en voz alta.
    <BR><BR>
    Para empezar toca el boton rojo y para finalizar toca el verde.
      <input class="btn btn-info" onclick="responsiveVoice.speak(document.getElementById('text').innerText, 'Spanish Latin American Female');" type="button" value="Leer"/>
    </h4>
    <br>    
    <div class="type_buttons"></div>

     <BR>
     <BR>
     
          <div class="row">
      <div class="col-md-3">
        <div class="thumbnail">            
              <img src="/disleXa/images/perro.jpg" alt="Lights" style="width:100%">
                <div class="caption">
                  <label for="comment">PERRO</label>                    
                </div>            
        </div>
      </div>
      <div class="col-md-3">
        <div class="thumbnail">            
              <img src="/disleXa/images/elefante.jpg" alt="Lights" style="width:100%">
                <div class="caption">
                  <label for="comment">ELEFANTE</label>                    
                </div>            
        </div>
      </div>
      <div class="col-md-3">
        <div class="thumbnail">            
              <img src="/disleXa/images/paloma.jpg" alt="Lights" style="width:100%">
                <div class="caption">
                  <label for="comment">PALOMA</label>                     
                </div>            
        </div>
      </div>
      <div class="col-md-3">
        <div class="thumbnail">            
              <img src="/disleXa/images/gato.jpg" alt="Lights" style="width:100%">
                <div class="caption">
                  <label for="comment">GATO</label>                    
                </div>            
        </div>
      </div>

    </div>
    <br>
    <br>
    
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
 
 
  <script src="/disleXa/js/recorder.js"></script>
  <script src="/disleXa/js/Fr.voice.js"></script>
  <script src="/disleXa/js/jquery.js"></script>
  <script src="/disleXa/js/app.js"></script>
   