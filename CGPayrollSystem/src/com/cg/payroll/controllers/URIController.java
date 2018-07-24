package com.cg.payroll.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cg.payroll.beans.Associate;

@Controller
public class URIController {
	@RequestMapping(value="/")
	public String getIndexPage() {
		return "indexPage";
	}
	@ModelAttribute("associate")
	public Associate getAssociate() {
		return new Associate();
	}
	@RequestMapping(value="/register")
	public String getRegistrationPage() {
		return "registerAssociate";
	}
}
