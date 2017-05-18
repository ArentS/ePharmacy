package com.epharmacy.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.epharmacy.model.ContactUs;
import com.epharmacy.service.ContactUsService;

@Controller
public class ContactUsController {		

	@Autowired
	private ContactUsService contactUsService;
	
	@RequestMapping("/contactUs")
	public String registerContactUs(Model model)
	{
		ContactUs contactus = new ContactUs();
		
		model.addAttribute("contactus",contactus);
		
		return "contactUs";
	}

	@RequestMapping(value="/contactUs", method=RequestMethod.POST)
	public String registerContactUsPost(@ModelAttribute("contactus") ContactUs contactus, Model model)
	{
		
		contactUsService.addContactUs(contactus);
		
		return "contactUs";
	}
}
