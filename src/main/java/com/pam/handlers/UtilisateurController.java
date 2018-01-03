package com.pam.handlers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.pam.beans.Utilisateur;
import com.pam.service.IUtilisateurService;

@Controller
@RequestMapping("/user")
public class UtilisateurController {
	
	@Autowired
	@Qualifier("utilisateurService")
	private IUtilisateurService service;
	
	@RequestMapping("inscription.do")
	public ModelAndView doInscription(@Validated Utilisateur utilisateur, BindingResult br){
		ModelAndView mv = new ModelAndView();
		
		/* 
		 * traiter les errors de format dans l'inscrption
		 */
		Utilisateur res = service.getUtilisateur(utilisateur.getEmail());
		List<ObjectError> errors = br.getAllErrors();
		if(errors.size() > 0 || res != null) {
			FieldError nomError = br.getFieldError("nom");
			FieldError prenomError = br.getFieldError("prenom");
			FieldError emailError = br.getFieldError("email");
			FieldError pwError = br.getFieldError("password");
			
			if(nomError != null) {
				mv.addObject("nomError", nomError.getDefaultMessage());
			}
			if(prenomError != null) {
				mv.addObject("prenomError", prenomError.getDefaultMessage());
			}
			if(res != null) {
				mv.addObject("emailError", "email existe deja");
			} else if(emailError != null) {
				mv.addObject("emailError", emailError.getDefaultMessage());
			}
			if(pwError != null) {
				mv.addObject("pwError", pwError.getDefaultMessage());
			}
			mv.setViewName("/inscription.jsp");
			return mv;
		}
		
		//add user
		utilisateur.setRol("user");
		service.addUtilisateur(utilisateur);
		mv.addObject("info", "Inscription avec succes");
		mv.addObject("page", "index.jsp");
		mv.setViewName("/redirect.jsp");
		return mv;
	}
	
	@RequestMapping("login.do")
	public ModelAndView doLogin(String email, String password, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		//email error
		Utilisateur utilisateur = service.getUtilisateur(email);
		if(utilisateur == null) {
			mv.addObject("info", "Email error");
			mv.addObject("page", "index.jsp");
			mv.setViewName("/redirect.jsp");
			return mv;
		} 
		//password error
		if(!password.equals(utilisateur.getPassword())) {
			mv.addObject("info", "Password error");
			mv.addObject("page", "index.jsp");
			mv.setViewName("/redirect.jsp");
			return mv;
		}
		//login avec succes
		session.setAttribute("userid", utilisateur.getIdUtilisateur());	
		session.setAttribute("username", utilisateur.getPrenom());	
		mv.setViewName("/dashboard.jsp");
		return mv;
	}
	
	@RequestMapping("logout.do")
	public String doLogout(HttpSession session) {
		//remove session
		session.removeAttribute("userid");
		
		return "/index.jsp";
	}

}
