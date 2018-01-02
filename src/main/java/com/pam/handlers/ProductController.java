package com.pam.handlers;

import java.awt.image.BufferedImage;
import java.io.File;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.Model;

import com.pam.beans.Product;
import com.pam.service.IProductService;
import com.pam.service.IUtilisateurService;
import com.pam.utils.ImageUtil;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	@Qualifier("productService")
	IProductService productService;
	
	@Autowired
	@Qualifier("utilisateurService")
	private IUtilisateurService service;

	@RequestMapping("addproduct.do")
	public ModelAndView addProduct(Product p, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		int id = 1;
//		int id = (int)session.getAttribute("userid");
	/*	List<ObjectError> errors = br.getAllErrors();
		if(errors.size() > 0) {
			FieldError titleError = br.getFieldError("title");
			FieldError marqueError = br.getFieldError("marque");
			FieldError categorieError = br.getFieldError("categorie");
			FieldError poidError = br.getFieldError("poid");
			FieldError prixError = br.getFieldError("prix");
			FieldError descriptionError = br.getFieldError("description");
			FieldError imageError = br.getFieldError("img");
			
			if(titleError != null) {
				mav.addObject("nomError", titleError.getDefaultMessage());
			}
			if(marqueError != null) {
				mav.addObject("prenomError", marqueError.getDefaultMessage());
			}
			if(categorieError != null) {
				mav.addObject("pwError", categorieError.getDefaultMessage());
			}
			if(poidError != null) {
				mav.addObject("pwError", poidError.getDefaultMessage());
			}
			if(prixError != null) {
				mav.addObject("pwError", prixError.getDefaultMessage());
			}
			if(descriptionError != null) {
				mav.addObject("pwError", descriptionError.getDefaultMessage());
			}
			if(imageError != null) {
				mav.addObject("pwError", imageError.getDefaultMessage());
			}
			mav.setViewName("/addProduct.jsp");
			return mav;
		}*/
		String fileName = p.getTitle() + p.getCategorie() + ".jpg";
		p.setImage(fileName);
		p.setUtilisateur_idUtilisateur(id);
		productService.add(p);
		String imageFolder = session.getServletContext().getRealPath("img/origine");
		String imageFolderSmall = session.getServletContext().getRealPath("img/small");
		File file = new File(imageFolder,fileName);
		file.getParentFile().mkdirs();
		try {
			p.getImg().transferTo(file);
			BufferedImage bImage = ImageUtil.change2jpg(file);
			ImageIO.write(bImage, "jpg", file);
			File fileSmall = new File(imageFolderSmall, fileName);
			ImageUtil.resizeImage(file, 56, 56, fileSmall);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		mav.setViewName("/product/listproduct.do");
		return mav;
	}
	
	@RequestMapping("listproduct.do")
	public ModelAndView listProducts(HttpSession session) {
		ModelAndView mav = new ModelAndView();
	//	int id = (int)session.getAttribute("userid");
		//List<Product> list = productService.listByIdUtilisateur(id);
		List<Product> list = productService.list();
		mav.addObject("list",list);
		mav.setViewName("/product.jsp");
		return mav;
	}
	
	@RequestMapping("deleteproduct.do")
	public ModelAndView deleteProduct(Integer id) {
		ModelAndView mav = new ModelAndView();
		productService.delete(id);
		mav.setViewName("/product/listproduct.do");
		return mav;
	}
	
	@RequestMapping("detailproduct.do")
	public String detailProduct(Model model,Integer id) {
		Product product = productService.get(id);
		model.addAttribute("product",product);
		return "/modifProduct.jsp";
	}
	
	@RequestMapping("modifProduct.do")
	public ModelAndView modifProduct(Product p, int id) {
		ModelAndView mav = new ModelAndView();
		Product product = productService.get(id);
		String fileName = p.getTitle() + p.getCategorie() + ".jpg";
		p.setImage(fileName);
		p.setUtilisateur_idUtilisateur(product.getUtilisateur_idUtilisateur());
		productService.update(p);
		
		mav.setViewName("/product/listproduct.do");
		return mav;
	}
}
