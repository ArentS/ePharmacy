package com.epharmacy.service.impl;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.epharmacy.dao.CartDao;
import com.epharmacy.model.Cart;
import com.epharmacy.service.CartService;

@Service
public class CartServiceImpl implements CartService{
	
	@Autowired
	private CartDao cartDao;

	@Override
	public Cart getCartById(int cartId) {
		// TODO Auto-generated method stub
		return cartDao.getCartById(cartId);
	}

	@Override
	public void update(Cart cart) {
		// TODO Auto-generated method stub
		cartDao.update(cart);
	}
	
//	public Cart validate(int cartId) throws IOException {
//		Cart cart = getCartById(cartId);
//		if(cart==null || cart.getCartItems().size()==0)
//		{
//			throw new IOException(cartId+"");
//		}
//		update(cart);
//		return cart;
//	}
	
	

}
