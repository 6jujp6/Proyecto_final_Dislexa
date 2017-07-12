package ar.edu.unlam.integrador.web.action;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import ar.edu.unlam.integrador.entities.Actividad;
import ar.edu.unlam.integrador.entities.EjecucionEvaluacion;
import ar.edu.unlam.integrador.entities.EjecucionEvaluacionActividad;
import ar.edu.unlam.integrador.entities.Evaluacion;
import ar.edu.unlam.integrador.entities.TipoUsuario;
import ar.edu.unlam.integrador.entities.Usuario;
import ar.edu.unlam.integrador.service.FactoryService;
import ar.edu.unlam.integrador.web.base.BaseAction;

public class HomeAction extends BaseAction {	

	private static final long serialVersionUID = 1L;
	private String email, pass;
	
	public HomeAction(){
		
	}
	
	public String login(){		
		FactoryService factory = getFactoryService();
	
		Usuario usuario = factory.getUsuarioService().buscarPorLogin(email,pass);
		if (usuario==null)
			return "ERROR"; //NO EXISTE USUARIO		
		else{
			session.put("usuario", usuario);
			
			TipoUsuario tipo = TipoUsuario.obtenerPorTipoObjeto(usuario.getClass());
			switch(tipo){
				case ALUMNO_PACIENTE:
					return "ALUMNO_PACIENTE";
				case INSTITUCION:
					return "INSTITUCION";
				//TODO MAPEAR ENTIDAD PROFESIONAL Y RETORNAR RESULT TIPO "PROFESIONAL"	
				default:
					return "PROFESIONAL";
			}
		}
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}	
}
