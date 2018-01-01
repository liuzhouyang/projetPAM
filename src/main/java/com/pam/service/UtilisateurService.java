package com.pam.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.pam.beans.Utilisateur;
import com.pam.dao.IUtilisateurDao;

@Service("utilisateurService")
public class UtilisateurService implements IUtilisateurService {
	@Autowired
	@Qualifier("IUtilisateurDao")
	private IUtilisateurDao dao;
	
	
	@Override
	public void addUtilisateur(Utilisateur utilisateur) {
		dao.insertUtilisateur(utilisateur);
	}

	@Override
	public Utilisateur getUtilisateur(String email) {
		Utilisateur utilisateur = null;
		utilisateur = dao.selectUtilisateurByEmail(email);
		return utilisateur;
	}

}