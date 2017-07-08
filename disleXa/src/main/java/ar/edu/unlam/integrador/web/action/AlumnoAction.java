package ar.edu.unlam.integrador.web.action;

import ar.edu.unlam.integrador.web.base.BaseAction;

import java.util.List;

import ar.edu.unlam.integrador.entities.AlumnoPaciente;
import ar.edu.unlam.integrador.entities.Curso;
import ar.edu.unlam.integrador.entities.Institucion;
import ar.edu.unlam.integrador.service.FactoryService;

public class AlumnoAction extends BaseAction{

	private static final long serialVersionUID = 1L;
	private List<AlumnoPaciente> alumnos = null;
	
	private String nombre;
	private String apellido;
	private Long dni;

	public AlumnoAction(){		
	}
	
	public String buscarAlumnos(){
		FactoryService factory = getFactoryService();	
				
		Institucion institucion = null;
		if (session.containsKey("usuario"))
			institucion=(Institucion)session.get("usuario");
		 
		List<Curso> cursos = factory.getCursoService().buscarCursosPorInstitucion(institucion);
		
		List<AlumnoPaciente> lista = factory.getAlumnoPacienteService().buscarAlumnoPaciente(nombre, apellido,dni, cursos);
		setListaAlumnoResultado(lista);
		
		return SUCCESS;
	}

    public List<AlumnoPaciente> getListaAlumnoResultado() {
        return alumnos;
    }
    public void setListaAlumnoResultado(List<AlumnoPaciente> lista) {
    	alumnos = lista;
    }

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public Long getDni() {
		return dni;
	}

	public void setDni(Long dni) {
		this.dni = dni;
	}    
}
