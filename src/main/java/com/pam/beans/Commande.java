package com.pam.beans;

public class Commande {
	private Integer idCommande;
	private Integer Utilisateur_idUtilisateur;
	private String nom_site;
	private String nom_acheteur;
	private String add_acheteur;
	private String date_commande;
	private double prix_livraison;
	private double prix_total;
	private String statut;
	
	public Commande() {
		super();
	}

	public Commande(Integer utilisateur_idUtilisateur, String nom_site, String nom_acheteur, String add_acheteur,
			String date_commande, double prix_livraison, double prix_total, String statut) {
		super();
		Utilisateur_idUtilisateur = utilisateur_idUtilisateur;
		this.nom_site = nom_site;
		this.nom_acheteur = nom_acheteur;
		this.add_acheteur = add_acheteur;
		this.date_commande = date_commande;
		this.prix_livraison = prix_livraison;
		this.prix_total = prix_total;
		this.statut = statut;
	}

	public Integer getUtilisateur_idUtilisateur() {
		return Utilisateur_idUtilisateur;
	}

	public void setUtilisateur_idUtilisateur(Integer utilisateur_idUtilisateur) {
		Utilisateur_idUtilisateur = utilisateur_idUtilisateur;
	}

	public String getNom_site() {
		return nom_site;
	}

	public void setNom_site(String nom_site) {
		this.nom_site = nom_site;
	}

	public Integer getIdCommande() {
		return idCommande;
	}

	public void setIdCommande(Integer idCommande) {
		this.idCommande = idCommande;
	}

	public String getNom_acheteur() {
		return nom_acheteur;
	}

	public void setNom_acheteur(String nom_acheteur) {
		this.nom_acheteur = nom_acheteur;
	}

	public String getAdd_acheteur() {
		return add_acheteur;
	}

	public void setAdd_acheteur(String add_acheteur) {
		this.add_acheteur = add_acheteur;
	}

	public String getDate_commande() {
		return date_commande;
	}

	public void setDate_commande(String date_commande) {
		this.date_commande = date_commande;
	}

	public double getPrix_livraison() {
		return prix_livraison;
	}

	public void setPrix_livraison(double prix_livraison) {
		this.prix_livraison = prix_livraison;
	}

	public double getPrix_total() {
		return prix_total;
	}

	public void setPrix_total(double prix_total) {
		this.prix_total = prix_total;
	}

	public String getStatut() {
		return statut;
	}

	public void setStatut(String statut) {
		this.statut = statut;
	}

	@Override
	public String toString() {
		return "Commande [idCommande=" + idCommande + ", Utilisateur_idUtilisateur=" + Utilisateur_idUtilisateur
				+ ", nom_site=" + nom_site + ", nom_acheteur=" + nom_acheteur + ", add_acheteur=" + add_acheteur
				+ ", date_commande=" + date_commande + ", prix_livraison=" + prix_livraison + ", prix_total="
				+ prix_total + ", statut=" + statut + "]";
	}
}
