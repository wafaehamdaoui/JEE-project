package com.eidia.exam.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eidia.exam.dao.UserRepository;
import com.eidia.exam.entity.User;

@Service
public class LoginService {
	@Autowired
	private UserRepository userRepository;
	public boolean validateUser(String username, String password) {
        return userRepository.findUser(username, password)!=null;
    }
	
	public boolean isAdmin(String role) {
        if(role.equalsIgnoreCase("admin"))
        	return true;
        return false; 
    }

}
