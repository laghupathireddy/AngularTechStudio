package com.atos.techstudio.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.atos.techstudio.model.Enquiry;
import com.atos.techstudio.utils.Utils;

@Repository("enquiryDao")
public class EnquiryDaoImpl implements EnquiryDao {
	
	@Override
	public List<Enquiry> getEnquiryList() {
		System.out.println("Enquiry list in dao");
		return Utils.getEnquiryList();
	}
	
}
