package ar.edu.unlam.integrador.service;

import java.util.List;

import ar.edu.unlam.integrador.dao.AlumnoPacienteDao;
import ar.edu.unlam.integrador.entities.AlumnoPaciente;
import ar.edu.unlam.integrador.entities.AnalisisRiesgo;
import ar.edu.unlam.integrador.entities.Curso;
import ar.edu.unlam.integrador.entities.EjecucionEvaluacionActividad;
import ar.edu.unlam.integrador.service.base.BaseService;

public class AlumnoPacienteService extends BaseService{
	
	private AlumnoPacienteDao alumnoPacienteDao;
	
	public AlumnoPacienteService(){
		
	}

	public AlumnoPacienteDao getAlumnoPacienteDao() {
		return alumnoPacienteDao;
	}

	public void setAlumnoPacienteDao(AlumnoPacienteDao alumnoPacienteDao) {
		this.alumnoPacienteDao = alumnoPacienteDao;
	}
	
	public List<AlumnoPaciente> buscarAlumnoPaciente(String nombre, String apellido, Long dni, List<Curso> cursos, Curso cursoSel){
		List<AlumnoPaciente> alumnoPaciente = getAlumnoPacienteDao().buscarAlumnoPaciente(nombre, apellido, dni, cursos, cursoSel);
		return alumnoPaciente;
	}

	public void altaAlumnoPaciente(AlumnoPaciente alumnoPaciente) {
		getAlumnoPacienteDao().agregarAlumnoPaciente(alumnoPaciente);
	}

	public AlumnoPaciente buscarPorId(int id) {
		return getAlumnoPacienteDao().obtenerPorId(id);
	}

	public AnalisisRiesgo generarAnalisisRiesgo(AlumnoPaciente alumnoPaciente, List<EjecucionEvaluacionActividad> actividadesEvaluacion ) {
		AnalisisRiesgo analisisRiesgo = new AnalisisRiesgo();
		int actividadesOK = 0;
		int porcentaje = 0;
		analisisRiesgo.setNombre(alumnoPaciente.getNombre()+" "+alumnoPaciente.getApellido());
		analisisRiesgo.setCurso(alumnoPaciente.getCurso().getNombre());
		analisisRiesgo.setEdad(7);
		for(EjecucionEvaluacionActividad actividad : actividadesEvaluacion){
			if(actividad.getEvaluacionProfesional().equals("BIEN"))
				actividadesOK++;
		}
		
		porcentaje = (actividadesOK * 100) /actividadesEvaluacion.size();
		if(porcentaje >= 90 && porcentaje<=100)
			analisisRiesgo.setRiesgo("SIN RIESGOS DETECTADOS");
		else{
			if(porcentaje>=70 && porcentaje<=89)
				analisisRiesgo.setRiesgo("RIESGO BAJO DETECTADO");
			else{
				if(porcentaje>=40 && porcentaje<=69)
				analisisRiesgo.setRiesgo("RIESGO MEDIO DETECTADO");
				else
					analisisRiesgo.setRiesgo("RIESGO ALTO DETECTADO");
			}
		}
		analisisRiesgo.setPorcentaje(porcentaje);
		return analisisRiesgo;
	}	
}
