<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>


<html>
  <head>
    <title>SingIn!</title>
    
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
 
        	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap-theme.min.css">
  </head>
  
  <body>
 
 
<!------ Include the above in your HEAD tag ---------->

<div class="container">
        <div class="row centered-form">
        <div class="col-xs-12 col-sm-8 col-md-4 col-sm-offset-2 col-md-offset-4">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title" align="center">Register Customer </h3>
			 			</div>
			 			<div class="panel-body">
			    		<form action="register" method="post" >
			    		

			    			
			    				<div class="form-group" >
			                			<input type="text" name="customerName" value="${signin.customerName}" placeholder="Name"  class="form-control input-sm" minlength="3" maxlength="20" pattern="[a-zA-Z]+([ ]?[a-zA-Z]+)" title="Name should only contain alphabets with min 3 char and max 20 char . e.g. John Doe" required/>
			    				</div>
			    			
			    		
			    		
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			                			<input type="text" name="contactFirstName" value="${signin.contactFirstName}" placeholder="First Name" class="form-control input-sm" minlength="3" maxlength="10" pattern="[a-zA-Z]+" title="FirstName should only contain alphabets with min 3 char and max 10 char . e.g. John" required>
			    					</div>
			    				</div>	
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text" name="contactLastName" value="${signin.contactLastName}" placeholder="Last Name" class="form-control input-sm" minlength="3" maxlength="20" pattern="[a-zA-Z]+" title="Name should only contain alphabets with min 3 char and max 10 char . e.g. Doe" required>
			    					</div>
			    				</div>
			   
			    			</div>	

			    			<div class="form-group">
			    				<input type="email"name="emailId"  value="${signin.emailId}" placeholder="email-id" class="form-control input-sm" title="Name should only contain alphabets. e.g. John@gamil.com" required>
			    			</div>
			    			
			    			<p style="color:red" align="center"><small>${message}</small></p>

			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="password" name="password" value="${signin.password}" placeholder="password" class="form-control input-sm" pattern=^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,12}$ title="Password is WEAK must contain 1 uppercase, 1 lowercase, 1 special character, 1 number with min 8 char and max 12 char ." required >
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<input type="text" name="phone" value="${signin.phone}" minlength="1" placeholder="Phonenumber" class="form-control input-sm" name="phone" pattern="[789][0-9]{9}" title="Enter a valid mobile number" required >
			    					</div>
			    				</div>
			    			</div>
			    				
			    				
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<label>Country</label>
			    						<select name="country"  class="form-control input-sm" required>
			    							<option value="">Select Option</option>
											<option>USA</option>
											<option>France</option>
											<option>Japan</option>
											<option>Australia</option>
											<option>UK</option>
										</select>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<label>State</label>
			    						<select name="state"  class="form-control input-sm" required>
			    							<option value="">Select Option</option>
											<option >Victoria</option>
											<option >NV</option>
											<option >CA</option>
											<option >Osaka</option>
											<option >Paris</option>
											<option >NH</option>
											<option >Australia</option>
										</select>
			    					</div>
			    				</div>
			    				</div>
			    				
			    				<div class="form-group">
			    					<label>City</label>
			    					<select name="city" class="form-control input-sm" required>
			    						<option value="">Select Option</option>
										<option >Nantes</option>
										<option >Las Vegas</option>
										<option >Melbourne</option>
										<option >Paris</option>
										<option >Tokyo</option>
										<option >Sydney</option>
										<option >London</option>
										<option >San Francisco</option>
										<option >Boston</option>
										<option >NYC</option>
									</select>
			    				</div>
			    				
			    			<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<textarea  name="addressLine1"  placeholder="address line 1" class="form-control input-sm" rows="3" cols="10" required>${signin.addressLine1}</textarea>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<textarea  name="addressLine2"  placeholder="address line 2" class="form-control input-sm" rows="3" cols="10" >${signin.addressLine2}</textarea>
			    					</div>
			    				</div>
			    				</div>
			    				
			    				<div class="form-group">
			    					<input type="text" minlength="1" value="${signin.postalCode}" placeholder="PostalCode" class="form-control input-sm" name="postalCode" pattern="[0-9]{6}" title="Enter a valid 6-digit postal code" required />
			    				</div>
			    				
			    				
			    				<div class="row">
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<label>Job Detail</label>
			    						<select id="jobDetails" class="form-control input-sm" onchange="job_details()" required>
			    							<option value="">----Select Option-----</option>
											 <c:forEach var ="jobList" items="${JobList}">
												<option value="${jobList.jobTitle}">${jobList.jobTitle}</option>
											</c:forEach>
										</select>
			    					</div>
			    				</div>
			    				<div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<label>SalesRep EmpNo.</label>
			    						<select id ="EmployeeNumber" name="salesRepEmployeeNumber" class="form-control input-sm" required >
			    							
											 
										</select>
			    					</div>
			    				</div>
			    				
			    				
			    			</div>
			    			
			    			
			    			<input type="submit" value="Register" class="btn btn-info btn-block">
			    			<br>
			    			<div align="center">Already have an Account? <a href="http://localhost:8080/">logIn</a></div>
			    		</form>
			    	</div>
	    		</div>
    		</div>
    	</div>
    </div>
    
   <script type="text/javascript" >
   
   function job_details(){
 		const job = $("#jobDetails").val();
 		console.log(job);
 		
 		
 		$.ajax({
 			
 			type:"POST",
 			url: "/details",
 			data: job,
 	        contentType: "application/json",
 			success: function(data)
 			{
 				console.log(data);
 				let htmldata="<option value=''>----Select Option----</option>"
 					data.forEach(item=>{
 						console.log(item);
 						htmldata+="<option value='"+item.employeeNumber+"'>"+item.firstName+" "+item.lastName +"</option>"
 					})
 				
 				$("#EmployeeNumber").html(htmldata);
 			}
 		});
 	}
 	/* function demo(){
 		
 		console.log("Run demo");
 	}
    */
 	
 	/*  function emp_name()
 	{
 		var name = $("#EmployeeNumber").val();
 		
		$.ajax({
 			
 			type:"POST",
 			url: "",
 			data:"sales_empName"+name,
 			
 		});
 	}  */
 
 	
 </script>
  


<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> 
    
  </body>
</html>