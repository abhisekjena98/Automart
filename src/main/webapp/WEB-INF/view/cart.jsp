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
    <title>Cart Page - Automart</title>
    
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
    
 
    <meta http-equiv="refresh" content="300">
  </head>
  <body onLoad="" >
   
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
                    <div class="header-right">
                        <ul class="list-unstyled list-inline">
                            <li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">currency :</span><span class="value">USD </span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">USD</a></li>
                                    <li><a href="#">INR</a></li>
                                    <li><a href="#">GBP</a></li>
                                </ul>
                            </li>

                            <li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">language :</span><span class="value">English </span><b class="caret"></b></a>
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
                        <a href="cart">Cart <i class="fa fa-shopping-cart"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End site branding area -->
    
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
                        <li><a href="shop">Shop page</a></li>
                       <!--  <li><a href="singleproduct">Single product</a></li> -->
                        <li class="active"><a href="cart">Cart</a></li>
                  
                    </ul>
                </div>  
            </div>
        </div>
    </div> <!-- End mainmenu area -->
    
    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Shopping Cart</h2>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End Page title area -->
    
    
    <div class="single-product-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                
                
                <div class="col-md-8">
                    <div class="product-content-right"   >
                        <div class="woocommerce">
                            <form method="post" action="#">
                                <table cellspacing="0" class="shop_table cart">
                                    <thead>
                                        <tr>
                                            <!-- <th class="product-remove">&nbsp;</th>
                                            <th class="product-thumbnail">&nbsp;</th> -->
                                            
                                            <th class="product-name">Product</th>
                                            <th class="product-price">Price</th>
                                            <th class="product-quantity">Quantity</th>
                                            <th class="product-subtotal">Total</th>
                                            <th class="product-subtotal"></th>
                                        </tr>
                                    </thead>
                                    <tbody>
									<c:forEach var="cartList" items="${CartList}">
									
                                        <tr class="cart_item">

                                            <td class="product-name">
                                                <a href="single-product.html">${cartList.get('product_name')}</a> 
                                            </td>

                                            <td class="product-price">
                                                <span class="amount">${cartList.get('MSRP')}</span> 
                                            </td>

                                            <td class="product-quantity">
                                                <div class="quantity buttons_added">
                                      
                                                    <input type="button" class="minus" value="-" onclick="product_quantity('${cartList.get('quantity')}','${cartList.get('product_code')}','decrement')">
                                                    <input type="number" id="${cartList.get('product_code')}" size="4" class="input-text qty text" title="Qty" value=${cartList.get('quantity')}  min="1" readonly >
                                                    <input type="button" class="plus" value="+" onclick="product_quantity('${cartList.get('quantity')}','${cartList.get('product_code')}','increment')">
                                                </div>
                                            </td>

                                            <td class="product-subtotal">
                                                <span class="amount">${cartList.get('total')}</span> 
                                            </td>
                                            <td class="product-subtotal">
                                                <input type="button" value="remove" onclick="deletecart('${cartList.get('product_code')}')"/> 
                                            </td>
                                        </tr>
                                      
                                       </c:forEach>
                                        <tr>
                                            <td class="actions" colspan="6">
                                               
                                                <input type="button" value="Update Cart" name="update_cart" class="button" onclick="updatecart()">
                                                <input type="button" value="Order" name="proceed" class="checkout-button button alt wc-forward"  onclick="placeorder()">
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </form>

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
                        <p>Sign up to our newsletter and get exclusive deals you wont find anywhere else straight to your inbox!</p>
                        <div class="newsletter-form">
                            <form action="#">
                                <input type="email" placeholder="Type your email">
                                <input type="submit" value="Subscribe">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End footer top area -->
    
    <div class="footer-bottom-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="copyright">
                        <p>&copy; 2015 uCommerce. All Rights Reserved. <a href="http://www.freshdesignweb.com" target="_blank">freshDesignweb.com</a></p>
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
    </div> <!-- End footer bottom area -->
    
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
    
   var myMap = new Map();
   function product_quantity(quantity,productvalue,type){
	   
	   let myElement =Number($("#"+productvalue).val());
	   
	   if(type==='increment'){
			$("#"+productvalue).val(Number(myElement) + 1);
			myElement+=1;
		}
		else{
			if(myElement>1){
				
				$("#"+productvalue).val(Number(myElement) - 1);
				myElement-=1;
			}
			
			
		}
	   const quantityresult = quantity;
	   
	   const productresult = productvalue;
	   const list = $("#quantity").val();
 		//console.log(quantity);
 		console.log(productvalue);
 		console.log(myElement);
 		//console.log(list);
 		console.log(type);
 		
 		
 		
 		myMap.set(productvalue, myElement);
 		console.log(myMap);
 		
   }
   
   function updatecart(){
	   
		let obj = Object.fromEntries(myMap); // we can set our JS map in an object like this
	   console.log(myMap);
	   
	   
		console.log(obj); 
	   $.ajax({
			
			type:"POST",
			url: "/update",
			data: JSON.stringify(obj),
	        contentType: "application/json",
			success: function(data)
			{
				console.log(data);
				
		         window.location = data;
			}
		});
   }
   
   function deletecart(productcode){
		
		console.log(productcode);
		
		
		$.ajax({
			
			type:"POST",
			url: "/delete",
			data: productcode,
	        contentType: "application/json",
			success: function(data)
			{
				console.log(data);
				
		            window.location = data;
			}
		});
 }
   function placeorder(){
		
		
		
		
		$.ajax({
			
			type:"POST",
			url: "/placeorder",

		});
 }
  
  
   
   function LoadOnce() 
   { 
   	location.reload(); 
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