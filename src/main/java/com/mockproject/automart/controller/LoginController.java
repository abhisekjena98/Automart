package com.mockproject.automart.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.Tuple;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mockproject.automart.entity.Cart;
import com.mockproject.automart.entity.Employee;
import com.mockproject.automart.entity.Login;
import com.mockproject.automart.entity.Orderdetails;
import com.mockproject.automart.entity.Orders;
import com.mockproject.automart.entity.ProductLines;
import com.mockproject.automart.entity.Products;
import com.mockproject.automart.entity.Signin;
import com.mockproject.automart.services.CartService;
import com.mockproject.automart.services.EmployeeServices;
import com.mockproject.automart.services.LoginServices;
import com.mockproject.automart.services.OrderdetailsService;
import com.mockproject.automart.services.OrdersService;
import com.mockproject.automart.services.ProductLinesService;
import com.mockproject.automart.services.ProductsService;
import com.mockproject.automart.services.SigninService;

@Controller
public class LoginController {

	@Autowired
	SigninService signinService;

	@Autowired
	LoginServices loginService;

	@Autowired
	EmployeeServices employeeService;

	@Autowired
	ProductLinesService productLinesService;

	@Autowired
	ProductsService productsService;

	@Autowired
	CartService cartService;
	
	@Autowired
	OrdersService ordersService;
	
	@Autowired
	OrderdetailsService orderdetailsService;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {

		
		
		return "login2";

	}

	@RequestMapping(value = "/loggedin", method = RequestMethod.POST)
	public String loggedIn(Login login, ModelMap model, HttpSession session) {

		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();

		Login dbDetails = loginService.loginChecker(login.getLogin_id());
		boolean passwordResult = encoder.matches(login.getPassword(), dbDetails.getPassword());
		

		if (passwordResult == false || dbDetails == null) {

			model.addAttribute("passwordResult",
					"Invalid Password or LoginId!!! Please Enter a valid password and LoginId");
			return "login2";
		} else {
			session.setAttribute("LoginId", login.getLogin_id());
			return "index";
		}

	}

	@RequestMapping(value = "/signin", method = RequestMethod.GET)
	public String Signin(HttpSession s) {

		List<Employee> empList = employeeService.getEmployeeNamebyJobTitle();
		s.setAttribute("EmpList", empList);

		employeeService.getJobTitles();

		List<Employee> jobList = employeeService.getJobTitles();

		s.setAttribute("JobList", jobList);

		return "signin2";

	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerCustomer(Signin signin, ModelMap model, HttpSession s) {

		boolean result = signinService.addCustomer(signin);

		String custNum = signin.getCustomerNumber();
		if (result == true) {
			model.addAttribute("message", "Signin Successfull and your login id is : " + custNum);
			return "login2";
		} else {
			model.addAttribute("message", "Email id Already exist Please try with different mail id");
			model.addAttribute("signin", signin);
			return "signin2";
		}

	}

	@PostMapping("/details")
	@ResponseBody
	public List<Employee> dropDown(@RequestBody String data) {

		List<Employee> theEmployeeDetails = employeeService.byJobTitle(data);
		
		return theEmployeeDetails;

	}

	@RequestMapping(value = "/")
	public String index(HttpSession s) {

		List<ProductLines> productList = productLinesService.allProductLine();
		s.setAttribute("ProductList", productList);
		
		List<Products>allProducts = productsService.allProducts();
		s.setAttribute("ProductNameList", allProducts);

		return "index";

	}

	@RequestMapping(value = "/checkout")
	public String checkout() {

		return "checkout";

	}

	@RequestMapping(value = "/cart")
	public String cart(HttpSession s) {
		String customernumber = (String) s.getAttribute("LoginId");
		List<Tuple> cartList = cartService.cartDetails(customernumber);
		s.setAttribute("CartList", cartList);
		return "cart";

	}

	@RequestMapping(value = "/shop")
	public String shop() {

		return "shop";

	}

	@RequestMapping(value = "/singleproduct")
	public String singleproduct() {

		return "singleproduct";

	}

	@RequestMapping(value = "/category")
	public String category() {

		return "category";

	}

	@RequestMapping(value = "/logout")
	public String logout(HttpSession s) {

		s.removeAttribute("LoginId");
		return "index";

	}

	@PostMapping(value = "/list")
	@ResponseBody
	public String categoryList(@RequestBody String data, ModelMap model, HttpSession s) {
		

		List<Products> productNameList = productsService.productNamesByProductLine(data);
		s.setAttribute("ProductNameList", productNameList);
		return "shop";

	}

	@PostMapping(value = "/addtocart")
	@ResponseBody
	public boolean addToCart(@RequestBody String data, HttpSession s, Cart cart) {
		System.out.println(data);

		Products productList = productsService.productListByProductCode(data);

		String customernumber = (String) s.getAttribute("LoginId");
		Cart cartResult = cartService.findByProductCodeAndCustomerNumber(data, customernumber);
		if (customernumber == null) {
			return false;
		} else {
			if (cartResult == null) {
				cart.setProductCode(productList.getProductCode());
				cart.setQuantity(1);
				cart.setTimestamp(new Date());
				cart.setCustomerNumber(customernumber);
				cartService.saveToCart(cart);

			} else {

				cartResult.setQuantity(cartResult.getQuantity() + 1);
				cartService.saveToCart(cartResult);

			}

			return true;
		}

	}

	@PostMapping(value = "/update")
	@ResponseBody
	public String quantity(@RequestBody HashMap<String, Integer> data, HttpSession s) {

		String customernumber = (String) s.getAttribute("LoginId");

		if (customernumber != null) {
			for (Map.Entry<String, Integer> set : data.entrySet()) {

				cartService.updateCart(set.getValue(), set.getKey(), customernumber);
			}
		}

		return "cart";
	}

	@PostMapping(value = "/delete")
	@ResponseBody
	public String delete(@RequestBody String data, HttpSession s) {

		String customernumber = (String) s.getAttribute("LoginId");
		cartService.deleteCartData(data, customernumber);
		return "cart";
	}

	@PostMapping(value = "/placeorder")
	public void placeOrder(HttpSession s, Orderdetails orderDetails, Orders orders) {

		String customernumber = (String) s.getAttribute("LoginId");
		Integer newOrderNumber = Integer.parseInt(ordersService.newOrderNumber().get("pk").toString());
		

		if (customernumber != null) {
			
			orders.setComments(null);
			orders.setCustomerNumber(customernumber);
			orders.setOrderDate(new Date());
			orders.setOrderNumber(newOrderNumber);
			orders.setRequiredDate(new Date());
			orders.setShippedDate(new Date());
			orders.setStatus("In Process");
			
			ordersService.AddOrders(orders);
			
			List<Tuple> cartDetails = cartService.cartDetails(customernumber);

			for (Tuple result : cartDetails) {
				
				orderDetails.setOrderLineNumber(1);
				orderDetails.setOrderNumber(newOrderNumber);
				orderDetails.setPriceEach(Double.parseDouble(result.get("MSRP").toString()));
				orderDetails.setProductCode(result.get("product_code").toString());
				orderDetails.setQuantityOrdered(Integer.parseInt(result.get("quantity").toString()));
				
				orderdetailsService.addOrderdetails(orderDetails);
			}
			
		}
	}

}
