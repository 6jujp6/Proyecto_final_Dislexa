package ar.edu.unlam.integrador.dao.base;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;


@Transactional
public class BaseDao<E> {
	
	 private final Logger log = LogManager.getLogger(this.getClass());
	 private SessionFactory sessionFactory;
	 
	 public void insert(E objecto) {
	        try {
	            getSessionFactory().getCurrentSession().persist(objecto);
	        } catch (Exception e) {
	            log.debug(e);
	        }
	    }

	 public Object update(E objecto) {
	        Object o = null;
	        try {
	            o = getSessionFactory().getCurrentSession().merge(objecto);
	        } catch (Exception e) {
	            log.debug(e);
	        }
	        return o;
	    }
 
	 public void delete(E objecto) {
	        try{
	            getSessionFactory().getCurrentSession().delete(objecto);
	        }catch (Exception e) {
	            log.debug(e);
	        }
	    }
	 
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}	 
}