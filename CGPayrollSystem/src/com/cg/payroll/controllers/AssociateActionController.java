package com.cg.payroll.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cg.payroll.beans.Associate;
import com.cg.payroll.services.PayrollServices;


@Controller
public class AssociateActionController {

	@Autowired
	PayrollServices payrollServices;
	
	public static String mobileNo;
	@RequestMapping(value="/registerAssociate")
	public ModelAndView registerCustomer(@Valid @ModelAttribute("customer") Associate associate,BindingResult result) {
		if(result.hasErrors())
			return new ModelAndView("registerAssociate");
		payrollServices.acceptAssociateDetails(associate);
		return new ModelAndView("registrationSuccessPage","associate",associate);	
	}
	
	
	
	
}
