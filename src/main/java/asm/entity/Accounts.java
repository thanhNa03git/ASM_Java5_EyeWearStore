package asm.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name="Accounts")
public class Accounts {
	@Id
	private String username;
	@Column(name="fullname", columnDefinition = "nvarchar(50)")
	private String fullname;
	private String email, password, photo;
	boolean activated = true, admin = false;
	@OneToMany(mappedBy = "accounts")
	List<Orders> orders;
}
