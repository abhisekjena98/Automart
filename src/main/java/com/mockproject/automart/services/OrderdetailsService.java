package com.mockproject.automart.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mockproject.automart.entity.Orderdetails;
import com.mockproject.automart.repository.OrderdetailsRepository;

@Service
public class OrderdetailsService {

	@Autowired
	OrderdetailsRepository orderDetailsRepository;
	
	public void addOrderdetails(Orderdetails orderdetails) {
		
		orderDetailsRepository.save(orderdetails);
	}
}
