package ar.edu.unlam.integrador.web.action;

import ar.edu.unlam.integrador.web.base.BaseAction;

public class PacienteAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public PacienteAction(){
	}
	
	public String menu(){		
//	FactoryService factory = getFactoryService();
//	//ArchivoAceptadosDto dto = factory.getArchivosAceptadosService().agregarArchivo(getFormularioArchivo());
//	Usuario usuario = factory.getUsuarioService().obtenerUsuario();	
	return "SUCCESS";
	}
	
	public String datosPersonales(){
		return "SUCCESS";
	}
	
	public String mensaje(){
		return "SUCCESS";
	}
	
	public String actividades(){
		return "SUCCESS";
	}
}
