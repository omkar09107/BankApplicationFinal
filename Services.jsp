<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Services</title>
<link rel="stylesheet" href="styles.css">
<!-- Link to the external CSS -->

</head>
<style>
.main {
	display: flex;
	justify-content: center;
}
</style>
<body>
	<%@include file="DashboardView.jsp"%>

	<div class=main>
		<div class="recharge-section">
			<h2>Recharge Your Account</h2>
			<p>Stay connected and enjoy uninterrupted services by recharging
				your account. Choose from various plans that suit your needs, and
				recharge instantly.</p>
			<a href="RechargeView.jsp"><button>Recharge Now</button></a>
		</div>
		<div class="money-transfer-section">
			<h2>Money Transfer</h2>
			<p>Transfer funds quickly and securely. Our money transfer
				service is fast, reliable, and available 24/7. Send money to
				friends, family, or pay your bills in just a few clicks.</p>
			<a href="Neft.jsp">
				<button>Transfer Now</button>
			</a>
		</div>
	</div>

</body>
</html>