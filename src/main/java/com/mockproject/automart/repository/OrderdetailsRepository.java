package com.mockproject.automart.repository;


import java.util.List;

import javax.persistence.Tuple;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.mockproject.automart.entity.Orderdetails;
import com.mockproject.automart.entity.OrderdetailsPK;

@Repository
public interface OrderdetailsRepository extends JpaRepository<Orderdetails, OrderdetailsPK> {

	
	@Query(value = "SELECT a.order_number, b.product_name, a.quantity_ordered, b.product_code,\r\n"
			+ " b.product_line, b.product_description, c.order_date \r\n"
			+ " FROM ((orderdetails a\r\n"
			+ "INNER JOIN products b ON a.product_code = b.product_code)\r\n"
			+ "INNER JOIN orders c ON c.order_number = a.order_number)", nativeQuery = true)
	public List<Tuple> productCodeByProducts();

	

}

