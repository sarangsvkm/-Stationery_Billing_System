<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="Bean.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cashier_View</title>
<link href="css/Cashier_viewcss.css" rel="stylesheet" type="text/css" />
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
</head>
<style>

body, html, nav {
	margin: 0;
	height: 100%;
	display: grid;
	background-color: #fff;
	font-family: "Henny Penny", cursive;
	color: #274dff;
}
body{
  background-color: #DEB887;
}
h3, p {
	margin: auto;
	letter-spacing: 0.0015em;
	font-size: 5em;
	text-shadow: 0 1px #8da1ff, -1px 0 #c0cbff, -1px 2px #8da1ff, -2px 1px
		#c0cbff, -2px 3px #8da1ff, -3px 2px #c0cbff, -3px 4px #8da1ff, -4px
		3px #c0cbff, -4px 5px #8da1ff, -5px 4px #c0cbff, -5px 6px #8da1ff,
		-6px 5px #c0cbff, -6px 7px #8da1ff, -7px 6px #c0cbff, -7px 8px #8da1ff,
		-8px 7px #c0cbff;
	text-align: center;
}
</style>
<body>
	<nav class="navbar navbar-expand-xl ">
		<a href="#" class="navbar-brand"><i class="fa fa-cube"></i>SRG<b>Shop</b></a>
		<a href="Welcome_page.jsp" style="position: relative; left: 1050px;"><button
				type="button" class="btn btn-outline-danger">LOGOUT</button></a>
	</nav>
	<%
	ArrayList<Register> casher = (ArrayList<Register>) session.getAttribute("userlist");
	for (Register robj : casher) {
	%>

	<p>
		Welcome
		<%=robj.getName()%></p>

	<div class="row">
		<div class="col-sm-4">
			<div class="card" style="width: 20em;">
				<img class="card-img-top i3" src="img/bill.png" alt="Card image cap"
					width="350" height="150">
				<div class="card-body">
					<form action="Controller" method="post">
						<input type="hidden" name="action" value="billview"> <input
							type="hidden" name="username" value="<%=robj.getName()%>">
						<button type="submit" class="btn btn-outline-primary">Create Bill</button>
					</form>
				</div>
			</div>
		</div>
		<div class="col-sm-4">
			<div class="card" style="width: 20rem;">
				<img class="card-img-top i3" src="img/19882.jpg" alt="Card image cap"
					width="350" height="150">
				<div class="card-body">
					<form action="Controller" method="post">
						<input type="hidden" name="action" value="productview"> <input
							type="hidden" name="username" value="<%=robj.getName()%>">
						<button type="submit" class="btn btn-outline-primary">PRODUCT INFO</button>
					</form>
				</div>
			</div>
		</div>
	<div class="col-sm-4">
    <div class="card" style="width: 20rem;">
    <img class="card-img-top i3" src="img/Billser.jpg" alt="Card image cap" width="350" height="150">
      <div class="card-body">
        <form action="Controller" method="post">
		<input type="hidden" name="action" value="Billinfo"> <input type="hidden" name="username" value="<%=robj.getName()%>">
		<button type="submit" class="btn btn-outline-primary">Bill Search</button>
		</form>
      </div>
    </div>
  </div>
		<%
	}
	%>
	</div>
	

</body>
</html>