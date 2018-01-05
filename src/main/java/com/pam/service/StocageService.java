package com.pam.service;

import com.pam.beans.Product;
import com.pam.beans.Stocage;
import com.pam.dao.IStocageDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("StocageService")
public class StocageService implements IStocageService{

    @Autowired
    @Qualifier("IStocageDao")
    private IStocageDao dao;

    @Override
    public void addStocage(Stocage stocage) {
        dao.insertStocage(stocage);
    }

    @Override
    public List<Product> getProduct(int idUtilisateur) {
        return dao.selectProduct(idUtilisateur);
    }
}
