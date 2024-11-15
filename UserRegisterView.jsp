<%@page import="project.model.Login"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="regcss.css">
<!-- Link to the external CSS -->

</head>

<style>

/* Apply general styles to the form */
form {
	width: 300px; /* Adjust width as needed */
	margin: 0 auto; /* Center the form horizontally */
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: #f9f9f9;
}

/* Apply styles to input fields */
input[type="text"] {
	width: 100%;
	padding: 10px;
	margin: 5px 0;
	box-sizing: border-box;
	border: 1px solid #ccc;
	border-radius: 4px;
}

/* Apply styles to the submit button */
input[type="submit"] {
	width: 100%;
	background-color: #638ECB;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

/* Change the background color of the submit button on hover */
input[type="submit"]:hover {
	background-color: #395886;
}
</style>
<body>

	<center>

		<header>
			<nav>
				<h1>Welcome to the Dashboard</h1>
				<div class="navdiv">
					<div></div>

					<div>
						<a href="DashboardView.jsp">HOME</a> <a href="HistoryView.jsp">HISTORY</a>
						<a href="ContactUs.jsp">CONTACT US</a> <a href="LogOut.jsp">LOGOUT</a>


					</div>
				</div>
			</nav>
		</header>

		<form action="RegisterController">

			Mobile Number<input type="text" name="mobNo"></br> User Name<input
				type="text" name="uName"></br> Password<input type="text"
				name="password"></br> Account Number<input type="text"
				name="accNo"></br> Account Bal<input type="text" name="accBal"></br>

			<input type="submit" value="Register">
		</form>
</body>
</html>