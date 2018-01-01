package com.pam.service;

import java.util.List;

import com.pam.beans.Product;

public interface IProductService {
	void add(Product p);
	void delete(int idProduct);
	void update(Product p);
	Product get(int id);
	List<Product> list();
	List<Product> listByIdUtilisateur(int id);
}
