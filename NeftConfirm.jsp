<%@page import="java.util.ArrayList"%>
<%@page import="project.model.Neft"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="confirmcss.css">
<!-- Link to the external CSS -->

</head>
<body>
	<%@include file="NavView.jsp"%>
	<h2>Confirm Details</h2>
	<%!List<Neft> nlst;  %>
	<table border="2px">
		<%

	if(!session.isNew()){
		List<Neft> nlst=new ArrayList<Neft>();
		nlst=(List<Neft>)session.getAttribute("data");

		for(Neft n:nlst){
			%>
		<tr>
			<td>Account No</td>
			<td><%=n.getAccNo() %></td>
		</tr>
		<tr>
			<td>Name</td>
			<td><%=n.getbName() %></td>
		</tr>

		<tr>
			<td>Transfer Amt</td>
			<td><%=n.getTamt() %></td>
		</tr>


		<%
		}
	}
	//session.invalidate();
	%>
	</table>
	<form action="NeftModifyController" method="get">

		<input type="Submit" value="Confirm">
	</form>
	<!-- 	<a href="NeftDone.jsp"><input type="Submit" value="Confirm"></a> 	
 -->

</body>
</html>