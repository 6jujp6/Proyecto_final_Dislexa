  <div class="container">
    
     
    <h4 id="text" class="text-jutify">Escribe sobre lo que quieras sobre esta figura
       <input class="btn btn-info" onclick="responsiveVoice.speak(document.getElementById('text').innerText, 'Spanish Female');" type="button" value="Leer"  />
    </h4>
    <br>
    
    <img class="img-responsive center-block" src="/disleXa/images/parque.jpg" alt="Parque" >
    
    <br>
    
      <div class="form-group">
        <label for="comment">Escribe aquí:</label>
        <textarea class="form-control" rows="5" id="comment"></textarea>
      </div>
    
    <br>
    <label for="comment">Avance:</label>
    <div class="progress">          
      <div class="progress-bar" role="progressbar" aria-valuenow="70"
          aria-valuemin="0" aria-valuemax="100" style="width:8.33%">
        8.33%
      </div>
    </div>

  <ul class="pager">
    <li class="previous"><a href="#">Anterior</a></li> 
    <li class="next"><a href="#">Siguiente</a></li>
  </ul>
 </div>