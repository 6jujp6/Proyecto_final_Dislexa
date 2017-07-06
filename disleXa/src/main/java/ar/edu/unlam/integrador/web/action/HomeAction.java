package ar.edu.unlam.integrador.web.action;

import ar.edu.unlam.integrador.entities.Institucion;
import ar.edu.unlam.integrador.entities.TipoUsuario;
import ar.edu.unlam.integrador.entities.Usuario;
import ar.edu.unlam.integrador.service.FactoryService;
import ar.edu.unlam.integrador.web.base.BaseAction;

public class HomeAction extends BaseAction {	

	private static final long serialVersionUID = 1L;
	
	public HomeAction(){		
	}
	
	public String login(){		
		FactoryService factory = getFactoryService();
		
		//TODO OBTENER LOS DATOS DEL FORM, SACAR HARDCODE		
		Usuario usuario = factory.getUsuarioService().buscarPorLogin("info@escuela7.com","123");
		Institucion ins= null;
		if (usuario==null)
			return "ERROR"; //NO EXISTE USUARIO		
		else{
			session.put("usuario", usuario);
			
			if (session.containsKey("usuario"))
			   ins=(Institucion)session.get("usuario");
			
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
}
