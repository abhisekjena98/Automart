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
    <title>Product Page- Automart</title>
    
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
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
    <style type="text/css">
    #description{
    
    width: 200px;  height: 80px; overflow: hidden;}
    </style>
   <style type="text/css">
		#description{
		white-space: nowrap;
  		overflow: hidden;
  		text-overflow: inherit;
  		}
	</style>

  </head>
  <body>
   
    <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="user-menu">
                        <ul>

                            <li><a href="signin"><i class="fa fa-user"></i>SignUp</a></li>
                            <li><a href="cart"><i class="fa fa-user"></i> My Cart</a></li>
                            <li><a href="login"><i class="fa fa-user"></i> Login</a></li>
                            <li><a href="logout"><i class="fa fa-power-off"></i>Logout</a></li>
                        </ul>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="header-right">
                       
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End header area -->
    
    <div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="logo">
                        <h1><a href="./"><img src="img/autimart.png"></a></h1>
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
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div> 
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="/">Home</a></li>
                       <li><a href="#">
                        
						<select  name="category" id="categorylist" style="border: none; outline: none; scroll-behavior: smooth;" onchange="category_list()" required>
								<option value="">CATEGORY</option>
								<c:forEach var="category" items="${ProductList}">

								<option value="${category.productLine}">${category.productLine}</option>

								</c:forEach>

							</select> 
						
                       
                        </a></li>

                        <li class="active"><a href="shop">Products</a></li>
                        <li><a href="cart">Cart</a></li>
                       
                        <li><a href="orderDetails">Orders</a></li>
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
                        <h2>Products</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
            
            <c:forEach var="productnamelist" items="${ProductNameList}">
                <div class="col-md-3 col-sm-6">
                    <div class="single-shop-product">
                       
                        <h2><a href="">${productnamelist.productName}</a></h2>
                         <div class="product-carousel-price">
                         	<ins>VENDOR : ${productnamelist.productVendor}</ins><br><br>
                         	<p id="description"> DESCRIPTION : ${productnamelist.productDescription}</p><br><br>
                            <ins>PRICE : ${productnamelist.msrp}</ins> <del>105.70</del>
                        </div>  
                        
                        <div class="product-option-shop">
                            <a id="add_to_cart" class="add_to_cart_button"  onclick="add_cart('${productnamelist.productCode}')" href="" >Add to cart</a>
                        </div>                       
                    </div>
                </div>
                </c:forEach>
                </div>

                </div>
                </div>
               
    <div class="footer-top-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="footer-about-us">
                        <h2><span>Automart</span></h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis sunt id doloribus vero quam laborum quas alias dolores blanditiis iusto consequatur, modi aliquid eveniet eligendi iure eaque ipsam iste, pariatur omnis sint! Suscipit, debitis, quisquam. Laborum commodi veritatis magni at?</p>
                        <div class="footer-social">
                            <a href="#" target="_blank"><i class="fa fa-facebook"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-youtube"></i></a>
                            <a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2 class="footer-wid-title">User Navigation </h2>
                        <ul>
                            <li><a href="">My account</a></li>
                            <li><a href="">Order history</a></li>
                            <li><a href="">Wishlist</a></li>
                            <li><a href="">Vendor contact</a></li>
                            <li><a href="">Front page</a></li>
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
                        <p>Sign up to our newsletter and get exclusive deals you wont find anywhere else straight to your inbox!</p>
                        <div class="newsletter-form">
                            <input type="email" placeholder="Type your email">
                            <input type="submit" value="Subscribe">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="copyright">
                        <p>&copy; 2015 uCommerce. All Rights Reserved. <a href="#">freshDesignweb.com</a></p>
                    </div>
                </div>
                
                <div class="col-md-4">
                    <div class="footer-card-icon">
                        <i class="fa fa-cc-discover"></i>
                        <i class="fa fa-cc-mastercard"></i>
                        <i class="fa fa-cc-paypal"></i>
                        <i class="fa fa-cc-visa"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
   <script type="text/javascript" >
   
   function add_cart(product_code){
	   
	   console.log(product_code);
 		
 		
 		$.ajax({
 			
 			type:"POST",
 			url: "/addtocart",
 			data: product_code,
 	        contentType: "application/json",
 			success: function(data)
 			{
 				console.log(data);
 				
 		          if(data==false){
 		        	  alert("Please login !!");
 		        	  window.location="login";
 		          }
 			}
 		});
   }
 	
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
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    
    <!-- jQuery sticky menu -->
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    
    <!-- jQuery easing -->
    <script src="js/jquery.easing.1.3.min.js"></script>
    
    <!-- Main Script -->
    <script src="js/main.js"></script>
  </body>
</html>