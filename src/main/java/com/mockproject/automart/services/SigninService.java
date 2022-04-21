package com.mockproject.automart.services;


import java.util.Date;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.mockproject.automart.entity.Signin;
import com.mockproject.automart.repository.SigninRepository;

@Service
public class SigninService {
	
	@Autowired
	SigninRepository signinRepository;
	
	
	public boolean addCustomer(Signin signin) {
		
		String encodedPassword = new BCryptPasswordEncoder().encode(signin.getPassword());
		signin.setPassword(encodedPassword);
		
		//signinRepository.findByEmailId(signin.getEmailId());
		
		signin.setCustomerNumber(createNewId());
		signin.setCreditLimit(1000.0);
		signin.setUserType(1);
		signin.setActiveStatus(1);
		signin.setRegDatetime(new Date());
		
		
		Signin theEmail = signinRepository.findByEmailId(signin.getEmailId()); // checking email 
		
		if(theEmail==null) {
			//System.out.println("customer"+signin);
			signinRepository.save(signin); 
			return true;
		}
		else {
			//System.out.println("EMAIL ALREADY EXIST");
			return false;
		}
	}
	
	// generating a new 6 digit alpha numeric value
	public String createNewId() {
		 String uniqueID = UUID.randomUUID().toString().substring(0, 6);
		 return uniqueID;
	}
}
