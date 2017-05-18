package com.epharmacy.dao;

import java.util.List;

import com.epharmacy.model.Customer;
import com.epharmacy.model.Product;

public interface CustomerDao {

	void addCustomer(Customer customer);
	
	Customer getCustomerById(int customerId);
	
	List<Customer> getAllCustomers();

	Customer getCustomerByUsername(String username);
	
	void editCustomer(Customer customer, String newpass);
	
	void deleteCustomer(Customer customer);

}
