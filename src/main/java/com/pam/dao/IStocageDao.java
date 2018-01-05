package com.pam.dao;

import java.util.List;

import com.pam.beans.Product;
import com.pam.beans.Stocage;

public interface IStocageDao {

    void insertStocage(Stocage stocage);

    List<Product> selectProduct(int idUtilisateur);
}
