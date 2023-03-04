<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*"%>
    <%@page import="Bean.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View</title>
<link href="css/Admin_view.css" rel="stylesheet"  type="text/css"/>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Merienda+One">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link href="css/ViewStock.css" rel="stylesheet"  type="text/css"/>
</head>
<body>
<nav class="navbar navbar-expand-xl navbar-light bg-light">
	<a href="#" class="navbar-brand"><i class="fa fa-cube"></i>SRG<b>Shop</b></a>
	<a href="Addstock.jsp"style="position:relative;left:1050px;"><button type="button" class="btn btn-outline-danger">Back</button></a>
</nav>

<center>
<h2>stock details </h2>
<div class="table-wrapper">
    <table class="fl-table">
        <thead>
        <tr>
            <th>Product Id</th>
            <th>Product Name</th>
            <th>Added Quantity</th>
            <th>Price</th>
            <th>update</th>
            <th>delete</th>
        </tr>

</thead>
<% ArrayList<Register> ulist1=(ArrayList<Register>)session.getAttribute("ulist1");

for(Register robj1:ulist1)
   {
 %>	  
  <tbody>
        <tr>
       <td> <%=robj1.getId()%> </td>
       <td> <%=robj1.getItem_Name() %> </td>
       <td> <%=robj1.getQuantity() %> </td>
       <td> <%=robj1.getPrice() %> </td>
  
        
        <td>
         <form action="Controller" method="post">
           <input type="hidden" name="pid" value="<%=robj1.getId() %>" >
           <input type="hidden"  name="action" value="update1">  
           <button type="submit"> Update </button>
         </form>
       </td>
       <td>
         <form action="Controller" method="post">
           <input type="hidden" name="pid" value="<%=robj1.getId() %>" >
           <input type="hidden"  name="action" value="delete1">  
           <button type="submit"> Delete </button>
         </form>
        </td>
       
       </tr>
        <tbody> 
     
<% } %>
  </table>
   
</body>
</html>  