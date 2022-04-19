package com.mockproject.automart.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.mockproject.automart.entity.Employee;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {
	
	@Query(value="SELECT CONCAT(first_name,' ',last_name,'(',job_title,')') AS first_name ,job_title,employee_number,last_name,email,office_code,reports_to ,employee_number FROM employees;",nativeQuery=true)
	List<Employee> findEmployeeNameByjobTitle();
	
	@Query(value="SELECT DISTINCT job_title,employee_number,last_name,first_name,email,office_code,reports_to FROM employees GROUP BY job_title",nativeQuery=true)
	List<Employee> findDistinctEmployeeByJobTitle();

	
	  @Query(value="SELECT employee_number, last_name, first_name, email, office_code, reports_to, job_title FROM employees  WHERE job_title = :jobtitle",nativeQuery = true)
	  public List<Employee> employeeNames(@Param("jobtitle") String jobTitle);
	 
	
	 
}
