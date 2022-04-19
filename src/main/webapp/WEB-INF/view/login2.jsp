<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
  <head>
    <title>Login Page</title>
    
    <style>
      body{
    background-color: #525252;
}
.centered-form{
	margin-top: 60px;
}

.centered-form .panel{
	background: rgba(255, 255, 255, 0.8);
	box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
}
    </style>
  </head>
  
  <body>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title" align="center">Login </h3>
			 			</div>
			 			<div class="panel-body">
			    		<form action="loggedin" method="post">
			    			

			    			<div class="form-group">
			    				<input type="text" name="login_id" class="form-control input-sm" placeholder="username/loginid"  minlength="3" maxlength="6"  required/>
			    			</div>
			    			
			    			<div class="form-group">
			    				<input type="password" name="password" class="form-control input-sm" placeholder="password" pattern=^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,12}$ title="Password is WEAK must contain 1 uppercase, 1 lowercase, 1 special character, 1 number with min 8 char and max 12 char ." required />
			    			</div>
			    			<p style="color:red" align="center"><small>${passwordResult}</small></p>

			    			
			    			
			    			<input type="submit" value="Login" class="btn btn-info btn-block">
			    			<br>
			    			<div align="center">Create an Account? <a href="http://localhost:8080/signin">SignIn</a></div>
			    		
			    		</form>
			    		<p style="color:green" align="center">${message}</p>
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>
  </body>
</html>

