package com.pam.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pam.beans.Product;
import com.pam.dao.IProductDAO;

@Service("productService")
public class ProductService implements IProductService {
	@Autowired
	private IProductDAO productMapper;

	@Override
	public void add(Product p) {
		productMapper.add(p);
	}

	@Override
	public void delete(int id) {
		productMapper.delete(id);
	}

	@Override
	public void update(Product p) {
		productMapper.update(p);
	}

	@Override
	public Product get(int id) {
		Product product = productMapper.get(id);
		return product;
	}

	@Override
	public List<Product> list() {
		List<Product> result = productMapper.listAll();
		return result;
	}

	@Override
	public List<Product> listByIdUtilisateur(int id) {
		List<Product> result = productMapper.listByIdUtilisateur(id);
		return result;
	}
}
