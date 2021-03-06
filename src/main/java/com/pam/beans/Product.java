package com.pam.beans;

import org.springframework.web.multipart.MultipartFile;

public class Product {
	private Integer idProduct;
	private String title;
	private String marque;
	private String categorie;
	private double poid;
	private double prix;
	private String couleur;
	private String taille;
	private String description;
	private String image;
	private int Utilisateur_idUtilisateur;
	
	private MultipartFile img;
	
	public Product() {
		super();
	}
	
	public Product(String title, String marque, String categorie, double poid, double prix, String couleur, String taille, String description, MultipartFile img, String image, int Utilisateur_idUtilisateur) {
		super();
		this.title = title;
		this.marque = marque;
		this.categorie = categorie;
		this.poid = poid;
		this.prix = prix;
		this.couleur = couleur;
		this.taille = taille;
		this.description = description;
		this.img = img;
		this.image = image;
		this.Utilisateur_idUtilisateur = Utilisateur_idUtilisateur;
	}
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
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
	public MultipartFile getImg() {
		return img;
	}
	public void setImg(MultipartFile img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "Product [idProduct=" + idProduct + ", title=" + title + ", marque=" + marque + ", categorie="
				+ categorie + ", poid=" + poid + ", prix=" + prix + ", couleur=" + couleur + ", taille=" + taille
				+ ", description=" + description + ", image=" + image + ", Utilisateur_idUtilisateur="
				+ Utilisateur_idUtilisateur + ", img=" + img + "]";
	}
	
	
}
