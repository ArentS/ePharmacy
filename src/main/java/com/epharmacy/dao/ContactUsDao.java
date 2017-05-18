package com.epharmacy.dao;

import java.util.List;

import com.epharmacy.model.ContactUs;

public interface ContactUsDao {

	void addContactUs(ContactUs contactUs);

	void deleteContactUs(ContactUs contactUs);
	
	List<ContactUs> getContactUsList();
	
	ContactUs getContactById(int contactId);
}
