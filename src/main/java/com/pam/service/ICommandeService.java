package com.pam.service;

import com.pam.beans.Commande;

public interface ICommandeService {
	void addCommande(Commande commande);
	void addCommandeDetail(Commande commande);
}
