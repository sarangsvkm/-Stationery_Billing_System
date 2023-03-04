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
</head>

<body>

<% ArrayList<Register> ulist=(ArrayList<Register>)session.getAttribute("ulist");
   
   for(Register robj:ulist)
   {
 %>	   <form action="Controller" method="post">
           <input type="text" name="name" value="<%=robj.getName() %>" >
           <input type="number" name="phno" value="<%=robj.getPhno() %>" >
           <input type="text" name="email" value="<%=robj.getEmailid() %>">
           <input type="hidden" name="id" value="<%=robj.getId() %>" >
           <input type="hidden"  name="action" value="up">  
           <input type="submit">
       </form>
       
<%  } %>
       
</body>
</html>