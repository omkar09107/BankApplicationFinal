<!DOCTYPE html>
<%@page import="project.model.Login"%>
<%@page import="java.util.List"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>
<style>

/* Global Styles */
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

body {
	font-family: Arial, sans-serif;
	background-color: #f9f9f9;
	height: 100vh;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	background-image: url('Image/bgimg.jpg');
	/* replace with your image name */
	background-size: cover; /* optional */
}

/* Header Styles */
header {
	background-color: #8AAEE0;
	color: #88AAEE0;
	padding: 20px 0;
	text-align: center;
	width: 100%;
	position: fixed;
	top: 0;
	left: 0;
	z-index: 1;
}

header h1 {
	margin: 0;
	font-size: 24px;
	font-weight: bold;
	background-color: #8AAEE0
}

header img {
	position: absolute;
	top: 10px;
	left: 10px;
	height: 70px;
	width: auto;
	border-radius: 50%;
}

/* Nav Styles */
nav {
	background-color: #8AAEE0;
	padding: 10px 0;
	text-align: center;
	width: 100%;
	position: fixed;
	top: 0px;
	left: 0;
	z-index: 1;
}

nav a {
	display: inline-block;
	padding: 10px 20px;
	color: #333;
	text-decoration: none;
	transition: background-color 0.3s ease;
	border-radius: 5px;
}

nav a:hover {
	background-color: #ddd;
}

.sidebar {
	background-color: #8AAEE0;
	padding: 10px;
	width: 200px;
	position: fixed;
	top: 140px;
	left: 10px;
	box-sizing: border-box;
	border-radius: 10px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
	height: 70vh; /* set the height to 100% of the viewport height */
	display: flex;
	flex-direction: column;
	overflow-y: auto;
}

.service-view {
	display: flex;
	justify-content: space-between;
	text-decoration: none;
}

.sidebar a {
	display: block;
	padding: 10px;
	color: #333;
	text-decoration: none;
	transition: background-color 0.3s ease;
	border-radius: 5px;
	flex: 1;
}

.sidebar a:hover {
	background-color: #ddd;
}

/* Responsive Styles */
@media ( max-width : 768px) {
	.sidebar {
		width: 150px;
	}
}

@media ( max-width : 480px) {
	.sidebar {
		width: 100px;
	}
}

.navdiv {
	display: flex;
	justify-content: space-between;
}
*
/
</style>
</head>
<body>

	<header>

		<nav>
			<h1>Welcome to the Dashboard</h1>
			<div class="navdiv">
				<div>


					<%!
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
        %>
				</div>

				<div>



					<a href="DashboardView.jsp">HOME</a> <a href="HistoryView.jsp">HISTORY</a>
					<a href="ContactUs.jsp">CONTACT US</a> <a href="LogOut.jsp">LOGOUT</a>


				</div>
			</div>
		</nav>
	</header>

	<!-- <section id="services">
	<div class="service-view">
		<a href="RechargeView.jsp">RECHARGE</a>
        <a href="Neft.jsp">FUND TRANSFER</a>
	</div>
</section> -->

	<!-- 
	<div class="sidebar">
		<a href="RechargeView.jsp">RECHARGE</a>
		 <a href="Neft.jsp">FUND TRANSFER</a> 
		 <a href="HistoryView.jsp">HISTORY</a> 
		 <a href="LogOut.jsp">LOGOUT</a>
		
	</div> -->



</body>
</html>