<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="../css/style.css"></link>
<script type="text/javascript" src="../js/jquery-3.7.0.min.js"> </script>
<script type="text/javascript" src="../js/jquery.validate.min"> </script>
</head>
<body>
	<div align="center">
	<h1>Login Basic Auth</h1>
	
	<form id="formLogin" action="j_security_check" method="post">
		<table>
		<tr>
		<td>User Name:</td>
		<td> <input name="j_username" id="userId" /> </td> 
		</tr>
		<tr>
		<td> Password: </td>
		<td>
		<input
			type="password" name="j_password" id="password" /><br /> 
		</td>	
		</tr>
		
		<tr align="center">
		<td></td>
		
		</tr>
		<tr align="center">
		<td><input type="submit"
			value="submit" /></td>
		
		</tr>
	</table>
	</form>
	</div>
	
	<script type="text/javascript">
	$(document).ready(function() {
		$("#formLogin").validate({
			rules: {
				userId : {
					required: true,
					userId: true
					
				},
				password : "required"
			},
			
			messages: {
				userId : {
					required: "Please enter UserId",
					userId: "Please enter an valid userId"
				}
				
				password: "Please enter password",
			}
		})
		
	})
	</script>
</body>
</html>