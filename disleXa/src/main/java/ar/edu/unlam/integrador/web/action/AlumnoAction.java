package ar.edu.unlam.integrador.web.action;

import ar.edu.unlam.integrador.web.base.BaseAction;

import java.util.List;

import ar.edu.unlam.integrador.entities.AlumnoPaciente;
import ar.edu.unlam.integrador.entities.Institucion;
import ar.edu.unlam.integrador.service.FactoryService;

public class AlumnoAction extends BaseAction{

	private static final long serialVersionUID = 1L;
	private List<AlumnoPaciente> alumnos = null;

	public AlumnoAction(){		
	}
	
	public String buscarAlumnos(){
		FactoryService factory = getFactoryService();
		Institucion institucion = null;
		
		 if (session.containsKey("usuario"))
			    institucion=(Institucion)session.get("usuario");
		
		List<AlumnoPaciente> lista = factory.getAlumnoPacienteService().buscarAlumnoPaciente();
		setListaAlumnoResultado(lista);
		
		return SUCCESS;
	}

    public List<AlumnoPaciente> getListaAlumnoResultado() {
        return alumnos;
    }
    public void setListaAlumnoResultado(List<AlumnoPaciente> lista) {
    	alumnos = lista;
    }


}
