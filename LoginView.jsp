<%@page import="project.model.Login"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<link rel="stylesheet" href="logincss.css">
<!-- Link to the external CSS -->
<!-- 
<style>
  body {
    font-family: Arial, sans-serif;
    margin-top: 50px;
    padding: 0;
  }
  .container {
    width: 80%;
    background-color: white;
    margin-top: 10px;
    margin: 2px auto;
  }
  form {
    max-width: 300px;
    margin: 0 auto;
    padding: 20px;
    border: 1px solid #000;
    border-radius: 5px;
    background-color: #f0f8ff;
    
  }
  h2 {
    text-align: center;
    color: #000;
  }
  input[type="text"],
  input[type="password"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #000;
    border-radius: 4px;
    box-sizing: border-box;
  }
  input[type="submit"] {
    width: 100%;
  background-color: #638ECB;
    color: #fff;
    padding: 10px;
    border: none;
    border-radius: 2px;
    cursor: pointer;
  }
  input[type="submit"]:hover {
  background-color: #395886;
  }
</style> -->
<body>
	<%-- <%@include file="DashboardView.jsp" %>
 --%>
	<center>

		<header>
			<nav>
				<h1>Welcome to the Dashboard</h1>
				<div class="navdiv">
					<div>
						<%-- <%!
          Login lobj=new Login();
        %>
						<%
          if(!session.isNew()){
            String uName = (String)session.getAttribute("uName");
        %>
						<h2 style="font-size: 27px">USER</h2>
						<h1><%= uName %></h1>
						<%
          }
        %> --%>
					</div>

					<div>
						<a href="DashboardView.jsp">HOME</a> <a href="HistoryView.jsp">HISTORY</a>
						<a href="ContactUs.jsp">CONTACT US</a> <a href="LogOut.jsp">LOGOUT</a>


					</div>
				</div>
			</nav>
		</header>

		<div class="container">
			<!-- <div class="side">
				<h2>Hey There!!!!</h2><br>
					<h3>Welcome to web, 
					your trusted partner <br>for quick and easy mobile recharges <br>and money transfers. We are committed to providing <br>
					a seamless and secure experience <br>
					for all your recharge and financial needs.</h3>
			</div> -->
			<div>

				<h2>User Login</h2>
				<!-- Display error message if it exists -->
				<%
				if (request.getAttribute("errorMessage") != null) {
				%>
				<p style="color: red;">
					<%=request.getAttribute("errorMessage")%>
				</p>
				<%
				}
				%>

				<form action="LoginController" method="GET">

					Username<input type="text" name="uName" required><br>
					Password <input type="password" id="loginPassword" name="password"
						required><br> <input type="submit" value="Login">

				</form>

				<h2>New User</h2>
				<form action="UserRegisterView.jsp" method="GET">

					<input type="submit" value="Register">
				</form>

			</div>
		</div>

		</form>
</body>
</html>