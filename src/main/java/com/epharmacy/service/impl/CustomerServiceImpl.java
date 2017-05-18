package com.epharmacy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.epharmacy.dao.CustomerDao;
import com.epharmacy.model.Customer;
import com.epharmacy.model.Product;
import com.epharmacy.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService{
	
	@Autowired
	private CustomerDao customerDao;

	@Override
	public void addCustomer(Customer customer) {
		// TODO Auto-generated method stub
		customerDao.addCustomer(customer);
	}

	@Override
	public Customer getCustomerById(int customerId) {
		// TODO Auto-generated method stub
		return customerDao.getCustomerById(customerId);
	}

	@Override
	public List<Customer> getAllCustomers() {
		// TODO Auto-generated method stub
		return customerDao.getAllCustomers();
	}

	@Override
	public Customer getCustomerByUsername(String username) {
		// TODO Auto-generated method stub
		return customerDao.getCustomerByUsername(username);
	}

	@Override
	public void editCustomer(Customer customer, String newpass) {
		// TODO Auto-generated method stub
		customerDao.editCustomer(customer, newpass);
	}
	
	@Override
	public void deleteCustomer(Customer customer) {
		// TODO Auto-generated method stub
		customerDao.deleteCustomer(customer);
	}

}
