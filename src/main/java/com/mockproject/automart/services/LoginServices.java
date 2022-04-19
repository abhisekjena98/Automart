package com.mockproject.automart.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mockproject.automart.entity.Login;
import com.mockproject.automart.repository.LoginRepository;

@Service
public class LoginServices {

	@Autowired
	LoginRepository loginRepository;
	
	public Login loginChecker(String loginId) {
		
		Login result = loginRepository.findByLoginId(loginId);
		
		System.out.println(result);
		
		return result;
	}
}
