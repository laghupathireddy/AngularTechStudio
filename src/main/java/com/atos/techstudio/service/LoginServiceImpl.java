package com.atos.techstudio.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.atos.techstudio.dao.LoginDao;
import com.atos.techstudio.model.Login;

@Service("loginService")
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	private LoginDao loginDao;
	
	@Transactional
	public boolean validateUser(Login login) {
		System.out.println("value  -------- ");
		return loginDao.validateUser(login) ;
	}
	
}
