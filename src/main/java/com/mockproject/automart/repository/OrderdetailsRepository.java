package com.mockproject.automart.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mockproject.automart.entity.Orderdetails;
import com.mockproject.automart.entity.OrderdetailsPK;

@Repository
public interface OrderdetailsRepository extends JpaRepository<Orderdetails, OrderdetailsPK>{

	
}
