package com.epharmacy.dao.impl;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.epharmacy.dao.CartDao;
import com.epharmacy.model.Cart;
import com.epharmacy.service.CustomerOrderService;

@Repository
@Transactional
public class CartDaoImpl implements CartDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private CustomerOrderService customerOrderService;

	@Override
	public Cart getCartById(int cartId) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		return (Cart)session.get(Cart.class, cartId);
	}

	@Override
	public void update(Cart cart) {
		// TODO Auto-generated method stub
		int cartId= cart.getCartId();
		double grandTotal = customerOrderService.getCustomerOrderGrandTotal(cartId);
		cart.setGrandTotal(grandTotal);
		
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(cart);
	}

	@Override
	public Cart validate(int cartId) throws IOException {
		Cart cart = getCartById(cartId);
		if(cart==null || cart.getCartItems().size()==0)
		{
			throw new IOException(cartId+"");
		}
		update(cart);
		return cart;
	}
	

}
