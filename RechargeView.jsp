<%@page import="project.model.Bill"%>
<%@page import="project.model.Login"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recharge Form</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 20px;
	margin-top: 110px;
	padding: 0;
	background-color: #f9f9f9; /* light gray background */
}

.container {
	max-width: 600px;
	margin: 50px auto;
	margin-top: 20px;
	padding: 20px;
	background-color: #f0f8ff;
	/*   
  background-color: #B1C9EF;
 */
	border: 1px solid #ddd;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

form {
	display: flex;
	flex-direction: column;
	align-items: center;
	padding: 20px;
	width: 350px; /* Adjust width as needed */
	margin: 0 auto; /* Center the form horizontally */
	/*  margin-top: 50px; */
}

label {
	margin-bottom: 10px;
	font-weight: bold;
	color: #333;
}

input[type="text"], input[type="number"], select {
	width: 100%;
	height: 40px;
	margin-bottom: 20px;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

input[type="submit"] {
	width: 100%;
	height: 40px;
	background-color: #638ECB;
	color: #fff;
	padding: 10px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #395886;
}

.error {
	color: #red;
	font-size: 12px;
	margin-bottom: 10px;
}
</style>
</head>
<body>
	<%@include file="NavView.jsp"%>

	<div class="container">
		<form action="RechargeController">
			<h2>Recharge Form</h2>
			<label for="mobNo">Mobile Number:</label> <input type="text"
				id="mobNo" name="mobNo" required> <label for="service">Select
				Service Provider:</label> <select id="service" name="service" required>
				<option value="Airtel 1.5GB+Unlimited Calls+28 days validity">Airtel
					1.5GB+Unlimited Calls+28 days validity</option>
				<option value="Jio 2.5GB+Unlimited Calls+1000 free txt msg">Jio
					2.5GB+Unlimited Calls+1000 free txt msg</option>
				<option value="Idea 1.5GB+Unlimited Calls+1000 free txt msg">Idea
					1.5GB+Unlimited Calls+1000 free txt msg</option>
			</select> <label for="accNo">Acc No:</label> <input type="number" id="accNo"
				name="accNo" required> <label for="amt">Amount:</label> <input
				type="number" id="amt" name="amt" required> <input
				type="submit" value="Recharge">
		</form>
	</div>

</body>
</html>