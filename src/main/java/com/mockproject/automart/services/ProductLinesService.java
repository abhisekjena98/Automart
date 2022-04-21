package com.mockproject.automart.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mockproject.automart.entity.ProductLines;
import com.mockproject.automart.repository.ProductLinesRepository;

@Service
public class ProductLinesService {

	@Autowired
	ProductLinesRepository productLinesRepository;
	
	
	public List<ProductLines> allProductLine() {
		
		return productLinesRepository.findAll();
	}
}
