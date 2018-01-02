package com.pam.dao;

import com.pam.beans.Commande;

public interface ICommandeDao {
	//insert
	void insertCommande(Commande commande); //table commande
	void insertCommandeCatcheId(Commande commande);
	void insertCommandeDetail(Commande commande); //table detailCommande
}
