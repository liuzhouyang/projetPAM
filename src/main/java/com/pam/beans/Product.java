package com.pam.beans;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class Product {
	
	private Integer idProduct;
	@NotEmpty(message="titre de produit ne peut pas etre null")
	@Size(min=1, max=45, message="longeur de titre doit entre {min}-{max}")
	@Pattern(regexp="^[a-zA-Zàâäéèêëçùûüôö]+[-']?[a-zA-Zàâäéèêëçùûüôö]*$", message="invalid nom format")
	private String title;
	@NotEmpty(message="marque de produit ne peut pas etre null")
	@Size(min=1, max=45, message="longeur de marque doit entre {min}-{max}")
	@Pattern(regexp="^[a-zA-Zàâäéèêëçùûüôö]+[-']?[a-zA-Zàâäéèêëçùûüôö]*$", message="invalid nom format")
	private String marque;
	@NotEmpty(message="categorie de produit ne peut pas etre null")
	@Size(min=1, max=45, message="longeur de categorie doit entre {min}-{max}")
	@Pattern(regexp="^[a-zA-Zàâäéèêëçùûüôö]+[-']?[a-zA-Zàâäéèêëçùûüôö]*$", message="invalid nom format")
	private String categorie;
	@NotEmpty(message="poid de produit ne peut pas etre null")
	private double poid;
	@NotEmpty(message="prix de produit ne peut pas etre null")
	private double prix;
	private String couleur;
	private String taille;
	@NotEmpty(message="descirption de produit ne peut pas etre null")
	@Size(min=1, max=1000, message="longeur de descirption doit entre {min}-{max}")
	@Pattern(regexp="^[a-zA-Zàâäéèêëçùûüôö]+[-']?[a-zA-Zàâäéèêëçùûüôö]*$", message="invalid nom format")
	private String descirption;
	@NotEmpty(message="image de produit ne peut pas etre null")
	@Size(min=1, max=1000, message="longeur de image doit entre {min}-{max}")
	@Pattern(regexp="^[a-zA-Zàâäéèêëçùûüôö]+[-']?[a-zA-Zàâäéèêëçùûüôö]*$", message="invalid nom format")
	private String image;
	private int Utilisateur_idUtilisateur;
	
	public Integer getIdProduct() {
		return idProduct;
	}
	public void setIdProduct(Integer idProduct) {
		this.idProduct = idProduct;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getMarque() {
		return marque;
	}
	public void setMarque(String marque) {
		this.marque = marque;
	}
	public String getCategorie() {
		return categorie;
	}
	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}
	public double getPoid() {
		return poid;
	}
	public void setPoid(double poid) {
		this.poid = poid;
	}
	public double getPrix() {
		return prix;
	}
	public void setPrix(double prix) {
		this.prix = prix;
	}
	public String getCouleur() {
		return couleur;
	}
	public void setCouleur(String couleur) {
		this.couleur = couleur;
	}
	public String getTaille() {
		return taille;
	}
	public void setTaille(String taille) {
		this.taille = taille;
	}
	public String getDescirption() {
		return descirption;
	}
	public void setDescirption(String descirption) {
		this.descirption = descirption;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getUtilisateur_idUtilisateur() {
		return Utilisateur_idUtilisateur;
	}
	public void setUtilisateur_idUtilisateur(int utilisateur_idUtilisateur) {
		Utilisateur_idUtilisateur = utilisateur_idUtilisateur;
	}
}
