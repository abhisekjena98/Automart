<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Orders Page - Automart</title>

<!-- Google Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,100'
	rel='stylesheet' type='text/css'>

<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- Font Awesome -->
<link rel="stylesheet" href="css/font-awesome.min.css">

<!-- Custom CSS -->
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/responsive.css">

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

	<div class="header-area">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="user-menu">
						<ul>
							<li><a href="signin"><i class="fa fa-user"></i> Signin</a></li>
                            <li><a href="cart"><i class="fa fa-user"></i> My Cart</a></li>
                            <li><a href="login"><i class="fa fa-user"></i> Login</a></li>
                            <li><a href="logout"><i class="fa fa-power-off"></i>Logout</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-4">
					<div class="header-right"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- End header area -->

	<div class="site-branding-area">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<div class="logo">
						<h1>
							<a href="./"><img src="img/autimart.png"></a>
						</h1>
					</div>
				</div>

				<div class="col-sm-6">
					<div class="shopping-item">
						<a href="cart">Cart<span class="cart-amunt"></span>
							<i class="fa fa-shopping-cart"></i>
							<!-- <p class="product-count" id="cartValue"></p> --></a>
					</div>
				</div>
			</div>
		</div>
	</div> 
	<!-- End site branding area -->

	<div class="mainmenu-area">
		<div class="container">
			<div class="row">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
				</div>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
							
									
						<li><a href="/">Home</a></li>
						<li><a href="#">
								<div class="form-group">
									<select name="category" id="categorylist"
										style="border: none; outline: none; scroll-behavior: smooth;"
										onchange="category_list()" required>
										<option value="">CATEGORY</option>
										<c:forEach var="category" items="${ProductList}">

											<option value="${category.productLine}">${category.productLine}</option>

										</c:forEach>

									</select>
								</div>

						</a></li>
						<li><a href="shop">Products</a></li>
						<li><a href="cart">Cart</a></li>
						
						<li><a href="orderDetails">Orders</a></li>
						<!--   <li><a href="#">Others</a></li>
                        <li><a href="#">Contact</a></li> -->
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End mainmenu area -->

	<div class="product-big-title-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="product-bit-title text-center">
						<h2>Orders</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Page title area -->





