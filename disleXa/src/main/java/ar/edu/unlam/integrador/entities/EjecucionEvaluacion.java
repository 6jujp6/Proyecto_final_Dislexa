package ar.edu.unlam.integrador.entities;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import ar.edu.unlam.integrador.entities.base.BaseEntity;

@Entity
@Table(name="ejecucion_evaluacion")
@NamedQueries(value={
        @NamedQuery(
                name="obtenerTodoEjecucionEvaluacion", 
                query="SELECT object(e) FROM EjecucionEvaluacion e "
        )
})
public class EjecucionEvaluacion extends BaseEntity{
	@Id
    @Column(name="idEjecucionEvaluacion", unique=true, nullable=false)
    private int idEjecucionEvaluacion;
		
	@Column(name="resultado")
    private String resultado;
	
	//@ManyToOne(cascade=CascadeType.ALL, optional=false)
	@ManyToOne(cascade=CascadeType.ALL, optional=false)
	@JoinColumn(name="idAlumno_paciente")
	private AlumnoPaciente alumnoPaciente;
	
	@ManyToOne(cascade=CascadeType.ALL, optional=false)
	@JoinColumn(name="idEvaluacion")
	private Evaluacion evaluacion;
	
	@Column(name="fecha_inicio")
    private Date fechaInicio;
	
	@Column(name="fecha_fin")
    private Date fechaFin;
	
	@Column(name="pendiente_diagnostico")
	private Boolean pendienteDiagnostico;

	public int getIdEjecucionEvaluacion() {
		return idEjecucionEvaluacion;
	}

	public void setIdEjecucionEvaluacion(int idEjecucionEvaluacion) {
		this.idEjecucionEvaluacion = idEjecucionEvaluacion;
	}

	public String getResultado() {
		return resultado;
	}

	public void setResultado(String resultado) {
		this.resultado = resultado;
	}

	public AlumnoPaciente getAlumnoPaciente() {
		return alumnoPaciente;
	}

	public void setAlumnoPaciente(AlumnoPaciente alumnoPaciente) {
		this.alumnoPaciente = alumnoPaciente;
	}

	public Evaluacion getEvaluacion() {
		return evaluacion;
	}

	public void setEvaluacion(Evaluacion evaluacion) {
		this.evaluacion = evaluacion;
	}

	public Date getFechaInicio() {
		return fechaInicio;
	}

	public void setFechaInicio(Date fechaInicio) {
		this.fechaInicio = fechaInicio;
	}

	public Date getFechaFin() {
		return fechaFin;
	}

	public void setFechaFin(Date fechaFin) {
		this.fechaFin = fechaFin;
	}

	public Boolean getPendienteDiagnostico() {
		return pendienteDiagnostico;
	}

	public void setPendienteDiagnostico(Boolean pendienteDiagnostico) {
		this.pendienteDiagnostico = pendienteDiagnostico;
	}
}
