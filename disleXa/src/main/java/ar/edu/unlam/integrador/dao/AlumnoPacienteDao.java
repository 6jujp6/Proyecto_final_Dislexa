package ar.edu.unlam.integrador.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.FetchMode;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

import ar.edu.unlam.integrador.dao.base.BaseDao;
import ar.edu.unlam.integrador.entities.AlumnoPaciente;
import ar.edu.unlam.integrador.entities.Curso;
import ar.edu.unlam.integrador.entities.Usuario;

public class AlumnoPacienteDao extends BaseDao<AlumnoPaciente>{
    
	public void agregarAlumnoPaciente(AlumnoPaciente alumnoPaciente) {
		Session s = getSessionFactory().getCurrentSession();
		
		s.save(alumnoPaciente);
	}
	
	public AlumnoPaciente obtenerPorId(int id) {
		Session s = getSessionFactory().getCurrentSession();
		AlumnoPaciente alumnoPaciente = (AlumnoPaciente) s.get(AlumnoPaciente.class, id);
		return alumnoPaciente;
	}
	
	@SuppressWarnings("unchecked")
	public List<AlumnoPaciente> buscarAlumnoPaciente(String nombre, String apellido, Long dni, List<Curso> cursos, Curso cursoSel){
		Session s = getSessionFactory().getCurrentSession();
			List<AlumnoPaciente> listaResultado = new ArrayList<AlumnoPaciente>();
			Criteria criteria = s.createCriteria(Usuario.class, "USUARIO");
			
			if(nombre!=null && !nombre.equals("")){
		        Criterion r1 = Restrictions.like("USUARIO.nombre", nombre, MatchMode.ANYWHERE);
		        criteria.add(r1);
			}
	        
			if(apellido!=null && !apellido.equals("")){
				Criterion r2 = Restrictions.like("USUARIO.apellido", apellido, MatchMode.ANYWHERE);
		        criteria.add(r2);
			}
	        
			if(dni!=null){
		        Criterion r3 = Restrictions.eq("USUARIO.dni", dni);
		        criteria.add(r3);
			}
			
			//ES ALUMNO SI TIENE CURSO ASIGNADO
			criteria.createAlias("curso", "CURSO");
			Criterion r4 = Restrictions.isNotNull("CURSO.idCurso");
			criteria.add(r4);
			
			Criterion r5 = Restrictions.in("USUARIO.curso",cursos);
	    	criteria.add(r5);
	    	

			if(cursoSel!=null){
				Criterion r6 = Restrictions.eq("USUARIO.curso",cursoSel);
		    	criteria.add(r6);
			}
			
	    	
	    	
	        listaResultado.addAll(criteria.list());
	        return listaResultado;
	}
}
