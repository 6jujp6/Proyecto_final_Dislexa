package ar.edu.unlam.integrador.entities;

import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

import ar.edu.unlam.integrador.entities.base.BaseEntity;

@Entity
@Table(name="curso")
@NamedQueries(value={
        @NamedQuery(
                name="obtenerTodoCurso", 
                query="SELECT object(e) FROM Curso e "
        )
})
public class Curso extends BaseEntity{

	@Id
    @Column(name="idCurso", unique=true, nullable=false)
    private int idCurso;
	
	@NotEmpty
	@Column(name="nombre", nullable=false)
    private String nombre;
	
	@NotEmpty
	@Column(name="turno", nullable=false)
    private String turno;
	
	@NotEmpty
	@Column(name="anio", nullable=false)
    private String anio;
	

	@Column(name="estado", nullable=false)
    private String estado;
	
	@Column(name="fecha_vigencia", nullable=false)
    private Date fechaVigencia;
	
	@ManyToOne(cascade=CascadeType.ALL, optional=false)
    @JoinColumn(name="idInstitucion")
    private Institucion institucion;

	
	public int getIdCurso() {
		return idCurso;
	}

	public void setIdCurso(int idCurso) {
		this.idCurso = idCurso;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getTurno() {
		return turno;
	}

	public void setTurno(String turno) {
		this.turno = turno;
	}

	public String getAnio() {
		return anio;
	}

	public void setAnio(String anio) {
		this.anio = anio;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public Date getFechaVigencia() {
		return fechaVigencia;
	}

	public void setFechaVigencia(Date fechaVigencia) {
		this.fechaVigencia = fechaVigencia;
	}

	public Institucion getInstitucion() {
		return institucion;
	}

	public void setInstitucion(Institucion institucion) {
		this.institucion = institucion;
	}
}
