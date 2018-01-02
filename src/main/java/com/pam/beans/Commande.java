package com.pam.beans;

import java.util.Date;
import java.util.Map;

public class Commande {
	private Integer idCommande;
	private Integer Utilisateur_idUtilisateur;
	private String nom_site;
	private String nom_acheteur;
	private String add_acheteur;
	private Date date_commande;
	private Date date_payer;
	private Date date_livraison;
	private double prix_livraison;
	private double prix_sous_total;
	private double prix_total;
	private String statut;
	private String info;
	
	
	private Map<Integer, Integer> produits; // id＋quantite
	
	public Commande() {
		super();
	}

	public Commande(Integer utilisateur_idUtilisateur, String nom_site, String nom_acheteur, String add_acheteur,
			Date date_commande, Date date_payer, Date date_livraison, double prix_livraison, double prix_sous_total,
			double prix_total, String statut, String info, Map<Integer, Integer> produits) {
		super();
		Utilisateur_idUtilisateur = utilisateur_idUtilisateur;
		this.nom_site = nom_site;
		this.nom_acheteur = nom_acheteur;
		this.add_acheteur = add_acheteur;
		this.date_commande = date_commande;
		this.date_payer = date_payer;
		this.date_livraison = date_livraison;
		this.prix_livraison = prix_livraison;
		this.prix_sous_total = prix_sous_total;
		this.prix_total = prix_total;
		this.statut = statut;
		this.info = info;
		this.produits = produits;
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

	public Date getDate_commande() {
		return date_commande;
	}

	public void setDate_commande(Date date_commande) {
		this.date_commande = date_commande;
	}

	public Date getDate_payer() {
		return date_payer;
	}

	public void setDate_payer(Date date_payer) {
		this.date_payer = date_payer;
	}

	public Date getDate_livraison() {
		return date_livraison;
	}

	public void setDate_livraison(Date date_livraison) {
		this.date_livraison = date_livraison;
	}

	public double getPrix_livraison() {
		return prix_livraison;
	}

	public void setPrix_livraison(double prix_livraison) {
		this.prix_livraison = prix_livraison;
	}

	public double getPrix_sous_total() {
		return prix_sous_total;
	}

	public void setPrix_sous_total(double prix_sous_total) {
		this.prix_sous_total = prix_sous_total;
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

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public Map<Integer, Integer> getProduits() {
		return produits;
	}

	public void setProduits(Map<Integer, Integer> produits) {
		this.produits = produits;
	}

	@Override
	public String toString() {
		return "Commande [idCommande=" + idCommande + ", Utilisateur_idUtilisateur=" + Utilisateur_idUtilisateur
				+ ", nom_site=" + nom_site + ", nom_acheteur=" + nom_acheteur + ", add_acheteur=" + add_acheteur
				+ ", date_commande=" + date_commande + ", date_payer=" + date_payer + ", date_livraison="
				+ date_livraison + ", prix_livraison=" + prix_livraison + ", prix_sous_total=" + prix_sous_total
				+ ", prix_total=" + prix_total + ", statut=" + statut + ", info=" + info + ", produits=" + produits
				+ "]";
	}
}
