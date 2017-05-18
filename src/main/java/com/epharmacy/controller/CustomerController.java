package com.epharmacy.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.epharmacy.model.Customer;
import com.epharmacy.service.CustomerService;

@Controller
@RequestMapping("/customer")
@SessionAttributes("customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;
	private String password;
	@RequestMapping(value="/customer/editCustomer",  method=RequestMethod.GET)
	public String editCustomer( Model model, Principal principal)
	{
		Customer customer = customerService.getCustomerByUsername(principal.getName());
		System.out.println("calledGet"+customer.getPassword());
		model.addAttribute("customer",customer);
		System.out.println("Get"+customer);
		return "customerProfile";
	}
	
	@RequestMapping(value="/customer/editCustomer", method=RequestMethod.POST)
	public String editCustomerPost(@Valid @ModelAttribute("customer") Customer customer, BindingResult result,HttpServletRequest request)
	{
	
		String pass = request.getParameter("newpassword");
//		System.out.println("New passowrd"+pass);
//		System.out.println("POST"+customer);
		//customer.setPassword(password);
//		System.out.println("CalledPost"+customer.getPassword());
		if(result.hasErrors())
		{
			return "editCustomer";
		}
		

		customerService.editCustomer(customer, pass);
		
		return "redirect:/";
	}
}
