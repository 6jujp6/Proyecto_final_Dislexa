<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

  <div class="container">
  
  <h1 class="text-center">Resultados Evaluacion</h1>    
    <br>
          
    <br>

    <form>
      <div class="row">
          <div class="col-md-6">
          <div class="form-group">
            <label for="usr">Nombre del Alumno:</label>
            <input type="text" class="form-control" id="alumno" readonly>
          </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label for="pwd">Instituto:</label>
            <input type="password" class="form-control" id="instituto" readonly>
          </div>
          </div>
        </div>
        <div>
          <h3>Escritura Espontanea</h3>
          <div class="row">
            <div class="col-md-12">
               <label for="pwd">Texto Libre</label>
               <textarea class="form-control" rows="5" id="111" readonly=""></textarea>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
               <label for="pwd">Texto con Lamina</label>
               <textarea class="form-control" rows="5" id="112" readonly=""></textarea>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">           
               <label for="pwd">Texto con Lamina 1</label>
               <textarea class="form-control" rows="1" id="113a" readonly=""></textarea>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">           
               <label for="pwd">Texto con Lamina 2</label>
               <textarea class="form-control" rows="1" id="113b" readonly=""></textarea>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">           
               <label for="pwd">Texto con Lamina 3</label>
               <textarea class="form-control" rows="1" id="113c" readonly=""></textarea>
            </div>
          </div>
        </div>
        <div>
          <h3>Dictado</h3>
            <div class="row">
              <div class="col-md-4">
                <div class="form-group">
                  <label for="comment">Palabra 1</label>
                  <textarea class="form-control" rows="1" id="palabra1" readonly=""></textarea>
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <label for="comment">Palabra 2</label>
                  <textarea class="form-control" rows="1" id="palabra2" readonly=""></textarea>
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <label for="comment">Palabra 3</label>
                  <textarea class="form-control" rows="1" id="palabra3" readonly=""></textarea>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-4">
                <div class="form-group">
                  <label for="comment">Palabra 4</label>
                  <textarea class="form-control" rows="1" id="palabra4" readonly=""></textarea>
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <label for="comment">Palabra 5</label>
                  <textarea class="form-control" rows="1" id="palabra5" readonly=""></textarea>
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <label for="comment">Palabra 6</label>
                  <textarea class="form-control" rows="1" id="palabra6" readonly=""></textarea>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-4">
                <div class="form-group">
                  <label for="comment">Palabra 7</label>
                  <textarea class="form-control" rows="1" id="palabra7" readonly=""></textarea>
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <label for="comment">Palabra 8</label>
                  <textarea class="form-control" rows="1" id="palabra8" readonly=""></textarea>
                </div>
              </div>
              <div class="col-md-4">
                <div class="form-group">
                  <label for="comment">Palabra 9</label>
                  <textarea class="form-control" rows="1" id="palabra9" readonly=""></textarea>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-12">
                <div class="form-group">
                  <label for="comment">Oracion 1</label>
                  <textarea class="form-control" rows="1" id="oracion1" readonly=""></textarea>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-12">
                <div class="form-group">
                  <label for="comment">Oracion 2</label>
                  <textarea class="form-control" rows="1" id="oracion1" readonly=""></textarea>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-12">
                <div class="form-group">
                  <label for="comment">Copia de oracion</label>
                  <textarea class="form-control" rows="1" id="copiaoracion" readonly=""></textarea>
                </div>
              </div>
            </div>
        </div>
    </form>
  
  
 </div>
 
