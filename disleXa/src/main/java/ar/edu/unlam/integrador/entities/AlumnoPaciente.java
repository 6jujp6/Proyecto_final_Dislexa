package ar.edu.unlam.integrador.entities;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;


@Entity
@Table(name="alumno_paciente")
@PrimaryKeyJoinColumn(name = "idAlumnoPaciente", referencedColumnName = "idPersona")
@NamedQueries(value={
        @NamedQuery(
                name="obtenerTodoAlumnoPaciente", 
                query="SELECT object(e) FROM AlumnoPaciente e "
        )
})
public class AlumnoPaciente extends Persona{
    
    @ManyToOne(cascade=CascadeType.ALL, optional=false)
    @JoinColumn(name="idCurso")
    private Curso curso;
	
    @ManyToOne(cascade=CascadeType.ALL, optional=false)
    @JoinColumn(name="idResponsable")
    private Responsable responsable;
    
	public Curso getCurso() {
		return curso;
	}

	public void setCurso(Curso curso) {
		this.curso = curso;
	}

	public Responsable getResponsable() {
		return responsable;
	}

	public void setResponsable(Responsable responsable) {
		this.responsable = responsable;
	}	
}
