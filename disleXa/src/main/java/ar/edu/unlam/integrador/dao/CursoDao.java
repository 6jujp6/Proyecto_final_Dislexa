package ar.edu.unlam.integrador.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import ar.edu.unlam.integrador.dao.base.BaseDao;
import ar.edu.unlam.integrador.entities.Curso;
import ar.edu.unlam.integrador.entities.Institucion;

public class CursoDao extends BaseDao<Curso>{
	
    public Curso obtenerCurso(){
        Session s = getSessionFactory().getCurrentSession();
        Criteria criteria = s.createCriteria(Curso.class, "CURSO");
  
        //TODO busca 1 siempre, pasar por parametros
        Criterion r1 = Restrictions.eq("CURSO.idCurso", 1);
        criteria.add(r1);
        
        Curso res = (Curso) criteria.uniqueResult();
        return res;
    }
    
    @SuppressWarnings("unchecked")
	public List<Curso> obtenerCursosPorInstitucion(Institucion institucion){
    	List<Curso> listaResultado = new ArrayList<Curso>();
    	Session s = getSessionFactory().getCurrentSession();
    	Criteria criteria = s.createCriteria(Curso.class, "CURSO");
    	
    	Criterion r1 = Restrictions.eq("CURSO.institucion", institucion);
    	criteria.add(r1);
    	
    	listaResultado.addAll(criteria.list());
    	return listaResultado;    	
    }    
}
