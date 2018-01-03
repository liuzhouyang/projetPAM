package com.pam.service;

import java.util.List;

import com.pam.beans.Commande;
import com.pam.beans.CommandeDetail;
import com.pam.beans.CommandeHistorique;

public interface ICommandeService {
	//insert
	void addCommande(Commande commande);
	void addCommandeDetail(CommandeDetail detail);
	void addCommandeHistorique(CommandeHistorique historique);
	//select
	List<Commande> getAllCommandes(int idUtilisateur);
	List<CommandeHistorique> selectCommandesHistorique(int idUtilisateur);
}
