package com.epharmacy.service;

import java.util.List;

import com.epharmacy.model.Customer;

public interface CustomerService {

	void addCustomer(Customer customer);
	
	Customer getCustomerById(int customerId);
	
	List<Customer> getAllCustomers();
	
	Customer getCustomerByUsername(String username);
	
	void editCustomer(Customer customer, String newpass);
	
	void deleteCustomer(Customer customer);
	
}
