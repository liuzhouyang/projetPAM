package com.pam.service;

import com.pam.beans.Utilisateur;

public interface IUtilisateurService {

	void addUtilisateur(Utilisateur utilisateur);
	Utilisateur getUtilisateur(String email);  

}
