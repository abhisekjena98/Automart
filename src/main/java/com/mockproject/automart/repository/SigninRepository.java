package com.mockproject.automart.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mockproject.automart.entity.Signin;

@Repository
public interface SigninRepository extends JpaRepository<Signin, String> {

	//boolean existsByEmail(String email);
	//Optional<Signin> findByEmail(String email);
	
	public Signin findByEmailId(String email);
	
	/*
	 * @Modifying
	 * 
	 * @Query("INSERT INTO customers (customer_number, customer_name, contact_last_name, contact_first_name, phone, address_line1, address_line2, city, state, postal_code, country, sales_rep_employee_number, credit_limit) "
	 * +
	 * "VALUES (:custnumb, :custname, :lastname, :firstname, :phone, :addressline1, :addressline2, :city, :state, :postalcode, :country, :salesrep, :creditlimit) "
	 * ) void insertCustomer(@Param("custnumb") String
	 * customerNumber,@Param("custname") String customerName,@Param("lastname")
	 * String contactLastName,@Param("firstname") String
	 * contactFirstName,@Param("phone") String Phone,@Param("addressline1") String
	 * addressLine1,@Param("addressline2") String addressLine2,@Param("city") String
	 * city,@Param("state") String state,@Param("postalcode") String
	 * postalCode,@Param("country") String country ,@Param("salesrep")String
	 * salesRepEmployeeNumber,@Param("creditlimit") int creditLimit);
	 */
}
