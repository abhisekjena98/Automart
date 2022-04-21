package com.mockproject.automart.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.SecondaryTable;
import javax.persistence.Table;


@Entity
@Table(name ="product_lines")
public class ProductLines {

	@Id
	@Column(name = "product_line")
	private String productLine;
	
	@Column(name="text_description")
	private String textDescription;
	
	@Column(name="html_description")
	private String htmlDescription;
	  
	 

	public ProductLines() {

	}

	
	public ProductLines(String productLine, String textDescription, String htmlDescription) {
		super();
		this.productLine = productLine;
		this.textDescription = textDescription;
		this.htmlDescription = htmlDescription;
	}


	public String getProductLine() {
		return productLine;
	}

	public void setProductLine(String productLine) {
		this.productLine = productLine;
	}

	public String getTextDescription() {
		return textDescription;
	}

	public void setTextDescription(String textDescription) {
		this.textDescription = textDescription;
	}
	
	
	
	public String getHtmlDescription() {
		return htmlDescription;
	}

	public void setHtmlDescription(String htmlDescription) {
		this.htmlDescription = htmlDescription;
	}


	@Override
	public String toString() {
		return "ProductLines [productLine=" + productLine + ", textDescription=" + textDescription
				+ ", htmlDescription=" + htmlDescription + "]";
	}

	

}
