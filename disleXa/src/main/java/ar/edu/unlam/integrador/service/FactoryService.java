package ar.edu.unlam.integrador.service;

public class FactoryService {
		
	private UsuarioService usuarioService;
	private AlumnoPacienteService alumnoPacienteService;
	private PersonaService personaService;
	private InstitucionService institucionService;
	private CursoService cursoService;

	public FactoryService(UsuarioService usuarioService, AlumnoPacienteService alumnoPacienteService, PersonaService personaService, InstitucionService institucionService, CursoService cursoService){
		super();
		this.usuarioService = usuarioService;
		this.alumnoPacienteService = alumnoPacienteService;
		this.personaService = personaService;
		this.institucionService = institucionService;
		this.cursoService = cursoService;
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
}
