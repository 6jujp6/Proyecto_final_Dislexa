package ar.edu.unlam.integrador.service;

import java.util.List;

import ar.edu.unlam.integrador.dao.AlumnoPacienteDao;
import ar.edu.unlam.integrador.entities.AlumnoPaciente;
import ar.edu.unlam.integrador.entities.Curso;
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
	
	public List<AlumnoPaciente> buscarAlumnoPaciente(String nombre, String apellido, Long dni, List<Curso> cursos){
		List<AlumnoPaciente> alumnoPaciente = getAlumnoPacienteDao().buscarAlumnoPaciente(nombre, apellido, dni, cursos);
		return alumnoPaciente;
	}

	public void altaAlumnoPaciente(AlumnoPaciente alumnoPaciente) {
		getAlumnoPacienteDao().agregarAlumnoPaciente(alumnoPaciente);
	}

	public AlumnoPaciente buscarPorId(int id) {
		return getAlumnoPacienteDao().obtenerPorId(id);
	}
}
