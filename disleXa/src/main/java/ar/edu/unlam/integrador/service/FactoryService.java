package ar.edu.unlam.integrador.service;

public class FactoryService {
		
	private UsuarioService usuarioService;
	private AlumnoPacienteService alumnoPacienteService;
	private PersonaService personaService;
	private InstitucionService institucionService;
	private CursoService cursoService;
	private ActividadService actividadService;
	private EvaluacionService evaluacionService;
	private EjecucionEvaluacionService ejecucionEvaluacionService;
	private EjecucionEvaluacionActividadService ejecucionEvaluacionActividadService;

	public FactoryService(UsuarioService usuarioService, AlumnoPacienteService alumnoPacienteService, PersonaService personaService, InstitucionService institucionService, CursoService cursoService, ActividadService actividadService, EvaluacionService evaluacionService, EjecucionEvaluacionService ejecucionEvaluacionService, EjecucionEvaluacionActividadService ejecucionEvaluacionActividadService){
		super();
		this.usuarioService = usuarioService;
		this.alumnoPacienteService = alumnoPacienteService;
		this.personaService = personaService;
		this.institucionService = institucionService;
		this.cursoService = cursoService;
		this.actividadService = actividadService;
		this.evaluacionService = evaluacionService;
		this.ejecucionEvaluacionService = ejecucionEvaluacionService;
		this.ejecucionEvaluacionActividadService = ejecucionEvaluacionActividadService;
	}

	public UsuarioService getUsuarioService() {
		return usuarioService;
	}

	public void setUsuarioService(UsuarioService usuarioService) {
		this.usuarioService = usuarioService;
	}

	public AlumnoPacienteService getAlumnoPacienteService() {
		return alumnoPacienteService;
	}

	public void setAlumnoPacienteService(AlumnoPacienteService alumnoPacienteService) {
		this.alumnoPacienteService = alumnoPacienteService;
	}

	public PersonaService getPersonaService() {
		return personaService;
	}

	public void setPersonaService(PersonaService personaService) {
		this.personaService = personaService;
	}

	public InstitucionService getInstitucionService() {
		return institucionService;
	}

	public void setInstitucionService(InstitucionService institucionService) {
		this.institucionService = institucionService;
	}

	public CursoService getCursoService() {
		return cursoService;
	}

	public void setCursoService(CursoService cursoService) {
		this.cursoService = cursoService;
	}

	public ActividadService getActividadService() {
		return actividadService;
	}

	public void setActividadService(ActividadService actividadService) {
		this.actividadService = actividadService;
	}

	public EvaluacionService getEvaluacionService() {
		return evaluacionService;
	}

	public void setEvaluacionService(EvaluacionService evaluacionService) {
		this.evaluacionService = evaluacionService;
	}

	public EjecucionEvaluacionService getEjecucionEvaluacionService() {
		return ejecucionEvaluacionService;
	}

	public void setEjecucionEvaluacionService(EjecucionEvaluacionService ejecucionEvaluacionService) {
		this.ejecucionEvaluacionService = ejecucionEvaluacionService;
	}

	public EjecucionEvaluacionActividadService getEjecucionEvaluacionActividadService() {
		return ejecucionEvaluacionActividadService;
	}

	public void setEjecucionEvaluacionActividadService(
			EjecucionEvaluacionActividadService ejecucionEvaluacionActividadService) {
		this.ejecucionEvaluacionActividadService = ejecucionEvaluacionActividadService;
	}
}
