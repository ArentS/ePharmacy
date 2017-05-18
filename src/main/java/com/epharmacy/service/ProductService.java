package com.epharmacy.service;

import java.util.List;

import com.epharmacy.model.Product;

public interface ProductService {
	
	List<Product> getProductList();
	
	Product getProductById(long id);
	
	void addProduct(Product product);
	
	void editProduct(Product product);
	
	void deleteProduct(Product product);
	

}
