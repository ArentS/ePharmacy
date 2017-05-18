package com.epharmacy.dao;

import com.epharmacy.model.Cart;
import com.epharmacy.model.CartItem;

public interface CartItemDao {

	void addCartItem(CartItem cartItem);

	void removeCartItem(CartItem cartItem);

	void removeAllCartItems(Cart cart);
	
	CartItem getCartItemByProductId(int productId);
}
