package com.pam.dao;

import java.util.List;

import com.pam.beans.Product;

public interface IProductDAO {
	public void add(Product p);
	public void delete(int id);
	public Product get(int id);
	public void update(Product p);
	public List<Product> listAll();
	public List<Product> listByIdUtilisateur(int id);
}
