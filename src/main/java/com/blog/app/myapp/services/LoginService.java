package com.blog.app.myapp.services;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blog.app.myapp.entity.User;
import com.blog.app.myapp.repository.UserRepository;

@Service
public class LoginService {
	@Autowired
	private UserRepository userRepository;

	public boolean checkLoginAuthentication(User user) {
		User obj = userRepository.findByUserName(user.getUserName());
		if (obj != null && !obj.getPassword().equalsIgnoreCase("") && obj.getPassword().equals(user.getPassword())
				&& obj.getStatus().equals("active")) {
			return true;
		}
		return false;
	}

	
	public void saveUserSession(User user, HttpSession httpSession) {
		httpSession.setAttribute("user", user);
	}
}
