package com.mockproject.automart.services;

import java.util.List;

import javax.persistence.Tuple;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mockproject.automart.entity.Cart;
import com.mockproject.automart.repository.CartRepository;

@Service
public class CartService {
	
	@Autowired
	CartRepository cartRepository;

	public void saveToCart(Cart cart) {
	
		cartRepository.save(cart);
	}
	
	
	public List<Cart> allCartValues() {
		
		return cartRepository.findAll();
	}
	
	
	public List<Tuple> cartDetails(String customerNumber) {
		
		return cartRepository.cartDetails(customerNumber);
	}
	
	
	public Cart findByProductCodeAndCustomerNumber(String productCode,String customerNumber) {
		
		return cartRepository.findByProductCodeAndCustomerNumber(productCode, customerNumber);
	}
	
	
	public Cart findByProductCode(String productCode) {
		
		return cartRepository.findByProductCode(productCode);
	}
	
	
	public void deleteCartData(String productCode,String customerNumber) {
		
		cartRepository.deleteCartValue(productCode, customerNumber);
	}
	
	
	public void updateCart(int quantity, String productCode , String CustomerNumber) {
		
		cartRepository.updateCartQuantity(quantity, productCode, CustomerNumber);
	}
	
	public List<Cart> findByCustomerNumber(String customerNumber) {
		
		return cartRepository.findByCustomerNumber(customerNumber);
	}
}
