package com.pam.handlers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pam.beans.Product;
import com.pam.service.IProductService;

public class ProductController {
	@Autowired
	@Qualifier("productService")
	IProductService productService;

	
	@RequestMapping("listProducts")
	public ModelAndView listProducts(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		int id = (int)session.getAttribute("userid");
		//List<Product> list = productService.listByIdUtilisateur(id);
		List<Product> list = productService.listByIdUtilisateur(1);
		mav.addObject("listProducts",list);
		mav.setViewName("product");
		return mav;
	}
}
