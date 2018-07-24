package com.cg.payroll.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cg.payroll.beans.Associate;
import com.cg.payroll.daoservices.PayrollDAOServices;
import com.cg.payroll.exceptions.AssociateDetailsNotFoundException;

@Component(value="payrollServices")
public class PayrollServicesImpl implements PayrollServices {
	@Autowired
	private PayrollDAOServices repo;

	@Override
	public Associate acceptAssociateDetails(Associate associate) {
		
		return repo.saveAndFlush(associate);
	}

	@Override
	public int calculateNetSalary(int associateId) throws AssociateDetailsNotFoundException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Associate getAssociateDetails(int associateId) throws AssociateDetailsNotFoundException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Associate> getAllAssociatesDetails() {
		// TODO Auto-generated method stub
		return null;
	}

}
