<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<!--
	ustora by freshdesignweb.com
	Twitter: https://twitter.com/freshdesignweb
	URL: https://www.freshdesignweb.com/ustora/
-->
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Automart</title>

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
							<li><a href="#"><i class="fa fa-user"></i> My Account</a></li>
							<!--  <li><a href="#"><i class="fa fa-heart"></i> Wishlist</a></li> -->
							<li><a href="signin"><i class="fa fa-user"></i> SignUp</a></li>

							<li><a href="cart"><i class="fa fa-user"></i> My Cart</a></li>
							<li><a href="checkout"><i class="fa fa-user"></i>Checkout</a></li>
							<li><a href="login"><i class="fa fa-user"></i> Login</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-4">
					<div class="header-right">
						<ul class="list-unstyled list-inline">
							<li class="dropdown dropdown-small"><a
								data-toggle="dropdown" data-hover="dropdown"
								class="dropdown-toggle" href="#"><span class="key">currency
										:</span><span class="value">USD </span><b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li><a href="#">USD</a></li>
									<li><a href="#">INR</a></li>
									<li><a href="#">GBP</a></li>
								</ul></li>

							<li class="dropdown dropdown-small"><a
								data-toggle="dropdown" data-hover="dropdown"
								class="dropdown-toggle" href="#"><span class="key">language
										:</span><span class="value">English </span><b class="caret"></b></a>
									<ul class="dropdown-menu">
									<li><a href="#">English</a></li>
									<li><a href="#">French</a></li>
									<li><a href="#">German</a></li>
								</ul>
								</li>
									
						</ul>
					</div>
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
						<a href="cart">Cart - <span class="cart-amunt">$100</span> <i
							class="fa fa-shopping-cart"></i> <span class="product-count">5</span></a>
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
						<li class="active"><a href="/">Home</a></li>
						<li><a href="#">
						
							<select  name="category" id="categorylist" style="border: none; outline: none; scroll-behavior: smooth;" onchange="category_list()" required>
								<option value="">CATEGORY</option>
									<c:forEach var="category" items="${ProductList}">

									<option value="${category.productLine}">${category.productLine}</option>

								</c:forEach>

								</select> 
						
						</a></li>
						<li><a href="shop">Shop page</a></li>
						<li><a href="singleproduct">Single product</a></li>
						<li><a href="cart">Cart</a></li>
						<li><a href="checkout">Checkout</a></li>
						
						<!-- <li><a href="#">Others</a></li>
                        <li><a href="#">Contact</a></li> -->
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End mainmenu area -->

	<div class="slider-area">
		<!-- Slider -->
		<div class="block-slider block-slider4">
			<ul class="" id="bxslider-home4">
				<li><img src="img/bradley-dunn-qijkjkJm63c-unsplash.jpg" alt="Slide">
					<div class="caption-group">
						<h2 class="caption title" style="color:white">
							Classic Car <span class="primary">Ford <strong style="color:white">Mustang'47</strong></span>
						</h2>
						<h4 class="caption subtitle" style="color:white">American Muscle</h4>
						<a class="caption button-radius" href="#"><span class="icon"></span>Shop
							now</a>
					</div></li>
				<li><img src="img/MicrosoftTeams-motorcycle (1).png" alt="Slide">
					<div class="caption-group">
						<h2 class="caption title" style="color:white">
							Motorcycles<span class="primary">50% <strong>off</strong></span>
						</h2>
						<h4 class="caption subtitle" ></h4>
						<a class="caption button-radius" href="#"><span class="icon"></span>Shop
							now</a>
					</div></li>
				<li><img src="img/MicrosoftTeams-image airplane.png" alt="Slide">
					<div class="caption-group" >
						<h2 class="caption title"style="color:white" >
							Planes<span class="primary"> </span>
						</h2>
						<h4 class="caption subtitle"></h4>
						<a class="caption button-radius" href="#"><span class="icon"></span>Shop
							now</a>
					</div></li>
				<li><img src="img/MicrosoftTeams-image truck.png" alt="Slide">
					<div class="caption-group" >
						<h2 class="caption title" style="color:white">
							Trucks and Buses <span class="primary"> <strong></strong></span>
						</h2>
						<h4 class="caption subtitle"></h4>
						<a class="caption button-radius" href="#"><span class="icon"></span>Shop
							now</a>
					</div></li>
			</ul>
		</div>
		<!-- ./Slider -->
	</div>
	<!-- End slider area -->

	<div class="promo-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="single-promo promo1">
						<i class="fa fa-refresh"></i>
						<p>30 Days return</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="single-promo promo2">
						<i class="fa fa-truck"></i>
						<p>Free shipping</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="single-promo promo3">
						<i class="fa fa-lock"></i>
						<p>Secure payments</p>
					</div>
				</div>
				<div class="col-md-3 col-sm-6">
					<div class="single-promo promo4">
						<i class="fa fa-gift"></i>
						<p>New products</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End promo area -->

	<!-- <div class="maincontent-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="latest-product">
						<h2 class="section-title">Latest Products</h2>
						<div class="product-carousel">
							<div class="single-product">
								<div class="product-f-image">
									<img src="img/product-1.jpg" alt="">
									<div class="product-hover">
										<a href="#" class="add-to-cart-link"><i
											class="fa fa-shopping-cart"></i> Add to cart</a> <a
											href="singleproduct" class="view-details-link"><i
											class="fa fa-link"></i> See details</a>
									</div>
								</div>

								<h2>
									<a href="singleproduct">Samsung Galaxy s5- 2015</a>
								</h2>

								<div class="product-carousel-price">
									<ins>$700.00</ins>
									<del>$100.00</del>
								</div>
							</div>
							<div class="single-product">
								<div class="product-f-image">
									<img src="img/product-2.jpg" alt="">
									<div class="product-hover">
										<a href="#" class="add-to-cart-link"><i
											class="fa fa-shopping-cart"></i> Add to cart</a> <a
											href="singleproduct" class="view-details-link"><i
											class="fa fa-link"></i> See details</a>
									</div>
								</div>

								<h2>Nokia Lumia 1320</h2>
								<div class="product-carousel-price">
									<ins>$899.00</ins>
									<del>$999.00</del>
								</div>
							</div>
							<div class="single-product">
								<div class="product-f-image">
									<img src="img/product-3.jpg" alt="">
									<div class="product-hover">
										<a href="#" class="add-to-cart-link"><i
											class="fa fa-shopping-cart"></i> Add to cart</a> <a
											href="singleproduct" class="view-details-link"><i
											class="fa fa-link"></i> See details</a>
									</div>
								</div>

								<h2>LG Leon 2015</h2>

								<div class="product-carousel-price">
									<ins>$400.00</ins>
									<del>$425.00</del>
								</div>
							</div>
							<div class="single-product">
								<div class="product-f-image">
									<img src="img/product-4.jpg" alt="">
									<div class="product-hover">
										<a href="#" class="add-to-cart-link"><i
											class="fa fa-shopping-cart"></i> Add to cart</a> <a
											href="singleproduct" class="view-details-link"><i
											class="fa fa-link"></i> See details</a>
									</div>
								</div>

								<h2>
									<a href="singleproduct">Sony microsoft</a>
								</h2>

								<div class="product-carousel-price">
									<ins>$200.00</ins>
									<del>$225.00</del>
								</div>
							</div>
							<div class="single-product">
								<div class="product-f-image">
									<img src="img/product-5.jpg" alt="">
									<div class="product-hover">
										<a href="#" class="add-to-cart-link"><i
											class="fa fa-shopping-cart"></i> Add to cart</a> <a
											href="singleproduct" class="view-details-link"><i
											class="fa fa-link"></i> See details</a>
									</div>
								</div>

								<h2>iPhone 6</h2>

								<div class="product-carousel-price">
									<ins>$1200.00</ins>
									<del>$1355.00</del>
								</div>
							</div>
							<div class="single-product">
								<div class="product-f-image">
									<img src="img/product-6.jpg" alt="">
									<div class="product-hover">
										<a href="#" class="add-to-cart-link"><i
											class="fa fa-shopping-cart"></i> Add to cart</a> <a
											href="singleproduct" class="view-details-link"><i
											class="fa fa-link"></i> See details</a>
									</div>
								</div>

								<h2>
									<a href="singleproduct">Samsung gallaxy note 4</a>
								</h2>

								<div class="product-carousel-price">
									<ins>$400.00</ins>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	End main content area

	<div class="brands-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="brand-wrapper">
						<div class="brand-list">
							<img src="img/brand1.png" alt=""> <img src="img/brand2.png"
								alt=""> <img src="img/brand3.png" alt=""> <img
								src="img/brand4.png" alt=""> <img src="img/brand5.png"
								alt=""> <img src="img/brand6.png" alt=""> <img
								src="img/brand1.png" alt=""> <img src="img/brand2.png"
								alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	End brands area

	<div class="product-widget-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="single-product-widget">
						<h2 class="product-wid-title">Top Sellers</h2>
						<a href="" class="wid-view-more">View All</a>
						<div class="single-wid-product">
							<a href="singleproduct"><img
								src="img/product-thumb-1.jpg" alt="" class="product-thumb"></a>
							<h2>
								<a href="singleproduct">Sony Smart TV - 2015</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="singleproduct"><img
								src="img/product-thumb-2.jpg" alt="" class="product-thumb"></a>
							<h2>
								<a href="singleproduct">Apple new mac book 2015</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="singleproduct"><img
								src="img/product-thumb-3.jpg" alt="" class="product-thumb"></a>
							<h2>
								<a href="singleproduct">Apple new i phone 6</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="single-product-widget">
						<h2 class="product-wid-title">Recently Viewed</h2>
						<a href="#" class="wid-view-more">View All</a>
						<div class="single-wid-product">
							<a href="singleproduct"><img
								src="img/product-thumb-4.jpg" alt="" class="product-thumb"></a>
							<h2>
								<a href="singleproduct">Sony playstation microsoft</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="singleproduct"><img
								src="img/product-thumb-1.jpg" alt="" class="product-thumb"></a>
							<h2>
								<a href="singleproduct">Sony Smart Air Condtion</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="singleproduct"><img
								src="img/product-thumb-2.jpg" alt="" class="product-thumb"></a>
							<h2>
								<a href="singleproduct">Samsung gallaxy note 4</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="single-product-widget">
						<h2 class="product-wid-title">Top New</h2>
						<a href="#" class="wid-view-more">View All</a>
						<div class="single-wid-product">
							<a href="singleproduct"><img
								src="img/product-thumb-3.jpg" alt="" class="product-thumb"></a>
							<h2>
								<a href="singleproduct">Apple new i phone 6</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="singleproduct"><img
								src="img/product-thumb-4.jpg" alt="" class="product-thumb"></a>
							<h2>
								<a href="singleproduct">Samsung gallaxy note 4</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
						<div class="single-wid-product">
							<a href="singleproduct"><img
								src="img/product-thumb-1.jpg" alt="" class="product-thumb"></a>
							<h2>
								<a href="singleproduct">Sony playstation microsoft</a>
							</h2>
							<div class="product-wid-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i>
							</div>
							<div class="product-wid-price">
								<ins>$400.00</ins>
								<del>$425.00</del>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	End product widget area -->

	<div class="footer-top-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="footer-about-us">
						<h2>
							u<span>Stora</span>
						</h2>
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
							<li><a href="#">Mobile Phone</a></li>
							<li><a href="#">Home accesseries</a></li>
							<li><a href="#">LED TV</a></li>
							<li><a href="#">Computer</a></li>
							<li><a href="#">Gadets</a></li>
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
							&copy; 2015 uCommerce. All Rights Reserved. <a
								href="http://www.freshdesignweb.com" target="_blank">freshDesignweb.com</a>
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

	<!-- Slider -->
	<script type="text/javascript" src="js/bxslider.min.js"></script>
	<script type="text/javascript" src="js/script.slider.js"></script>
</body>
</html>