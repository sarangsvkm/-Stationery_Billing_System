<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>
<%@page import="Bean.*"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Update</title>
<style>
body
        {
         background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzixSYafNB04e3ZZ-uWkmjwKa1Mt9LGJdSgA&usqp=CAU");
         background-repeat:no-repeat;
         background-size:cover;
        }
        body
{
 margin-top: 50px;
       margin-left: 300px;
 
}
.a
       {
         position:relative;
         left:1300px;
         top:20px;
        }
</style>
</head>

<body>
<div class="a">
         <a href="Viewstock.jsp" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-exit;color=red;">Exit</span> 
        </a>
        </div>

<% ArrayList<Register> ulist1=(ArrayList<Register>)session.getAttribute("ulist1");
   
   for(Register robj1:ulist1)
   {
 %>	   <form action="Controller" method="post">
           <input type="text" name="itemname" value="<%=robj1.getItem_Name() %>" >
           <input type="text" name="qty" value="<%=robj1.getQuantity()%>">
           <input type="hidden" name="pid" value="<%=robj1.getId() %>" >
           <input type="text" name="price" value="<%=robj1.getPrice() %>" >
           <input type="hidden"  name="action" value="Up1">  
           <input type="submit">
       </form>
       
<%  } %>
       
</body>
</html>