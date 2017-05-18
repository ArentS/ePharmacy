package com.epharmacy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.epharmacy.model.Cart;
import com.epharmacy.model.Customer;
import com.epharmacy.model.CustomerOrder;
import com.epharmacy.service.CartService;
import com.epharmacy.service.CustomerOrderService;

@Controller
public class OrderController {

	@Autowired
	private CartService cartService;
	
	@Autowired
	private CustomerOrderService customerOrderService;
	
	@RequestMapping("/order/{cartId}")
	public String createOrder(@PathVariable("cartId") int cartId)
	{
		CustomerOrder customerOrder = new CustomerOrder();
		Cart cart = cartService.getCartById(cartId);
		customerOrder.setCart(cart);
		
		Customer customer = cart.getCustomer();
		customerOrder.setCustomer(customer);
		customerOrder.setBillingAddress(customer.getBillingAddress());
		customerOrder.setShippingAddress(customer.getShippingAddress());
		
		
		customerOrderService.addCustomerOrder(customerOrder);
		
		//ky return lidhet me workflow-in me id="addCartToOrder"
		return "redirect:/checkout?cartId=" + cartId;
		
		
		
	}
}
