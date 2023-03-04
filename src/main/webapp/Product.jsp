<!DOCTYPE html>
<%@page import="java.util.*"%>
<%@page import="Bean.*"%>
<html lang="en">
<head>
<style>
.a {
	position: relative;
	left: 1300px;
	top: 50px;
}
</style>
<title>Stock</title>
<meta charset="utf-8">
<link href="css/Admin_view.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Merienda+One">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="css/ProStock.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<nav class="navbar navbar-expand-xl navbar-light bg-light">
		<a href="#" class="navbar-brand"><i class="fa fa-cube"></i>SRG<b>Shop</b></a>
		<a href="Cashier_view.jsp" style="position: relative; left: 1050px;"><button
				type="button" class="btn btn-outline-danger">EXIT</button></a>
	</nav>
	<%
	ArrayList<Register> clist = (ArrayList<Register>) session.getAttribute("clist");
	for (Register crobj : clist) {
	%>
	<h2>
		Hello -
		<%=crobj.getName()%></h2>
	<%
	}
	%>
	<div class="container">
		<h1>
			<span
				style="color: crimson; font-family: fantasy; position: relative; left: 400px;">Product
				Information</span>
		</h1>
	</div>
	<div class="table-wrapper">
		<table class="fl-table">
			<thead>
				<tr>
					<th>Product Name</th>
					<th>Available Quantity</th>
					<th>Price</th>
				</tr>
			</thead>
			<%
			ArrayList<Register> plist = (ArrayList<Register>) session.getAttribute("plist");
			for (Register robj1 : plist) {
			%>
			<tbody>
				<tr>
					<td><%=robj1.getItem_Name()%></td>
					<td><%=robj1.getQuantity()%></td>
					<td><%=robj1.getPrice()%></td>
				</tr>
			<tbody>
				<%
				}
				%>
			
		</table>
	</div>
</body>
</html>
