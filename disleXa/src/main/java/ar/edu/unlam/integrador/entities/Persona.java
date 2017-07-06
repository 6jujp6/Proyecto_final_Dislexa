package ar.edu.unlam.integrador.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="persona")
@PrimaryKeyJoinColumn(name = "idPersona", referencedColumnName = "idUsuario")
@NamedQueries(value={
        @NamedQuery(
                name="obtenerTodoPersona", 
                query="SELECT object(e) FROM Persona e "
        )
})
public class Persona extends Usuario {

	@NotEmpty
	@Column(name="nombre", nullable=false)
    private String nombre;
	
	@NotEmpty
	@Column(name="apellido", nullable=false)
    private String apellido;
	
	@NotNull
    @Column(name="dni", unique=true, nullable=false)
    private Long dni;
	
	@Column(name="direccion")
    private String direccion;
	
	@Column(name="telefono")
    private String telefono;

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public Long getDni() {
		return dni;
	}

	public void setDni(Long dni) {
		this.dni = dni;
	}
}
