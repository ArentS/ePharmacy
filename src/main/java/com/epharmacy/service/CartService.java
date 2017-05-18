package com.epharmacy.service;

import java.io.IOException;

import com.epharmacy.model.Cart;

public interface CartService {

	Cart getCartById(int cartId);
	
	void update(Cart cart);
	
//	Cart validate(int cartId) throws IOException;
}
