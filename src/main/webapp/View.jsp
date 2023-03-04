<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="Bean.*"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title> view page </title>
    <style>
      .a
       {
         position:relative;
         left:1300px;
         top:50px;
        }
       body
        {
         background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzixSYafNB04e3ZZ-uWkmjwKa1Mt9LGJdSgA&usqp=CAU");
         background-repeat:no-repeat;
         background-size:cover;
        }
        
</style>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<link href="css/View.css" rel="stylesheet"  type="text/css"/>

</head>
<body>
<div class="a">
         <a href="Cashierdetails.jsp" class="btn btn-outline-danger">
          <span class="glyphicon glyphicon-exit;color=red;">Exit</span> 
        </a>
        </div>
 <div id="wrapper">
  <h1>Registoration </h1>
  
  <table id="keywords" cellspacing="0" cellpadding="0">
    <thead>
      <tr>
        <th><span>Id</span></th>
        <th><span>Name</span></th>
        <th><span>email</span></th>
        <th><span>Phno</span></th>
        <th><span>update</span></th>
        <th><span>delete</span></th>
      </tr>
    </thead>
      <% ArrayList<Register> ulist=(ArrayList<Register>)session.getAttribute("ulist");

for(Register robj:ulist)
   {
	%>	 
	
    <tbody>
    
 
      <tr>
        <td><%=robj.getId() %></td>
        <td class="lalign"><%=robj.getName() %></td>
        <td><%=robj.getPhno() %></td>
        <td><%=robj.getEmailid() %> </td>
    
        <td>
         <form action="Controller" method="post">
           <input type="hidden" name="id" value="<%=robj.getId() %>" >
           <input type="hidden"  name="action" value="update">  
           <button type="submit" class="btn btn-warning"> Update </button>
         </form>
       </td>
        <td>
         <form action="Controller" method="post">
           <input type="hidden" name="id" value="<%=robj.getId() %>" >
           <input type="hidden"  name="action" value="delete">  
           <button type="submit" class="btn btn-warning"> Delete </button>
         </form>
        </td>
        
      </tr>
    
    </tbody>
       <% } %>
  </table>
  
 </div> 
</body>
</html>    
  
<!-- 

 <center>
<table>
<tr>
<th>name</th>
<th>phno</th>                                      
<th>email</th>
<th>update</th>
<th>delete</th>
</tr>


<tr><td></td>
    <td></td>
    <td></td>
    <td><form action="Controller" method="post">
<input type="hidden" name="id" value="">
<input type="hidden" name="action" value="Update">
<button type="submit">Update</button>
    </form></td>
    <td><form action="Controller" method="post">
<input type="hidden" name="id" value="">
<input type="hidden" name="action" value="del">
<button type="submit">Delete</button>
    </form></td>
    </tr>
</table>
</center>  -->
