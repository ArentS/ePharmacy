package com.epharmacy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.epharmacy.dao.ContactUsDao;
import com.epharmacy.model.ContactUs;
import com.epharmacy.service.ContactUsService;

@Service
public class ContactUsServiceImpl implements ContactUsService{

	@Autowired
	private ContactUsDao contactUsDao;
	
	@Override
	public void addContactUs(ContactUs contactUs) {
		// TODO Auto-generated method stub
		contactUsDao.addContactUs(contactUs);
	}

	@Override
	public void deleteContactUs(ContactUs contactUs) {
		// TODO Auto-generated method stub
		contactUsDao.deleteContactUs(contactUs);
	}

	@Override
	public List<ContactUs> getContactUsList() {
		return contactUsDao.getContactUsList();
	}

	@Override
	public ContactUs getContactById(int contactId) {
		// TODO Auto-generated method stub
		return contactUsDao.getContactById(contactId);
	}

}
