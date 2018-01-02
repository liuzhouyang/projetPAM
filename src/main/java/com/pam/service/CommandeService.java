package com.pam.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.pam.beans.Commande;
import com.pam.dao.ICommandeDao;

@Service("commandeService")
public class CommandeService implements ICommandeService {
	@Autowired
	@Qualifier("ICommandeDao")
	private ICommandeDao dao;
	
	@Override
	public void addCommande(Commande commande) {
		dao.insertCommande(commande);
	}

	@Override
	public void addCommandeDetail(Commande commande) {
		// TODO Auto-generated method stub

	}

}
