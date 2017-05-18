package com.epharmacy.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.epharmacy.dao.ProductDao;
import com.epharmacy.model.Product;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Product> getProductList() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		//Query query = session.createQuery("from Product as p where p.productCondition like 'ne%'");
		Query query = session.createQuery("from Product");

		List<Product> productList = query.list();
		session.flush();
		
		return productList;

	}

	@Override
	public Product getProductById(long id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Product product = session.get(Product.class, id);
		session.flush();

		return product;
	}

	@Override
	public void addProduct(Product product) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(product);
		session.flush();
	}

	@Override
	public void editProduct(Product product) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(product);
		session.flush();
	}

	@Override
	public void deleteProduct(Product product) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.delete(product);
		session.flush();
	}

}