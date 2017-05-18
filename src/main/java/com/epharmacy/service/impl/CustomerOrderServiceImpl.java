package com.epharmacy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.epharmacy.dao.CustomerOrderDao;
import com.epharmacy.model.Cart;
import com.epharmacy.model.CartItem;
import com.epharmacy.model.CustomerOrder;
import com.epharmacy.service.CartService;
import com.epharmacy.service.CustomerOrderService;

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService{

	@Autowired
	private CustomerOrderDao customerOrderDao;
	
	@Autowired
	private CartService cartService;
	
	@Override
	public void addCustomerOrder(CustomerOrder customerOrder) {
		// TODO Auto-generated method stub
		customerOrderDao.addCustomerOrder(customerOrder);
	}

	@Override
	public double getCustomerOrderGrandTotal(int cartId) {
		// TODO Auto-generated method stub
		double grandTotal=0;
		Cart cart = cartService.getCartById(cartId);
		List<CartItem> cartItems = cart.getCartItems();
		
		for (CartItem item : cartItems) {
			grandTotal+=item.getTotalPrice();
		}
			
		return grandTotal;
	}

}
