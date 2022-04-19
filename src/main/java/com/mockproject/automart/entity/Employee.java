package com.mockproject.automart.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;



//@SecondaryTable(name="customers", pkJoinColumns=@PrimaryKeyJoinColumn(name = "sales_rep_employee_number", referencedColumnName = "employee_number"))

@Entity
@Table(name="employees")
public class Employee {
	
	@Id
	@Column(name="employee_number")
	private Integer employeeNumber;
	
	@Column(name="last_name")
	private String lastName;
	
	@Column(name="first_name")
	private String firstName;
	

	@Column(name="email")
	private String email;
	
	@Column(name="office_code")
	private String officeCode;
	
	@Column(name="reports_to")
	private int reportsTo;
	
	@Column(name="job_title")
	private String jobTitle;
	
	public Employee() {
		
	}
	
	

	public Employee(String jobTitle) {
		super();
		this.jobTitle = jobTitle;
	}



	public Employee(Integer employeeNumber, String lastName, String firstName, String email, String officeCode,
			int reportsTo, String jobTitle) {
		super();
		this.employeeNumber = employeeNumber;
		this.lastName = lastName;
		this.firstName = firstName;
		this.email = email;
		this.officeCode = officeCode;
		this.reportsTo = reportsTo;
		this.jobTitle = jobTitle;
	}

	public Integer getEmployeeNumber() {
		return employeeNumber;
	}

	public void setEmployeeNumber(Integer employeeNumber) {
		this.employeeNumber = employeeNumber;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getOfficeCode() {
		return officeCode;
	}

	public void setOfficeCode(String officeCode) {
		this.officeCode = officeCode;
	}

	public int getReportsTo() {
		return reportsTo;
	}

	public void setReportsTo(int reportsTo) {
		this.reportsTo = reportsTo;
	}

	public String getJobTitle() {
		return jobTitle;
	}

	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}

	@Override
	public String toString() {
		return "Employee [employeeNumber=" + employeeNumber + ", lastName=" + lastName + ", firstName=" + firstName
				+ ", email=" + email + ", officeCode=" + officeCode + ", reportsTo=" + reportsTo + ", jobTitle="
				+ jobTitle + "]";
	}
	
	

	
	
	

}
