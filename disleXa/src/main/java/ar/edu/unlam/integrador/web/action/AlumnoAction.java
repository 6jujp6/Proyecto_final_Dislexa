package ar.edu.unlam.integrador.web.action;

import ar.edu.unlam.integrador.web.base.BaseAction;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import ar.edu.unlam.integrador.entities.AlumnoPaciente;
import ar.edu.unlam.integrador.entities.Curso;
import ar.edu.unlam.integrador.entities.EjecucionEvaluacion;
import ar.edu.unlam.integrador.entities.EjecucionEvaluacionActividad;
import ar.edu.unlam.integrador.entities.Institucion;
import ar.edu.unlam.integrador.service.FactoryService;

public class AlumnoAction extends BaseAction{

	private static final long serialVersionUID = 1L;
	private List<AlumnoPaciente> alumnos = null;
	
	private String nombre;
	private String apellido;
	private Long dni;
	private boolean esAlumno;
	private EjecucionEvaluacion ejecucionEvaluacion = new EjecucionEvaluacion();
	private int idEjecEvalActiv;
	private int idEjecEval;
	private String resolucion;

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
	
	public String buscarActividades(){
		FactoryService factory = getFactoryService();
		
		AlumnoPaciente alumnoPaciente= null;
		if (session.containsKey("usuario"))
			alumnoPaciente=(AlumnoPaciente)session.get("usuario");
		
		setEsAlumno(alumnoPaciente.getCurso()!=null);	
		
		ejecucionEvaluacion = factory.getEjecucionEvaluacionService().obtenerPorAlumno(alumnoPaciente);
		
		if(ejecucionEvaluacion!=null){
			List<EjecucionEvaluacionActividad> actividadesEvaluacion = new ArrayList<EjecucionEvaluacionActividad>();
			actividadesEvaluacion = factory.getEjecucionEvaluacionActividadService().obtenerActividadesPorEjecucionEvaluacion(ejecucionEvaluacion);
			//seteo el id de la evaluacion
			if(ejecucionEvaluacion.getFechaFin()==null)
				setIdEjecEval(ejecucionEvaluacion.getIdEjecucionEvaluacion());
			for(EjecucionEvaluacionActividad actividad : actividadesEvaluacion){
				if(actividad.getResolucion()==null){
					//seteo el id de la actividad 
					setIdEjecEvalActiv(actividad.getIdEjecucionEvaluacionActividad());					
				}
			}
		}		
		return SUCCESS;
	}
	
	public String guardarResultado(){
		FactoryService factory = getFactoryService();		
		
		//obtengo la ejecucion de la evaluacion
		ejecucionEvaluacion = factory.getEjecucionEvaluacionService().obtenerPorId(getIdEjecEval());
		//obtengo la lista de actividades de la evaluacion
		List<EjecucionEvaluacionActividad> actividadesEvaluacion = new ArrayList<EjecucionEvaluacionActividad>();
		actividadesEvaluacion = factory.getEjecucionEvaluacionActividadService().obtenerActividadesPorEjecucionEvaluacion(ejecucionEvaluacion);
		
		if(resolucion!=null){ //no es la primer actividad
			for(EjecucionEvaluacionActividad actividad : actividadesEvaluacion){
				if(actividad.getIdEjecucionEvaluacionActividad()==idEjecEvalActiv){
					actividad.setResolucion(resolucion);
					factory.getEjecucionEvaluacionActividadService().actualizar(actividad);
					setResolucion(null);					
					}
				
			}
		}
		else{
			//es la primer actividad, guardo fecha de inicio
			ejecucionEvaluacion.setFechaInicio(new Date());
			factory.getEjecucionEvaluacionService().actualizar(ejecucionEvaluacion);
		}
		for(EjecucionEvaluacionActividad actividad : actividadesEvaluacion){
			if(actividad.getResolucion()==null){					
				//seteo el id de la actividad 
				setIdEjecEvalActiv(actividad.getIdEjecucionEvaluacionActividad());		
				return actividad.getActividad().getNombreJSP();
			}
		}
		//no hay mas actividades para realizar, seteo fecha fin
		ejecucionEvaluacion.setFechaFin(new Date());
		ejecucionEvaluacion.setPendienteDiagnostico(true);
		factory.getEjecucionEvaluacionService().actualizar(ejecucionEvaluacion);
		return "FIN_EVALUACION";
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

	public boolean isEsAlumno() {
		return esAlumno;
	}

	public void setEsAlumno(boolean esAlumno) {
		this.esAlumno = esAlumno;
	}

	public EjecucionEvaluacion getEjecucionEvaluacion() {
		return ejecucionEvaluacion;
	}

	public void setEjecucionEvaluacion(EjecucionEvaluacion ejecucionEvaluacion) {
		this.ejecucionEvaluacion = ejecucionEvaluacion;
	}

	public int getIdEjecEvalActiv() {
		return idEjecEvalActiv;
	}

	public void setIdEjecEvalActiv(int idEjecEvalActiv) {
		this.idEjecEvalActiv = idEjecEvalActiv;
	}

	public String getResolucion() {
		return resolucion;
	}

	public void setResolucion(String resolucion) {
		this.resolucion = resolucion;
	}

	public int getIdEjecEval() {
		return idEjecEval;
	}

	public void setIdEjecEval(int idEjecEval) {
		this.idEjecEval = idEjecEval;
	}		
}
