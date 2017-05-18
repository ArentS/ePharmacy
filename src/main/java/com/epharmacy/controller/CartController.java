package com.epharmacy.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.bind.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.epharmacy.model.Customer;
import com.epharmacy.service.CustomerService;

@Controller
@RequestMapping("/customer/cart")
public class CartController {
	
	@Autowired
	private CustomerService customerService;
	
	//qitu shto model-------
	@RequestMapping
	public String getCart(@AuthenticationPrincipal User activeUser, Model model ){
		Customer customer = customerService.getCustomerByUsername(activeUser.getUsername());
		int cartId = customer.getCart().getCartId();
		model.addAttribute("cartId", cartId); //perndyrshe koment
		return "cart"; //perndryshe koment dhe kto tjerat un-komentoji
		//return "redirect:/customer/cart/" + cartId;
	
	}
	
	
	
//	@RequestMapping("/{cartId}")
//	public String getCartRedirect(@PathVariable(value="cartId") int cartId,Model model)
//	{
//		model.addAttribute("cartId", cartId);
//		
//		return "cart";
//	}

}
