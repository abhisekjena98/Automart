package com.mockproject.automart.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mockproject.automart.entity.ProductLines;

public interface ProductLinesRepository extends JpaRepository<ProductLines, String> {

	
}
