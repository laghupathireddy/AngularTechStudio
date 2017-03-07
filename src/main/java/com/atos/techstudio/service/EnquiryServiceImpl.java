package com.atos.techstudio.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atos.techstudio.dao.EnquiryDao;
import com.atos.techstudio.model.Enquiry;

@Service("enquiryService")
public class EnquiryServiceImpl implements EnquiryService{
	
	@Autowired
	private EnquiryDao enquiryDao;
	
	public List<Enquiry> getEnquiryList() {
		return enquiryDao.getEnquiryList() ;
	}
	
}
