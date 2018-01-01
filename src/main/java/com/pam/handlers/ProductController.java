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

import com.pam.beans.Product;
import com.pam.service.IProductService;
import com.pam.utils.ImageUtil;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	@Qualifier("productService")
	IProductService productService;

	@RequestMapping("addProduct.do")
	public ModelAndView addProduct(Product p, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		int id=1;
		/*List<ObjectError> errors = br.getAllErrors();
		if(errors.size() > 0) {
			FieldError titleError = br.getFieldError("title");
			FieldError marqueError = br.getFieldError("marque");
			FieldError categorieError = br.getFieldError("categorie");
			FieldError pwError = br.getFieldError("password");
		}*/
		String fileName = p.getIdProduct() + ".jpg";
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
		p.setImage(fileName);
		p.setUtilisateur_idUtilisateur(id);
		productService.add(p);
		mav.setViewName("/product.jsp");
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
}
