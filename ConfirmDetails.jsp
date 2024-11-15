<%@page import="project.model.Bill"%>
<%@page import="java.util.*"%>
<%@page import="project.model.Recharge"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
/* Apply general styles to the table */
table {
	width: 70%;
	border-collapse: collapse;
	margin-left: 50px margin-bottom: 20px;
	border: 1px solid #ddd;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

/* Apply styles to table rows */
tr {
	border-bottom: 1px solid #ddd;
}

/* Apply styles to table cells */
td {
	padding: 10px;
	text-align: left;
}

/* Apply styles to the "Confirm" button */
input[type="submit"] {
	background-color: #638ECB;
	color: white;
	padding: 14px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	text-decoration: none; /* Remove underline */
}

/* Change the background color of the "Confirm" button on hover */
input[type="submit"]:hover {
	background-color: #395886;
}

/* Add some space between the table and the button */
.confirm-button {
	margin-top: 20px;
}
</style>
</head>


<body>

	<%@include file="NavView.jsp"%>

	<%!List<Recharge> rlst;%>
	<table border="2px" class="history-table">
		<% 
	if(!session.isNew()){
		
		List<Recharge>rlst=new ArrayList<Recharge>();
		rlst=(List<Recharge>)session.getAttribute("rechargeData");		
		for(Recharge r:rlst){
			%>
		<tr>
			<td>MobileNumber</td>
			<td><%=r.getMobNo() %></td>
		</tr>
		<tr>
			<td>Service</td>
			<td><%=r.getService() %></td>
		</tr>
		<tr>
			<td>Account Number</td>
			<td><%=r.getAccNo() %></td>
		</tr>
		<tr>
			<td>Amount</td>
			<td><%=r.getAmt()%></td>
		</tr>
		<%
		}
	}
		%>

	</table>
	<form action="PaymentController" method="get">
		<input type="Submit" value="Confirm">
	</form>

</body>
</html>