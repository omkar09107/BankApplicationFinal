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
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.message-container {
	background-color: #fff;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
	text-align: center;
	max-width: 400px;
	width: 100%;
}

.message-container h3 {
	font-size: 28px;
	color: #28a745;
	margin-bottom: 20px;
}

.message-container p {
	font-size: 18px;
	color: #555;
	margin-bottom: 30px;
}

.message-container .checkmark {
	font-size: 50px;
	color: #28a745;
	margin-bottom: 20px;
}
</style>

<body>

	<div class="message-container">
		<div class="checkmark"></div>
		<h3>Recharge Successful!</h3>
		<p>Your recharge has been completed successfully.</p>
	</div>

</body>
</html>