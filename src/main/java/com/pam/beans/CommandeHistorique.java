package com.pam.beans;

public class CommandeHistorique {
	int idHistorique;
	int idUtilisateur;
	String nomFichier;
	String nomWeb;
	String date;
	
	public CommandeHistorique() {
		super();
	}
	
	public CommandeHistorique(int idUtilisateur, String nomFichier, String nomWeb, String date) {
		super();
		this.idUtilisateur = idUtilisateur;
		this.nomFichier = nomFichier;
		this.nomWeb = nomWeb;
		this.date = date;
	}
	public int getIdHistorique() {
		return idHistorique;
	}
	public void setIdHistorique(int idHistorique) {
		this.idHistorique = idHistorique;
	}
	public int getIdUtilisateur() {
		return idUtilisateur;
	}
	public void setIdUtilisateur(int idUtilisateur) {
		this.idUtilisateur = idUtilisateur;
	}
	public String getNomFichier() {
		return nomFichier;
	}
	public void setNomFichier(String nomFichier) {
		this.nomFichier = nomFichier;
	}
	public String getNomWeb() {
		return nomWeb;
	}
	public void setNomWeb(String nomWeb) {
		this.nomWeb = nomWeb;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "CommandeHistorique [idHistorique=" + idHistorique + ", idUtilisateur=" + idUtilisateur + ", nomFichier="
				+ nomFichier + ", nomWeb=" + nomWeb + ", date=" + date + "]";
	}
}
