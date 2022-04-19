<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup page</title>
</head>
<body>
<div align="center">
	<h2>SignIn</h2>
</div>
	<form action="register"  method="post" >
	
	<table align="center">
	
	<tbody>
		<tr>
		<td><label>Customer Name</label></td>
		<td><input type="text" name="customerName" placeholder="Name" minlength="3" maxlength="20" pattern="[a-zA-Z]+([ ]?[a-zA-Z]+)" title="Name should only contain alphabets with min 3 char and max 20 char . e.g. John Doe" required/></td>
		</tr>
		
		<tr>
		<td><label>Last Name</label></td>
		<td><input type="text" name="contactLastName" placeholder="Last Name" minlength="3" maxlength="20" pattern="[a-zA-Z]+" title="Name should only contain alphabets with min 3 char and max 10 char . e.g. Doe" required/></td>
		</tr>
		
		<tr>
		<td><label>First Name</label></td>
		<td><input type="text" name="contactFirstName" placeholder="First Name" minlength="3" maxlength="10" pattern="[a-zA-Z]+" title="FirstName should only contain alphabets with min 3 char and max 10 char . e.g. John" required/></td>
		</tr>
		
		<tr>
		<td><label>Email:</label></td>
		<td><input type="email" name="emailId"  placeholder="email-id" title="Name should only contain alphabets. e.g. John@gamil.com" required /></td>
		</tr>
		
		<tr>
		<td><label>Phone:</label></td>
		<td><input type="text" minlength="1" placeholder="Phonenumber" name="phone" pattern="[789][0-9]{9}" title="Enter a valid mobile number" required />
		</td>
		</tr>
				
		<tr>
		<td><label>Password</label></td>
		<td><input type="password" name="password" placeholder="password" pattern=^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,12}$ title="Password is WEAK must contain 1 uppercase, 1 lowercase, 1 special character, 1 number with min 8 char and max 12 char ." required /></td>
		</tr>
		
		<tr>
		<td><label>Address Line 1</label></td>
		<td><textarea  name="addressLine1" placeholder="address line 1" rows="5" cols="33" required></textarea></td>
		</tr>
		
		<tr>
		<td><label>Address Line 2</label></td>
		<td><textarea  name="addressLine2" placeholder="address line 2" rows="5" cols="33"></textarea></td>
		</tr>
		
		<tr>
			<td><label>Country :</label></td>
			<td><select name="country">
				<option>USA</option>
				<option>France</option>
				<option>Japan</option>
				<option>Australia</option>
				<option>UK</option>
				</select>
			</td>
		</tr>
		<tr>
			<td><label>State:</label></td>
			<td><select name="state">
				<option >Victoria</option>
				<option >NV</option>
				<option >CA</option>
				<option >Osaka</option>
				<option >Paris</option>
				<option >NH</option>
				<option >Australia</option>
				</select>
			</td>
			<tr>
			<td><label>City:</label></td>
			<td><select name="city">
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
			</td>
		</tr>
		
		<tr>
		<td><label>Postal Code:</label></td>
		<td><input type="text" minlength="1" placeholder="PostalCode" name="postalCode" pattern="[0-9]{6}" title="Enter a valid 6-digit postal code" required />
		</td>
		</tr>
		
		<tr>
			<td><label>Job Detail:</label></td>
			<td><select >
				 <c:forEach var ="jobList" items="${JobList}">
				<option value="${jobList.jobTitle}">${jobList.jobTitle}</option>
				</c:forEach>
				</select>
			</td>
		</tr>
		<tr>
			<td><label>Sales Rep Employee Number:</label></td>
			<td><select name="salesRepEmployeeNumber" >
				 <c:forEach var ="empList" items="${EmpList}">
				<option value="${empList.employeeNumber}">${empList.firstName}</option>
				</c:forEach>
				</select>
			</td>
		</tr>
		
		<!-- <tr>
		<td><label>Sales Rep Employee Number</label></td>
		<td><input type="text" name="salesNumber" placeholder="Sales Rep Employee Number" minlength="1"  /></td>
		</tr>
		 -->		
		<tr>
		<td><label></label></td>
		<td><input type="submit" value="signin" /></td>
		</tr>
		
	</tbody>
		
	</table>
	
	
</form>

<p style="color:red" align="center">${message}</p>

</body>
</html>