package com.epharmacy.service;

import java.util.List;

import com.epharmacy.model.ContactUs;

public interface ContactUsService {

	void addContactUs(ContactUs contactUs);
	
	void deleteContactUs(ContactUs contactUs);
	
	List<ContactUs> getContactUsList();
	
	ContactUs getContactById(int contactId);
}
