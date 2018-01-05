package com.pam.handlers;

import com.pam.beans.Product;
import com.pam.service.IStocageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/stocage")
public class StocageController {

    @Autowired
    @Qualifier("StocageService")
    private IStocageService service;

    @RequestMapping("consulter.do")
    public ModelAndView doConsulter(HttpSession session){
        ModelAndView mv = new ModelAndView();
        int idUtilisateur = (int) session.getAttribute("userid");
        List<Product> Product = service.getProduct(idUtilisateur);
        mv.addObject("product", Product);
        mv.setViewName("/stocage.jsp");
        return mv;
    }
}
