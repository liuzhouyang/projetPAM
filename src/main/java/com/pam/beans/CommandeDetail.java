package com.pam.beans;

public class CommandeDetail {
	int idCommande;
	int idUtilisateur;
	int idProduit;
	int quantite;
	
	public CommandeDetail() {
		super();
	}

	public CommandeDetail(int idCommande, int idUtilisateur, int idProduit, int quantite) {
		super();
		this.idCommande = idCommande;
		this.idUtilisateur = idUtilisateur;
		this.idProduit = idProduit;
		this.quantite = quantite;
	}

	public int getIdCommande() {
		return idCommande;
	}

	public void setIdCommande(int idCommande) {
		this.idCommande = idCommande;
	}

	public int getIdUtilisateur() {
		return idUtilisateur;
	}

	public void setIdUtilisateur(int idUtilisateur) {
		this.idUtilisateur = idUtilisateur;
	}

	public int getIdProduit() {
		return idProduit;
	}

	public void setIdProduit(int idProduit) {
		this.idProduit = idProduit;
	}

	public int getQuantite() {
		return quantite;
	}

	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}

	@Override
	public String toString() {
		return "CommandeDetail [idCommande=" + idCommande + ", idUtilisateur=" + idUtilisateur + ", idProduit="
				+ idProduit + ", quantite=" + quantite + "]";
	}
	
}
