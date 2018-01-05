package com.pam.service;

import com.pam.beans.Product;
import com.pam.beans.Stocage;

import java.util.List;

public interface IStocageService {

        //insert
        void addStocage(Stocage stocage);
        //select
        List<Product> getProduct(int idUtilisateur);

}
