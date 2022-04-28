package com.mockproject.automart.repository;

import javax.persistence.Tuple;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.mockproject.automart.entity.Orders;

@Repository
public interface OrdersRepository extends JpaRepository<Orders, Integer> {

	@Query(value="SELECT (MAX(order_number)+1) AS pk FROM orders",nativeQuery=true)
	public Tuple newOrderNumber();
}
