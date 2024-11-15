<%@page import="java.util.ArrayList"%>
<%@page import="project.model.Neft"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Neft</title>
<link rel="stylesheet" href="Neftcss.css">
<!-- Link to the external CSS -->

<!-- <style type="text/css">
.main {
	display: flex;
	justify-content: space-between;
	padding: 2rem;
}

.sub {
	width: 17rem;
	text-align: center;
	border-radius: 17px;
	padding: 1rem;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	transition: transform 0.2s;
}

.sub:hover {
	transform: scale(1.05);
}

.sub img {
	width: 100%;
	border-radius: 17px;
}

.div1 {
	font-size: small;
	width: 100rem;
}
</style>
 -->
</head>

<body>
	<%@include file="NavView.jsp"%>

	<form action="NeftController">
		<center>

			Account No <input type="text" name="accNo"><br> B Name <input
				type="text" name="bName"><br> B Account No <input
				type="text" name="bAccNo"><br> Transfer Amt <input
				type="text" name="tamt"><br> <input type="submit"
				value="Continue"><br>
		</center>
	</form>







</body>
</html>
