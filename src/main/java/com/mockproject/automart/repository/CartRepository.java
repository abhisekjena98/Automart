package com.mockproject.automart.repository;

import java.util.List;

import javax.persistence.Tuple;
import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.mockproject.automart.entity.Cart;

@Repository
public interface CartRepository extends JpaRepository<Cart, Integer> {

	@Query(value="SELECT c.product_code ,c.customer_number,c.quantity ,p.product_name ,p.MSRP,(c.quantity*p.MSRP)AS total FROM cart c , products p WHERE c.product_code=p.product_code AND c.customer_number= :customerNumber",nativeQuery=true)
	public List<Tuple> cartDetails (@Param("customerNumber") String customerNumber);
	
	public Cart findByProductCodeAndCustomerNumber(String productCode,String customerNumber);
	
	public Cart findByProductCode(String productCode);
	
	public List<Cart> findByCustomerNumber(String customerNumber);
	
	@Modifying 
	@Transactional
	@Query(value="DELETE FROM cart WHERE product_code=:productCode AND customer_number=:customerNumber",nativeQuery=true)
	public void deleteCartValue(@Param("productCode") String productCode,@Param("customerNumber") String customerNumber);
	
	
	@Modifying 
	@Transactional
	@Query(value="UPDATE cart SET quantity= :quant WHERE product_code= :productCode AND customer_number= :customerNumber",nativeQuery=true)
	public void updateCartQuantity(@Param("quant")int quantity, @Param("productCode")String productCode,@Param("customerNumber")String customerNumber);
}
