package com.pam.dao;

import java.util.List;

import com.pam.beans.Commande;
import com.pam.beans.CommandeDetail;

public interface ICommandeDao {
	//insert
	void insertCommande(Commande commande); //table commande
	void insertCommandeCatcheId(Commande commande);
	void insertCommandeDetail(CommandeDetail detail); //table detailCommande
	//select
	List<Commande> selectAllCommandes(int idUtilisateur);
}
