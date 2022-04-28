package com.mockproject.automart.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mockproject.automart.entity.ProductLines;

@Repository
public interface ProductLinesRepository extends JpaRepository<ProductLines, String> {

	
}
