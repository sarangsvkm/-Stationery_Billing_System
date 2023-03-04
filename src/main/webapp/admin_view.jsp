<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*"%>
<%@page import="Bean.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin View</title>
<link href="css/Admin_view.css" rel="stylesheet"  type="text/css"/>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Merienda+One">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style type="text/css">
body{
  background-color: #8f4df8;
}

.seven h1 {
text-align: center;
    font-size:30px; font-weight:300; color:	#FFFFFF; letter-spacing:1px;
    text-transform: uppercase;

    display: grid;
    grid-template-columns: 1fr max-content 1fr;
    grid-template-rows: 27px 0;
    grid-gap: 20px;
    align-items: center;
}

.seven h1:after,.seven h1:before {
    content: " ";
    display: block;
    border-bottom: 1px solid #c50000;
    border-top: 1px solid #c50000;
    height: 5px;
  background-color:#f8f8f8;
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-xl navbar-light bg-light">
	<a href="#" class="navbar-brand"><i class="fa fa-cube"></i>SRG<b>Shop</b></a>
	<a href="Welcome_page.jsp"style="position:relative;left:1050px;"><button type="button" class="btn btn-outline-danger">Logout</button></a>
</nav>

<%
	ArrayList<Register> casher = (ArrayList<Register>) session.getAttribute("userlist");
	for (Register robj : casher) {
	%>
<br>
    <div class="seven">
  <h1><b>Welcome  to <%=robj.getName()%></b></h1>
</div>
	
<div class="row">
  <div class="col-sm-4">
    <div class="card" style="width: 20em; height:25em">
    <img class="card-img-top i3" src="img/5846.jpg" alt="Card image cap" width="350" height="150">
      <div class="card-body">
         <h5 class="card-title">Register</h5>
        <a href="Cashierdetails.jsp" class="btn btn-outline-primary">Register Now</a>
      </div>
    </div>
  </div>
  <div class="col-sm-4">
    <div class="card" style="width: 20rem; height:25em">
    <img class="card-img-top i3" src="img/10897.jpg " alt="Card image cap" width="300" height="150">
      <div class="card-body">
         <h5 class="card-title">Stock</h5>
        <a href="Addstock.jsp" class="btn btn-outline-primary">Add STOCK</a>
      </div>
    </div>
  </div>
  <div class="col-sm-4">
    <div class="card" style="width: 20rem;height:25em">
    <img class="card-img-top i3" src="img/3456.jpg" alt="Card image cap" width="400" height="300">
      <div class="card-body">
         <h5 class="card-title">Bill</h5>
        <form action="Controller" method="post">
		<input type="hidden" name="action" value="adminBillinfo"> <input type="hidden" name="username" value="<%=robj.getName()%>">
		<button type="submit" class="btn btn-outline-primary">View</button>
		</form>
      </div>
    </div>
  </div>
<%
	}
	%>
</body>
</html>