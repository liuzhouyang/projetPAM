package com.pam.dao;

import java.util.List;
import java.util.Map;

import com.pam.beans.Utilisateur;

public interface IUtilisateurDao {

	//insert
	void insertUtilisateur(Utilisateur utilisateur);
	void insertUtilisateurCatcheId(Utilisateur utilisateur);
	
	//delete
	void deleteUtilisateurById(int idUtilisateur);
	
	//update
	void updateUtilisateur(Utilisateur utilisateur);
	
	//select
	List<Utilisateur> selectAllUtilisateurs();
	Utilisateur selectUtilisateurByEmail(String email);
	Utilisateur selectUtilisateurById(int idUtilisateur);
	
}
