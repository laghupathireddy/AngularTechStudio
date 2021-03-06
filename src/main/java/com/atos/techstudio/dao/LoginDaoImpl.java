package com.atos.techstudio.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.atos.techstudio.model.Login;

@Repository("loginDao")
public class LoginDaoImpl implements LoginDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public boolean validateUser(Login login) {
		/*try {
			String str = "from User where username = :username and password = :password";
			Query query = sessionFactory.getCurrentSession().createQuery(str);
			query.setString("username", login.getUsername());
			query.setString("password", login.getPassword());
			List<User> list = query.list();
			if(list != null & list.size() > 0) {
				return true;
			} else {
				return false;
			}			
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}*/
		if(login.getUsername().equals(login.getPassword())) {
			return true;
		}
		return false;
	}
	
}
