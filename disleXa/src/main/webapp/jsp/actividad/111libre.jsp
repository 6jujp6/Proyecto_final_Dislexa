<div class="container">
    
    <h1 class="text-center">¡Bienvenido!</h1>    
    <br>
   
    <h4 id="text" class="text-jutify">Escribe sobre lo que quieras 
       <input class="btn btn-info" onclick="responsiveVoice.speak(document.getElementById('text').innerText, 'Spanish Female');" type="button" value="Leer"  />
    </h4>
   <br>

    <form>
      <div class="form-group">
        <label for="comment">Escribe aquí:</label>
        <textarea class="form-control" rows="5" id="comment"></textarea>
      </div>
    </form>
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
    <li class="next"><a href="test112.html">Siguiente</a></li>
  </ul>
 </div>