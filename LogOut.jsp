<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout</title>
</head>
<body>

	<%
    // Invalidate the session to log out the user
    session.invalidate();

    // Forward the request to the login page
    RequestDispatcher rd = request.getRequestDispatcher("LoginView.jsp");
    rd.include(request, response);
%>

	<h2>You have been logged out successfully!</h2>


</body>
</html>