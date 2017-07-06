package ar.edu.unlam.integrador.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import ar.edu.unlam.integrador.dao.base.BaseDao;
import ar.edu.unlam.integrador.entities.AlumnoPaciente;
import ar.edu.unlam.integrador.entities.Institucion;
import ar.edu.unlam.integrador.entities.Usuario;

public class AlumnoPacienteDao extends BaseDao<AlumnoPaciente>{
    
	@SuppressWarnings("unchecked")
	public List<AlumnoPaciente> buscarAlumnoPaciente(){
		 List<AlumnoPaciente> listaResultado = new ArrayList<AlumnoPaciente>();
		Session s = getSessionFactory().getCurrentSession();
        Criteria criteria = s.createCriteria(AlumnoPaciente.class, "ALUMNOPACIENTE");
  
//        //TODO busca 1 siempre, pasar por parametros
//        Criterion r1 = Restrictions.eq("ALUMNOPACIENTE.idUsuario", 6);
//        criteria.add(r1);
        
        criteria.createAlias("curso", "CURSO");
        Criterion r1 = Restrictions.eq("CURSO.idCurso", 1);
        criteria.add(r1);
        
        listaResultado.addAll(criteria.list());
        return listaResultado;
    }

	public void agregarAlumnoPaciente(AlumnoPaciente alumnoPaciente) {
		Session s = getSessionFactory().getCurrentSession();
		
		s.save(alumnoPaciente);
	}
	
	public AlumnoPaciente obtenerPorId(int id) {
		Session s = getSessionFactory().getCurrentSession();
		AlumnoPaciente alumnoPaciente = (AlumnoPaciente) s.get(AlumnoPaciente.class, id);
		return alumnoPaciente;
	}
}
