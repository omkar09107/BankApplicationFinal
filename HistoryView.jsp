<%@page import="project.model.Neft"%>
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
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	text-decoration: none; /* Remove underline */
}

/* Change the background color of the "Confirm" button on hover */
input[type="submit"]:hover {
	background-color: #45a049;
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
    if (!session.isNew()) {
        rlst = (List<Recharge>) session.getAttribute("rechargeData");
        if (rlst != null) {
            for (Recharge r : rlst) {
    %>
		<h2>Recharge History</h2>
		<tr>
			<td>Mobile Number</td>
			<td><%= r.getMobNo() %></td>
		</tr>
		<tr>
			<td>Service</td>
			<td><%= r.getService() %></td>
		</tr>
		<tr>
			<td>Amount</td>
			<td><%= r.getAmt() %></td>
		</tr>
		<%-- <tr>
                    <td>Date</td>
                    <td><% 
                    	Date date=new Date();
                    	out.print("<h3 algin=\"center\">"+date.toString()+"</h3>");
                    
                    %></td>
                </tr> --%>

		<%
            }
        } else {
    %>
		<tr>
			<td colspan="2">No recharge data available.</td>
		</tr>
		<%
        }
        //session.invalidate();
    } else {
    %>
		<tr>
			<td colspan="2">Session is new or invalid.</td>
		</tr>
		<%
    }
    %>

		<%!List<Neft> nlst;%>
		<table border="2px" class="history-table">
			<% 
    if (!session.isNew()) {
        nlst = (List<Neft>) session.getAttribute("data");
        if (nlst != null) {
            for (Neft r : nlst) {
    %>
			<h2>Transaction History</h2>


			<tr>
				<td>Senders acc no</td>
				<td><%= r.getAccNo() %></td>
			</tr>

			<tr>
				<td>Receivers Name</td>
				<td><%= r.getbName() %></td>
			</tr>
			<tr>
				<td>Transfer amt</td>
				<td><%= r.getTamt() %></td>
			</tr>
			<%-- <tr>
                    <td>Date</td>
                    <td><% 
                    	Date date=new Date();
                    	out.print("<h3 algin=\"center\">"+date.toString()+"</h3>");
                    
                    %></td>
                </tr> --%>

			<%
            }
        } else {
    %>
			<tr>
				<td colspan="2">No money transfer data available.</td>
			</tr>
			<%
        }
        //session.invalidate();
    } else {
    %>
			<tr>
				<td colspan="2">Session is new or invalid.</td>
			</tr>
			<%
    }
    %>
		</table>
		<!-- <form action="DownloadReceiptServlet" method="post" class="confirm-button">
    <input type="submit" value="Download Receipt">
</form> -->
</body>
</html>