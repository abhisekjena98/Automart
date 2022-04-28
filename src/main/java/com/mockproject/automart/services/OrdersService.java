package com.mockproject.automart.services;

import javax.persistence.Tuple;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mockproject.automart.entity.Orders;
import com.mockproject.automart.repository.OrdersRepository;

@Service
public class OrdersService {

	@Autowired
	OrdersRepository ordersRepository;
	
	public Tuple newOrderNumber() {
		
		return  ordersRepository.newOrderNumber();
	}
	
	public void AddOrders(Orders orders) {
		
		ordersRepository.save(orders);
	}
}
