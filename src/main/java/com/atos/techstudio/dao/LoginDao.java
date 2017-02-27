package com.atos.techstudio.dao;

import com.atos.techstudio.model.Login;

public interface LoginDao {
	public boolean validateUser(Login login);
}
