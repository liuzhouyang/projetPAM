package com.pam.beans;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import javax.validation.constraints.NotNull;

public class Utilisateur {
	private Integer idUtilisateur;
	@NotNull(message="nom vide")
	@Size(min=3, max=15, message="longeur de nom doit entre {min}-{max}")
	@Pattern(regexp="^[a-zA-Zàâäéèêëçùûüôö]+[-']?[a-zA-Zàâäéèêëçùûüôö]*$", message="invalid nom format")
	private String nom;
	@NotNull(message="prenom vide")
	@Size(min=3, max=15, message="longeur de prenom doit entre {min}-{max}")
	@Pattern(regexp="^[a-zA-Zàâäéèêëçùûüôö]+[-']?[a-zA-Zàâäéèêëçùûüôö]*$", message="invalid prenom format")
	private String prenom;
	@NotNull(message="email vide")
	@Pattern(regexp="^[A-Za-z0-9.]+@[A-Za-z0-9]+\\.[a-zA-Z0-9]+$", message="invalid email format")
	private String email;
	@NotNull(message="password vide")
	@Size(min=4, max=10, message="longeur de password doit entre {min}-{max}")
	@Pattern(regexp="^[A-Za-z0-9]+$", message="invalid email format : seulement numero et lettre")
	private String password;
	private String rol;
	
	public Utilisateur() {
		super();
	}

	public Utilisateur(String nom, String prenom, String email, String password, String rol) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.password = password;
		this.rol = rol;
	}

	public Integer getIdUtilisateur() {
		return idUtilisateur;
	}

	public void setIdUtilisateur(Integer idUtilisateur) {
		this.idUtilisateur = idUtilisateur;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRol() {
		return rol;
	}

	public void setRol(String rol) {
		this.rol = rol;
	}

	@Override
	public String toString() {
		return "Utilisateur [idUtilisateur=" + idUtilisateur + ", nom=" + nom + ", prenom=" + prenom + ", email="
				+ email + ", password=" + password + ", rol=" + rol + "]";
	}
	
}
