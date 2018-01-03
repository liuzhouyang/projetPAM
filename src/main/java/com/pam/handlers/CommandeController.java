package com.pam.handlers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pam.service.ICommandeService;

@Controller
@RequestMapping("/commande")
public class CommandeController {
	@Autowired
	@Qualifier("commandeService")
	private ICommandeService service;
	
	
}
