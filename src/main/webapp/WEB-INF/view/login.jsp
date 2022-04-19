<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login page</title>

</head>
<body>
<div align="center">
	<h2>Login</h2>
</div>
<form action="loggedin" method="post" >
	
	<table align="center">
	
	<tbody>
		<tr>
		<td><label>Login Id</label></td>
		<td><input type="text" name="login_id" placeholder="username/loginid"  minlength="3" maxlength="6"  required/></td>
		</tr>
		
		<tr>
		<td><label>Password</label></td>
		<td><input type="password" name="password" placeholder="password" pattern=^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,12}$ title="Password is WEAK must contain 1 uppercase, 1 lowercase, 1 special character, 1 number with min 8 char and max 12 char ." required /></td>
		</tr>
		
		<tr>
		<td><label></label></td>
		<td><input type="submit" value="Login" /></td>
		</tr>
		
	</tbody>
		
	</table>
	
</form>

<p style="color:green" align="center">${message}</p>
<p style="color:red" align="center">${passwordResult}</p>

</body>
</html>