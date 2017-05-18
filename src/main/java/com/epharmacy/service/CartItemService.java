package com.epharmacy.service;

import com.epharmacy.model.Cart;
import com.epharmacy.model.CartItem;

public interface CartItemService {
	
	void addCartItem(CartItem cartItem);
	
	void removeCartItem(CartItem cartItem);
	
	void removeAllCartItems(Cart cart);
	
	CartItem getCartItemByProductId(int productId);
	

}
