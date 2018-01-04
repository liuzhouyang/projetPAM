package com.pam.handlers;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import com.pam.beans.Commande;
import com.pam.beans.CommandeDetail;
import com.pam.beans.CommandeHistorique;
import com.pam.service.ICommandeService;
import com.pam.utils.DateUtil;

@Controller
@RequestMapping("/commande")
public class CommandeController {
	@Autowired
	@Qualifier("commandeService")
	private ICommandeService service;
	
	@RequestMapping("consulter.do")
	public ModelAndView doConsulter(HttpSession session){
		ModelAndView mv = new ModelAndView();
		int idUtilisateur = (int) session.getAttribute("userid");
		List<Commande> commandes = service.getAllCommandes(idUtilisateur);
		mv.addObject("commandes", commandes);
		mv.setViewName("/commandes.jsp");
		return mv;
	}
	
	@RequestMapping("synchroniser.do")
	public ModelAndView doSynchroniser(MultipartFile fichier, HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		if(!fichier.isEmpty()) {
			String path = session.getServletContext().getRealPath("/fichiersXML");
			String fileName = fichier.getOriginalFilename();
			if(fileName.endsWith(".xml")) {
				File file = new File(path, fileName);
				fichier.transferTo(file);
				mv.addObject("filePath", path+"\\"+fileName);
				mv.addObject("fileName", fileName);
				mv.setViewName("redirect:traiterXML.do");
				return mv;
			} else {
				mv.addObject("info", "Not fichier XML");
				mv.addObject("page", "synchronisation.jsp");
				mv.setViewName("/redirect.jsp");
				return mv;
			}
		}
		mv.setViewName("/synchronisation.jsp");
		return mv;
	}
	
	@RequestMapping("traiterXML.do")
	public ModelAndView doTraiterXML(String filePath, String fileName, HttpSession session) throws ParserConfigurationException, SAXException, IOException  {
		ModelAndView mv = new ModelAndView();
		Commande commande = new Commande();
		CommandeHistorique historique = null;
		int idUtilisateur = (int) session.getAttribute("userid");
		commande.setUtilisateur_idUtilisateur(idUtilisateur);
		Map<Integer, Integer> produits = new HashMap<>();
		
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		DocumentBuilder db = dbf.newDocumentBuilder();
		Document document = db.parse(filePath);

		NodeList commandeList = document.getElementsByTagName("commande");
		for (int i = 0; i < commandeList.getLength(); i++) {
			Node commandeNode = commandeList.item(i);
			NodeList childNodes = commandeNode.getChildNodes();
			
			for (int k = 0; k < childNodes.getLength(); k++) {
				if(childNodes.item(k).getNodeType() == Node.ELEMENT_NODE){
					String nodeName = childNodes.item(k).getNodeName();
					String nodeValue = childNodes.item(k).getFirstChild().getNodeValue();
					switch (nodeName) {
					case "Site":
						commande.setNom_site(nodeValue);
						break;
					case "Acheteur":
						commande.setNom_acheteur(nodeValue);
						break;
					case "Address":
						commande.setAdd_acheteur(nodeValue);
						break;
					case "Livraion":
						commande.setPrix_livraison(Double.parseDouble(nodeValue));
						break;
					case "Prix":
						commande.setPrix_total(Double.parseDouble(nodeValue));
						break;
					case "Statut":
						commande.setStatut(nodeValue);
						break;
					case "Date":
						commande.setDate_commande(nodeValue);
						break;
					case "Produit":
						NodeList childNodes2 = childNodes.item(k).getChildNodes();
						int id = 0;
						int quantite = 0;
						for(int j = 0; j < childNodes2.getLength(); j++) {
							if(childNodes2.item(j).getNodeType() == Node.ELEMENT_NODE){
								String nodeName2 = childNodes2.item(j).getNodeName();
								String nodeValue2 = childNodes2.item(j).getFirstChild().getNodeValue();
								switch (nodeName2) {
								case "Id":
									id = Integer.parseInt(nodeValue2);
									break;
								case "Quantite":
									quantite = Integer.parseInt(nodeValue2);
									produits.put(id, quantite);
									break;
								}
							}
						}
						break;
					default:
						break;
					}
				}
			}
			
			service.addCommande(commande);
			int idCommande = commande.getIdCommande();
			for (Map.Entry<Integer, Integer> entry : produits.entrySet()) {
				CommandeDetail detail = new CommandeDetail(idCommande, idUtilisateur, entry.getKey(), entry.getValue());
				service.addCommandeDetail(detail);
			}
			produits = new HashMap<>();
		}
		historique = new CommandeHistorique(idUtilisateur, fileName, commande.getNom_site(), DateUtil.dateFormat(new Date()));
		service.addCommandeHistorique(historique);
		mv.addObject("info", "Synchronisation avec succès");
		mv.addObject("page", "synchronisation.jsp");
		mv.setViewName("/redirect.jsp");
		return mv;
	}
	
	@RequestMapping("historique.do")
	public ModelAndView doHistorique(HttpSession session) {
		int idUtilisateur = (int) session.getAttribute("userid");
		ModelAndView mv = new ModelAndView();
		mv.addObject("historiques", service.selectCommandesHistorique(idUtilisateur));
		mv.setViewName("/historique.jsp");
		return mv;
	}
}


