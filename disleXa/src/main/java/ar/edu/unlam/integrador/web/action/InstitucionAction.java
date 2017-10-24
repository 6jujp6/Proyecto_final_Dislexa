package ar.edu.unlam.integrador.web.action;

import java.util.List;

import ar.edu.unlam.integrador.entities.Curso;
import ar.edu.unlam.integrador.entities.Institucion;
import ar.edu.unlam.integrador.service.FactoryService;
import ar.edu.unlam.integrador.web.base.BaseAction;

public class InstitucionAction extends BaseAction {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<Curso> cursos = null;
	

	public InstitucionAction(){
		
	}
	
	public String misAlumnos(){
		return "SUCCESS";
	}
	
	public String misCursos(){
		return "SUCCESS";
	}
	
	public List<Curso> getListaCursosResultado() {
		return cursos;
	}

	public void setListaCursosResultado(List<Curso> cursos) {
		this.cursos = cursos;
	}
	
	public String listarCursos(){
		FactoryService factory = getFactoryService();
		
		Institucion institucion = new Institucion();
		if(session.containsKey("usuario"))
			institucion = (Institucion) session.get("usuario");
		
		List<Curso> lista = factory.getCursoService().buscarCursosPorInstitucion(institucion); 
		setListaCursosResultado(lista);
		
		return SUCCESS;
	}
	
	public String datosPersonales(){
		return "SUCCESS";
	}
	
	public String historico(){
		return "SUCCESS";
	}
		
}
