package com.pam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.pam.beans.Commande;
import com.pam.beans.CommandeDetail;
import com.pam.dao.ICommandeDao;

@Service("commandeService")
public class CommandeService implements ICommandeService {
	@Autowired
	@Qualifier("ICommandeDao")
	private ICommandeDao dao;
	
	@Override
	public void addCommande(Commande commande) {
		dao.insertCommandeCatcheId(commande);
	}

	@Override
	public void addCommandeDetail(CommandeDetail detail) {
		dao.insertCommandeDetail(detail);
	}

	@Override
	public List<Commande> getAllCommandes(int idUtilisateur) {
		return dao.selectAllCommandes(idUtilisateur);
	}

}
