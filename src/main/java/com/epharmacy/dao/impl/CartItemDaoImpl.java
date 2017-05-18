package com.epharmacy.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.epharmacy.dao.CartItemDao;
import com.epharmacy.model.Cart;
import com.epharmacy.model.CartItem;

@Repository
@Transactional
public class CartItemDaoImpl implements CartItemDao{
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addCartItem(CartItem cartItem) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(cartItem);
		session.flush();
	}

	@Override
	public void removeCartItem(CartItem cartItem) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.delete(cartItem);
		session.flush();
	}

	@Override
	public void removeAllCartItems(Cart cart) {
		// TODO Auto-generated method stub
		List<CartItem> cartItems =cart.getCartItems();	
		for (CartItem item : cartItems) {
			removeCartItem(item);
		}
	
	}

	@Override
	public CartItem getCartItemByProductId(int productId) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		//Query query = session.createQuery("from CartItem where productId=?");
		Query query = session.createQuery("from CartItem where productId=:productId");
		query.setInteger("productId", productId);
		session.flush();
		
		return (CartItem)query.uniqueResult();
	}

}
