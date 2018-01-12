package com.pam.handlers;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;
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
		//int id = 1;
		int id = (int)session.getAttribute("userid");
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
		String fileName =  p.getTitle() + p.getCategorie() + p.getUtilisateur_idUtilisateur() + ".jpg";
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
		int id = (int)session.getAttribute("userid");
		List<Product> list = productService.listByIdUtilisateur(id);
		//List<Product> list = productService.list();
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
	public ModelAndView modifProduct(Product product, HttpSession session) {
		ModelAndView mav = new ModelAndView();
//		int id = 1;
		int id = (int)session.getAttribute("userid");
//		if (product.getImg() != null) {
//			String fileName =  product.getIdProduct() + ".jpg";
//			product.setImage(fileName);
//			String imageFolder = session.getServletContext().getRealPath("img/origine");
//			String imageFolderSmall = session.getServletContext().getRealPath("img/small");
//			File file = new File(imageFolder,fileName);
//			file.getParentFile().mkdirs();
//			try {
//				product.getImg().transferTo(file);
//				BufferedImage bImage = ImageUtil.change2jpg(file);
//				ImageIO.write(bImage, "jpg", file);
//				File fileSmall = new File(imageFolderSmall, fileName);
//				ImageUtil.resizeImage(file, 56, 56, fileSmall);
//			} catch (Exception e) {
//				e.printStackTrace();
//				// TODO: handle exception
//			}
//		}
		product.setUtilisateur_idUtilisateur(id);
		System.out.println(product);
		productService.update(product);
		mav.setViewName("/product/listproduct.do");
		return mav;
	}
	
	@RequestMapping("parsetoproduct.do")
	public ModelAndView parseToProduct(String filePath, String fileName, HttpSession session) throws ParserConfigurationException, SAXException, IOException {
		ModelAndView mav = new ModelAndView();
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		DocumentBuilder db = dbf.newDocumentBuilder();
		Document document = db.parse(filePath);
		int id = (int) session.getAttribute("userid");
		//int id = 1;
		NodeList productList = document.getElementsByTagName("product");
		for (int i = 0; i < productList.getLength(); i++) {
			Product product = new Product();
			product.setUtilisateur_idUtilisateur(id);
			product.setImage("default.jpg");
			Node productNode = productList.item(i);
			NodeList childNodes = productNode.getChildNodes();
			for (int k = 0; k < childNodes.getLength(); k++) {
				if(childNodes.item(k).getNodeType() == Node.ELEMENT_NODE){
					String nodeName = childNodes.item(k).getNodeName();
					String nodeValue = childNodes.item(k).getFirstChild().getNodeValue();
					switch (nodeName) {
						case "title" :
							product.setTitle(nodeValue);
						break;
						case "marque":
							product.setMarque(nodeValue);
						break;
						case "categorie" :
							product.setCategorie(nodeValue);
						break;
						case "poid":
							product.setPoid(Double.valueOf(nodeValue));
						break;
						case "prix" :
							product.setPrix(Double.valueOf(nodeValue));
						break;
						case "couleur":
							product.setCouleur(nodeValue);
						break;
						case "taille":
							product.setTaille(nodeValue);
						break;
						case "description":
							product.setDescription(nodeValue);
						break;
						default:
						break;
					}
				}
			}
			productService.add(product);
		}
		mav.setViewName("/product/listproduct.do");
		return mav;
	}
	
	@RequestMapping("importProduct.do")
	public ModelAndView importFromXML(HttpSession session, MultipartFile productXML) {
		ModelAndView mav = new ModelAndView();
		String path = session.getServletContext().getRealPath("/fichiersXML");
		String fileName = productXML.getOriginalFilename();
		File file = new File(path, fileName);
		file.getParentFile().mkdirs();
		try {
			productXML.transferTo(file);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mav.addObject("filePath", path+"\\"+fileName);
		mav.addObject("fileName", fileName);
		mav.setViewName("redirect:parsetoproduct.do");
		return mav;
	}
	
	@RequestMapping("parsetoxml.do")
	public String parseToXML(Model model, HttpSession session, HttpServletResponse response, Integer id) throws ParserConfigurationException, TransformerException, IOException {
		Product p = productService.get(id);
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		DocumentBuilder db = dbf.newDocumentBuilder();
		Document document = db.newDocument();
		Element products = document.createElement("products");
		Element product = document.createElement("product");
		Element title = document.createElement("title");
		title.setTextContent(p.getTitle());
        product.appendChild(title);
        Element marque = document.createElement("marque");
        marque.setTextContent(p.getMarque());
        product.appendChild(marque);
		Element categorie = document.createElement("categorie");
		categorie.setTextContent(p.getCategorie());
        product.appendChild(categorie);
        Element poid = document.createElement("poid");
        poid.setTextContent(Double.toString(p.getPoid()));
        product.appendChild(poid);
		Element prix = document.createElement("prix");
		prix.setTextContent(Double.toString(p.getPrix()));
        product.appendChild(prix);
        Element description = document.createElement("description");
        description.setTextContent(p.getDescription());
        product.appendChild(description);
        products.appendChild(product);
        document.appendChild(products);
        TransformerFactory tff = TransformerFactory.newInstance();
        Transformer tf = tff.newTransformer();
        tf.setOutputProperty(OutputKeys.INDENT, "yes");
		String path = session.getServletContext().getRealPath("/fichiersXML");
		String fileName = "product.xml";
		File file = new File(path, fileName);
		file.getParentFile().mkdirs();
        tf.transform(new DOMSource(document), new StreamResult(file));
        model.addAttribute("xml", file);
        response.setHeader("content-disposition", "attachment;filename="  
                + URLEncoder.encode(fileName, "UTF-8"));
        FileInputStream in = new FileInputStream(path + "\\" + fileName);
        OutputStream out = response.getOutputStream();  
        byte buffer[] = new byte[1024];  
        int len = 0; 
        while ((len = in.read(buffer)) > 0) {   
            out.write(buffer, 0, len);  
        }   
        in.close();   
        out.close();  
		return "/product/listproduct.do";
	}
}
