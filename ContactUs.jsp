<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- Contact Us page -->
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>

<style>
body {
	height: 50%;
	margin-top: 90px;
}

.contact-form {
	width: 350px; /
	max-width: 500px; */
	margin: 0 auto; /* Center the form horizontally */
	margin-top: 20px;
	padding: 10px;
	background-color: #f0f8ff;
	border: 1px solid #ddd;
	border-radius: 15px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.contact-form label {
	display: block;
	margin-bottom: 10px;
}

.contact-form input, .contact-form textarea {
	width: 100%; /* Make input fields full-width */
	padding: 10px;
	margin-bottom: 20px;
	border: 1px solid #ccc;
	border-radius: 10px;
}

.contact-form input[type="submit"] {
	background-color: #638ECB;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.contact-form input[type="submit"]:hover {
	background-color: #395886;
}

/* Add some responsiveness to the form */
@media ( max-width : 768px) {
	.contact-form {
		width: 90%; /* Make the form wider on smaller screens */
	}
}
</style>
</head>
<body>
	<%@include file="NavView.jsp"%>

	<center>
		<h1>Contact Us</h1>
		<center>

			<div class="contact-form">
				<form action="ContactUsView.jsp">

					<label for="name">Name:</label> <input type="text" id="name"
						name="name" required> <label for="email">Email:</label> <input
						type="email" id="email" name="email" required> <label
						for="message">Message:</label>
					<textarea id="message" name="message" required></textarea>

					<input type="submit" value="Send Message">
				</form>
			</div>
</body>
</html>