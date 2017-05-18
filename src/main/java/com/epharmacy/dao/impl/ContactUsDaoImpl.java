package com.epharmacy.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.epharmacy.dao.ContactUsDao;
import com.epharmacy.model.ContactUs;
import com.epharmacy.model.Customer;

@Repository
@Transactional
public class ContactUsDaoImpl implements ContactUsDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void addContactUs(ContactUs contactUs) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(contactUs);
		session.flush();
	}

	@Override
	public void deleteContactUs(ContactUs contactUs) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.delete(contactUs);
		session.flush();
	}

	@Override
	public List<ContactUs> getContactUsList() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from ContactUs");

		List<ContactUs> contactUsList = query.list();
		session.flush();
		
		return contactUsList;

	}

	@Override
	public ContactUs getContactById(int contactId) {
		// TODO Auto-generated method stub
		Session session= sessionFactory.getCurrentSession();
		ContactUs contact= session.get(ContactUs.class, contactId);
		session.flush();
		return contact;
	}

	

}
