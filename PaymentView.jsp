<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<%@include file="NavView.jsp"%>
<style>
/* Apply general styles to the form */
form {
	width: 300px; /* Adjust width as needed */
	margin: 0 auto; /* Center the form horizontally */
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 5px;
	background-color: #B1C9EF;
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
	<form action="PaymentController">

		Enter the amt<input type="text" name="amt"> Enter the mob no<input
			type="text" name="mobNo"> <input type="submit"
			value="Proceed">
	</form>

</body>
</html>