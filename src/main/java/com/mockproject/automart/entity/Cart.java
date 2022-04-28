package com.mockproject.automart.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

//@SecondaryTable(name="products", pkJoinColumns=@PrimaryKeyJoinColumn(name = "product_code", referencedColumnName = "product_code"))
@Entity
@Table(name="cart")
public class Cart {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer sno;
	private String productCode;
	private Integer quantity;
	private Date timestamp;
	private String customerNumber;
	
	
	public Cart() {
		
	}
	

	public Cart(Integer sno, String productCode, Integer quantity, Date timestamp, String customerNumber) {
		super();
		this.sno = sno;
		this.productCode = productCode;
		this.quantity = quantity;
		this.timestamp = timestamp;
		this.customerNumber = customerNumber;
	}






	public Cart(String productCode, Integer quantity, Date timestamp, String customerNumber) {
		super();
		this.productCode = productCode;
		this.quantity = quantity;
		this.timestamp = timestamp;
		this.customerNumber = customerNumber;
		
	}
	
	public Cart(Integer quantity) {
		super();
		this.quantity = quantity;
	}


	public String getProductCode() {
		return productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Date getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(Date timestamp) {
		this.timestamp = timestamp;
	}

	public String getCustomerNumber() {
		return customerNumber;
	}

	public void setCustomerNumber(String customerNumber) {
		this.customerNumber = customerNumber;
	}
	
	
	@Override
	public String toString() {
		return "Cart [productCode=" + productCode + ", quantity=" + quantity + ", timestamp=" + timestamp
				+ ", customerNumber=" + customerNumber + "]";
	}
	
}
