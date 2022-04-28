package com.mockproject.automart.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mockproject.automart.entity.Products;

@Repository
public interface ProductsRepository extends JpaRepository<Products, String> {

	public List<Products> findByProductLine(String productLine);
	
	public Products findByProductCode(String productCode);
}
