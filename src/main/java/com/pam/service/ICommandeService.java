package com.pam.service;

import java.util.List;

import com.pam.beans.Commande;
import com.pam.beans.CommandeDetail;

public interface ICommandeService {
	void addCommande(Commande commande);
	void addCommandeDetail(CommandeDetail detail);
	List<Commande> getAllCommandes(int idUtilisateur);
}
