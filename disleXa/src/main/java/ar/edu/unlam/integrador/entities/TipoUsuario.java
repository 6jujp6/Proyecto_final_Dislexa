package ar.edu.unlam.integrador.entities;

public enum TipoUsuario {
	ALUMNO_PACIENTE,
	PROFESIONAL,
	INSTITUCION;

	public static TipoUsuario obtenerPorTipoObjeto(Class<? extends Usuario> clase) {
		if(clase.getName()=="ar.edu.unlam.integrador.entities.AlumnoPaciente")
			return ALUMNO_PACIENTE;
		else if(clase.getName()=="ar.edu.unlam.integrador.entities.Institucion")
			return INSTITUCION;
		
		return PROFESIONAL;
	}
}