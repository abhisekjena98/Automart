package com.mockproject.automart.entity;

import java.io.Serializable;
import java.util.Objects;

public class OrderdetailsPK implements Serializable{

	private Integer orderNumber;
	
	
	private String productCode;


	@Override
	public int hashCode() {
		return Objects.hash(orderNumber, productCode);
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		OrderdetailsPK other = (OrderdetailsPK) obj;
		return Objects.equals(orderNumber, other.orderNumber) && Objects.equals(productCode, other.productCode);
	}


	
	
	public OrderdetailsPK() {
		
	}


	public OrderdetailsPK(Integer orderNumber, String productCode) {
		super();
		this.orderNumber = orderNumber;
		this.productCode = productCode;
	}

	
	
}
