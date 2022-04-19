package com.mockproject.automart.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mockproject.automart.entity.Employee;
import com.mockproject.automart.repository.EmployeeRepository;

@Service
public class EmployeeServices {
	
	@Autowired
	EmployeeRepository employeeRepository;
	
	public List<Employee> getEmployeeNamebyJobTitle() {
		
		List<Employee> theEmployeeName = new ArrayList<Employee>();
		
		theEmployeeName = employeeRepository.findEmployeeNameByjobTitle();
		
		
		return theEmployeeName;
	}
	
	public List<Employee> getJobTitles() {
		
		List<Employee> theJobTitle = new ArrayList<Employee>();
		
		theJobTitle = employeeRepository.findDistinctEmployeeByJobTitle();
		for(Employee result : theJobTitle) {
			
			System.out.println(result);
		}
		
		return theJobTitle;
	}
	
	public List<Employee> byJobTitle(String jobDetail) {
		
		List<Employee> theJobDetail = new ArrayList<Employee>();
		 theJobDetail = employeeRepository.employeeNames(jobDetail);
		 //System.out.println(theJobDetail);
		return theJobDetail;
	}
}
