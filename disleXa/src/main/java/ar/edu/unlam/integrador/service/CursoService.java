package ar.edu.unlam.integrador.service;

import ar.edu.unlam.integrador.dao.CursoDao;
import ar.edu.unlam.integrador.entities.Curso;
import ar.edu.unlam.integrador.service.base.BaseService;

public class CursoService extends BaseService{

	private CursoDao cursoDao;
	
	public CursoService(){
		
	}
	
	public Curso obtenerCurso() {
		Curso curso= getCursoDao().obtenerCurso();
		return curso;
	}

	public CursoDao getCursoDao() {
		return cursoDao;
	}

	public void setCursoDao(CursoDao cursoDao) {
		this.cursoDao = cursoDao;
	}
	
	
	
}
