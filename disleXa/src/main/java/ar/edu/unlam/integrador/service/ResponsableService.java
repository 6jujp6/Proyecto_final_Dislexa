package ar.edu.unlam.integrador.service;

import ar.edu.unlam.integrador.dao.ResponsableDao;
import ar.edu.unlam.integrador.service.base.BaseService;

public class ResponsableService extends BaseService{
	private ResponsableDao responsableDao;
	
	public ResponsableService(){
		
	}

	public ResponsableDao getResponsableDao() {
		return responsableDao;
	}

	public void setResponsableDao(ResponsableDao responsableDao) {
		this.responsableDao = responsableDao;
	}	
}
