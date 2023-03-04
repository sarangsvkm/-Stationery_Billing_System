<!DOCTYPE html>
<html lang="en">
<%@page import="java.util.*"%>
<%@page import="Bean.*"%>
<head>
<title>Bill Info</title>

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
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<meta charset="utf-8">
<link href="css/Billinfo.css" rel="stylesheet" type="text/css" />
</head>
<body>

	<nav class="navbar navbar-expand-xl navbar-light bg-light">
		<a href="#" class="navbar-brand"><i class="fa fa-cube"></i>SRG<b>Shop</b></a>
		<a href="admin_view.jsp" style="position: relative; left: 1050px;"><button
				type="button" class="btn btn-outline-danger">EXIT</button></a>
	</nav>


	<br>
	<br>
	<%
	ArrayList<Register> clist = (ArrayList<Register>) session.getAttribute("userlist");
	for (Register crobj : clist) {
	%>
	<h2 style="color: #FFFFFF; text-align: center; font-family: fantasy;">
		Hello -
		<%=crobj.getName()%></h2>
	<%
	}
	%>
	<br>
	<div class="container">
		<h1>
			<span
				style="color: #FFFFFF; font-family: fantasy; position: relative; left: 420px;">Bill
				Information</span>
		</h1>
	</div>

	<form action="Controller" class="search-bar" method="post">
		<div class="main-search-input-wrap">
			<div class="main-search-input fl-wrap">
				<div class="main-search-input-item">
					<input type="hidden" value="billsearch" name="action"> <input
						type="text" name="billno" placeholder="Search Product bills...">
				</div>
				<button class="main-search-button">Search</button>
			</div>
		</div>
	</form>

</body>
</html>
