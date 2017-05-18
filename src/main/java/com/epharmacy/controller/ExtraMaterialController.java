package com.epharmacy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/extra")
public class ExtraMaterialController {

	@RequestMapping("/1")
	public String getExtra()
	{
		return "test";
	}
	@RequestMapping("/2")
	public String getExtra2()
	{
		return "test2";
	}
	@RequestMapping("/3")
	public String getExtra3()
	{
		return "test3";
	}
}
