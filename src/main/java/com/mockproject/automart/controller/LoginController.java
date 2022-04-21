package com.mockproject.automart.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mockproject.automart.entity.Employee;
import com.mockproject.automart.entity.Login;
import com.mockproject.automart.entity.Signin;
import com.mockproject.automart.services.EmployeeServices;
import com.mockproject.automart.services.LoginServices;
import com.mockproject.automart.services.SigninService;

@Controller
public class LoginController {
	
	@Autowired
	SigninService signinService;
	
	@Autowired
	LoginServices loginService;
	
	@Autowired
	EmployeeServices employeeService;
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String login() {
		System.out.println("hello");
		return "login2";
		
	}
	
	@RequestMapping(value="/loggedin", method = RequestMethod.POST)
	public String loggedIn(Login login,ModelMap model) {
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		
		
		
		
		Login dbDetails = loginService.loginChecker(login.getLogin_id());
		boolean passwordResult = encoder.matches(login.getPassword(), dbDetails.getPassword());
		System.out.println(passwordResult);
		
		if(passwordResult==false||dbDetails==null) {
			
			model.addAttribute("passwordResult","Invalid Password or LoginId!!! Please Enter a valid password and LoginId");
			return "login2";
		}
		else{
			
			return "homepage";
		}		
		
	}
	
	@RequestMapping(value="/signin", method = RequestMethod.GET)
	public String Signin(HttpSession s) {
		
		
		List<Employee> empList=employeeService.getEmployeeNamebyJobTitle();
		s.setAttribute("EmpList", empList);
		
		employeeService.getJobTitles();
		
		List<Employee> jobList=employeeService.getJobTitles();
		
		s.setAttribute("JobList", jobList);
		
		return "signin2";
		
	}
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public String registerCustomer(Signin signin, ModelMap model,HttpSession s) {
		
		
		boolean result = signinService.addCustomer(signin);
		
		String custNum = signin.getCustomerNumber();		
		if(result==true) {
			model.addAttribute("message", "Signin Successfull and your login id is : "+custNum);
			return "login2";
		}
		else {
			model.addAttribute("message", "Email id Already exist Please try with different mail id");
			model.addAttribute("signin",signin);
			return "signin2";
		}
		
	}

	/*
	 * @RequestMapping(value="/home", method = RequestMethod.GET) public String
	 * homePage() { employeeService.byJobTitle("Sales Rep"); return "homepage";
	 * 
	 * }
	 */
	@PostMapping("/details")
	@ResponseBody
	public List<Employee> dropDown(@RequestBody String data) {
		
		System.out.println(data);
		List<Employee> theEmployeeDetails=employeeService.byJobTitle(data);
		System.out.println(theEmployeeDetails);
		//model.addAttribute("empdetails",theEmployeeDetails);
		
		return theEmployeeDetails;
		
	}
	
	

	@RequestMapping(value="/home")
	public String home() {
		
		return "index";
		
	}
	
	
	
	
	
	@RequestMapping(value="/index")
	public String index() {
		
		return "index";
		
	}
	
	@RequestMapping(value="/checkout")
	public String checkout() {
		
		return "checkout";
		
	}
	@RequestMapping(value="/cart")
	public String cart() {
		
		return "cart";
		
	}
	@RequestMapping(value="/shop")
	public String shop() {
		
		return "shop";
		
	}
	@RequestMapping(value="/singleproduct")
	public String singleproduct() {
		
		return "singleproduct";
		
	}
	@RequestMapping(value="/category")
	public String category() {
		
		return "category";
		
	}
	
	
	
	
}
