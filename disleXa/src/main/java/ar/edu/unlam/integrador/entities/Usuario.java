package ar.edu.unlam.integrador.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

import ar.edu.unlam.integrador.entities.base.BaseEntity;

@Entity
@Table(name="usuario")
@Inheritance(strategy=InheritanceType.JOINED)
@NamedQueries(value={
        @NamedQuery(
                name="obtenerTodoUsuario", 
                query="SELECT object(e) FROM Usuario e "
        )
})
public class Usuario extends BaseEntity{
	@Id
	@GeneratedValue
    @Column(name="idUsuario", unique=true, nullable=false)
    private int idUsuario;
	
	@NotEmpty
    @Column(name = "mail", nullable = false)
    private String mail;
	
	@NotEmpty
    @Column(name = "password", nullable = false)
    private String password;
	
    @Column(name = "foto", nullable = true)
    private String foto;

	public int getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}
}
