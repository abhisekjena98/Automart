package com.mockproject.automart.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mockproject.automart.entity.Products;
import com.mockproject.automart.repository.ProductsRepository;

@Service
public class ProductsService {

	@Autowired
	ProductsRepository productsRepository;
	
	public List<Products> productNamesByProductLine(String productLine) {
		
		List<Products> productNames = new ArrayList<Products>();
		productNames = productsRepository.findByProductLine(productLine);
		
		return productNames;
	}

	public Products productListByProductCode(String productCode) {
		
		Products productList = productsRepository.findByProductCode(productCode);
		
		return productList;
	}
	
	public List<Products> allProducts(){
		
		return productsRepository.findAll();
	}
}
