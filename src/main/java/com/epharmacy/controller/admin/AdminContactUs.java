package com.epharmacy.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.epharmacy.model.ContactUs;
import com.epharmacy.service.ContactUsService;

@Controller
@RequestMapping("/admin")
public class AdminContactUs {

	@Autowired
	private ContactUsService contactUsService;
	
	@RequestMapping("/contactUsList")
	public String getContacts(Model model)
	{
		List<ContactUs> contacts = contactUsService.getContactUsList();
		model.addAttribute("contacts",contacts);
		
		return "contactUsList";
	}
	
	@RequestMapping("/deleteContact/{contactId}")
	public String deleteContact(@PathVariable int contactId, Model model)
	{
		ContactUs contactUs = contactUsService.getContactById(contactId);
		contactUsService.deleteContactUs(contactUs);
		
		return "redirect:/admin/contactUsList";
	}
}