<%--   <c:forEach var="productnamelist" items="${ProductNameList}">
                <div class="col-md-3 col-sm-6">
                    <div class="single-shop-product">
                       <!--  <div class="product-upper">
                            <img src="img/product-2.jp" alt="">
                        </div> -->
                        <h2><a href="">${productnamelist.productName}</a></h2>
                         <div class="product-carousel-price">
                         	<ins>VENDOR : ${productnamelist.productVendor}</ins><br><br>
                         	<p id="description"> DESCRIPTION : ${productnamelist.productDescription}</p><br><br>
                            <ins>PRICE : ${productnamelist.msrp}</ins> <del>105.70</del>
                        </div>  
                        
                        <div class="product-option-shop">
                            <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="70" rel="nofollow" id="add_to_cart" onclick="add_to_cart('${productnamelist.productCode}')" href="cart">Add to cart</a>
                        </div>                       
                    </div>
                </div>
                </c:forEach>
                </div>
 --%>
 


	<div class="single-product-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="product-content-right">
						<div class="woocommerce">
							<form method="post" action="#">
							   
								<table cellspacing="0" class="shop_table cart">
								
									<thead>
									
										<tr>
											<th class="product-remove">Order No.</th>
											
											<th class="product-name">Product Name</th>
											
											<th class="product-name">Product Line</th>
											<th class="product-quantity">Ordered Date</th>
											<th class="product-quantity">Quantity Ordered</th>
											<th class="product-quantity">Total</th>
											
											
										</tr>
									</thead>
									<tbody>
									<c:forEach var="productnamelist"  items="${result}">
										<tr class="cart_item">
											<td class="product-remove">${productnamelist.get('order_number')}�</td>

											<td ><p>${productnamelist.get('product_name')}</p></td>
											<td ><p>${productnamelist.get('product_line')}</p></td>
											
											<td ><p>${productnamelist.get('order_date')}</p></td>
											
											<td ><span class="amount">${productnamelist.get('quantity_ordered')}</span>
											
											<td ><span class="amount">${productnamelist.get('total')}</span>
											
											
											</td>

											
											
										</tr>
							 	
									
											<!-- <td class="actions" colspan="6">
												<div class="coupon">
													 <label for="coupon_code">Coupon:</label>
													<input type="text" placeholder="Coupon code" value="" id="coupon_code" class="input-text" name="coupon_code">
													 <input type="submit" value="Apply Coupon" name="apply_coupon" class="button">
												</div> 
												
												<input type="submit" value="Update Cart" name="update_cart"
												class="button"> <input type="submit"
												value="Checkout" name="proceed"
												class="checkout-button button alt wc-forward">
											</td> -->
										
									</c:forEach> 
									</tbody>
								</table>
							</form>

							<div class="cart-collaterals">


								<!-- <div class="cross-sells">
                                <h2>You may be interested in...</h2>
                                <ul class="products">
                                    <li class="product">
                                        <a href="single-product.html">
                                            <img width="325" height="325" alt="T_4_front" class="attachment-shop_catalog wp-post-image" src="img/product-2.jpg">
                                            <h3>Ship Your Idea</h3>
                                            <span class="price"><span class="amount">£20.00</span></span>
                                        </a>

                                        <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="22" rel="nofollow" href="single-product.html">Select options</a>
                                    </li>

                                    <li class="product">
                                        <a href="single-product.html">
                                            <img width="325" height="325" alt="T_4_front" class="attachment-shop_catalog wp-post-image" src="img/product-4.jpg">
                                            <h3>Ship Your Idea</h3>
                                            <span class="price"><span class="amount">£20.00</span></span>
                                        </a>

                                        <a class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="22" rel="nofollow" href="single-product.html">Select options</a>
                                    </li>
                                </ul>
                            </div> -->


								<!-- <div class="cart_totals ">
									<h2>Cart Totals</h2>

									<table cellspacing="0">
										<tbody>
											<tr class="cart-subtotal">
												<th>Cart Subtotal</th>
												<td><span class="amount">15.00</span></td>
											</tr>

											<tr class="shipping">
												<th>Shipping and Handling</th>
												<td>Free Shipping</td>
											</tr>

											<tr class="order-total">
												<th>Order Total</th>
												<td><strong><span class="amount">15.00</span></strong>
												</td>
											</tr>
										</tbody>
									</table>
								</div> -->


								<form method="post" action="#" class="shipping_calculator">

									<section id="calcalute-shipping-wrap"
										class="shipping-calculator-form collapse">

										<p>
											<button class="button" value="1" name="calc_shipping"
												type="submit">Update Total</button>
										</p>

									</section>
								</form>


							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="footer-top-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="footer-about-us">
						<h2>Automart</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Perferendis sunt id doloribus vero quam laborum quas alias
							dolores blanditiis iusto consequatur, modi aliquid eveniet
							eligendi iure eaque ipsam iste, pariatur omnis sint! Suscipit,
							debitis, quisquam. Laborum commodi veritatis magni at?</p>
						<div class="footer-social">
							<a href="#" target="_blank"><i class="fa fa-facebook"></i></a> <a
								href="#" target="_blank"><i class="fa fa-twitter"></i></a> <a
								href="#" target="_blank"><i class="fa fa-youtube"></i></a> <a
								href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
						</div>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-menu">
						<h2 class="footer-wid-title">User Navigation</h2>
						<ul>
							<li><a href="#">My account</a></li>
							<li><a href="#">Order history</a></li>
							<li><a href="#">Wishlist</a></li>
							<li><a href="#">Vendor contact</a></li>
							<li><a href="#">Front page</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-menu">
						<h2 class="footer-wid-title">Categories</h2>
						<ul>
							<li><a href="#">Classic Cars</a></li>
							<li><a href="#">Motorcycles</a></li>
							<li><a href="#">Planes</a></li>
							<li><a href="#">Trucks and Buses</a></li>
							<li><a href="#">Ships</a></li>
							<li><a href="#">Trains</a></li>
							<li><a href="#">Vintage Cars</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-newsletter">
						<h2 class="footer-wid-title">Newsletter</h2>
						<p>Sign up to our newsletter and get exclusive deals you wont
							find anywhere else straight to your inbox!</p>
						<div class="newsletter-form">
							<form action="#">
								<input type="email" placeholder="Type your email"> <input
									type="submit" value="Subscribe">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End footer top area -->

	<div class="footer-bottom-area">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<div class="copyright">
						<p>
							&copy; 2015 eCommerce. All Rights Reserved. <a href="#">freshDesignweb.com</a>
						</p>
					</div>
				</div>

				<div class="col-md-4">
					<div class="footer-card-icon">
						<i class="fa fa-cc-discover"></i> <i class="fa fa-cc-mastercard"></i>
						<i class="fa fa-cc-paypal"></i> <i class="fa fa-cc-visa"></i>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End footer bottom area -->

	<!-- Latest jQuery form server -->
	<script src="https://code.jquery.com/jquery.min.js"></script>

	<!-- Bootstrap JS form CDN -->
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

	<!-- jQuery sticky menu -->
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.sticky.js"></script>

	<!-- jQuery easing -->
	<script src="js/jquery.easing.1.3.min.js"></script>

	<!-- Main Script -->
	<script src="js/main.js"></script>
	
	 <script type="text/javascript" >
   
   function category_list(){
 		const list = $("#categorylist").val();
 		console.log(list);
 		
 		
 		$.ajax({
 			
 			type:"POST",
 			url: "/list",
 			data: list,
 	        contentType: "application/json",
 			success: function(data)
 			{
 				console.log(data);
 				
 		            window.location = data;
 			}
 		});
   }
 			
 </script>
  

</body>
</html>