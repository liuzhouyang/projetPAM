package com.pam.handlers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pam.beans.Product;
import com.pam.service.IProductService;

@Controller
@RequestMapping("product")
public class ProductController {
	@Autowired
	@Qualifier("productService")
	IProductService productService;

	@RequestMapping("addProduct")
	public ModelAndView addProduct(Product p) {
		ModelAndView mav = new ModelAndView();
		int id=1;
		/*List<ObjectError> errors = br.getAllErrors();
		if(errors.size() > 0) {
			FieldError titleError = br.getFieldError("title");
			FieldError marqueError = br.getFieldError("marque");
			FieldError categorieError = br.getFieldError("categorie");
			FieldError pwError = br.getFieldError("password");
		}*/
		p.setUtilisateur_idUtilisateur(id);
		productService.add(p);
		mav.setViewName("/product.jsp");
		return mav;
	}
	
	@RequestMapping("test.jsp")
	public ModelAndView listProducts(HttpSession session) {
		ModelAndView mav = new ModelAndView();
	//	int id = (int)session.getAttribute("userid");
		//List<Product> list = productService.listByIdUtilisateur(id);
		List<Product> list = productService.list();
		mav.addObject("list",list);
		mav.setViewName("test.jsp");
		return mav;
	}
}
