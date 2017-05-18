package com.epharmacy.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.epharmacy.dao.CustomerDao;
import com.epharmacy.model.Authorities;
import com.epharmacy.model.Cart;
import com.epharmacy.model.Customer;
import com.epharmacy.model.Users;

@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao{

	@Autowired
	private SessionFactory sessionFactory;
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	public void addCustomer(Customer customer){
		Session session=sessionFactory.getCurrentSession();
		String pass = customer.getPassword();
		System.out.println(pass);
		customer.setPassword(passwordEncoder.encode(pass));
		customer.getBillingAddress().setCustomer(customer);
		customer.getShippingAddress().setCustomer(customer);
		
		session.saveOrUpdate(customer);
		session.saveOrUpdate(customer.getBillingAddress());
		session.saveOrUpdate(customer.getShippingAddress());
		
		Users newUser = new Users();
		newUser.setUsername(customer.getUsername());
		newUser.setPassword(customer.getPassword());
		newUser.setEnabled(true);
		newUser.setCustomerId(customer.getCustomerId());
		//qikjo
		newUser.setCustomer(customer);
		
		Authorities newAuthority =  new Authorities();
		newAuthority.setUsername(customer.getUsername());
		newAuthority.setAuthority("ROLE_USER");
		
		session.saveOrUpdate(newUser);
		session.saveOrUpdate(newAuthority);
		
		Cart newCart = new Cart();
		newCart.setCustomer(customer);
		customer.setCart(newCart);
		
		session.saveOrUpdate(customer);
		session.saveOrUpdate(newCart);
		
		session.flush();
	}
	
//	public Customer getCustomerById(int customerId)
//	{
//		Session session= sessionFactory.getCurrentSession();
//		return session.get(Customer.class, customerId);
//				
//	}
	
	public Customer getCustomerById(int customerId)
	{
		Session session= sessionFactory.getCurrentSession();
		Customer customer= session.get(Customer.class, customerId);
			session.flush();
			return customer;
	}
	
	public List<Customer> getAllCustomers()
	{
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Customer");
		List<Customer> customerList = query.list();
		
		return customerList;
	}

	@Override
	public Customer getCustomerByUsername(String username) {
		// TODO Auto-generated method stub
		//Shkaku hibernate problem per ?
//		Session session = sessionFactory.getCurrentSession();
//		Query query = session.createQuery("from Customer where username=?");
//		query.setString(0, username);
//		return (Customer) query.uniqueResult();
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Customer where username=:username");
		query.setString("username", username);
		return (Customer) query.uniqueResult();
	}

	@Override
	public void editCustomer(Customer customer, String newpass) {
		// TODO Auto-generated method stub
		String pass=customer.getPassword();
		if(!newpass.isEmpty())
		{
			pass = passwordEncoder.encode(newpass);
		}
			

		customer.setPassword(pass);
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(customer);
		Query query = session.createQuery("from Users where username=:username");
		query.setParameter("username", customer.getUsername());
		Users user =(Users) query.uniqueResult();
		user.setPassword(pass);
		session.saveOrUpdate(user);
		session.flush();
	}
	
	@Override
	public void deleteCustomer(Customer customer) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		session.delete(customer);
		session.flush();
	}
}
