<!DOCTYPE html>
<html lang="en">
<head>
<style>
.a
{
position:relative;
left:1300px;
top:50px;
}
body
{
background-image:url(https://media.istockphoto.com/id/1339787499/photo/empty-dark-blue-studio-room-with-light-and-shadow-abstract-background-copy-space-studio-room.jpg?b=1&s=170667a&w=0&k=20&c=sEYFpHbrxOugC-NlO4vh1AQurJAsR-RnLbg_KHgj3kM=); 
  background-repeat:no-repeat;
         background-size:cover;
  }
  .b
{
 color:chartreuse;
}
.c
{
position:relative;
left:900px;
top:50px;

}
</style>
  <title>Stock</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="css/Admin_view.css" rel="stylesheet"  type="text/css"/>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Merienda+One">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-xl navbar-light bg-light">
	<a href="#" class="navbar-brand"><i class="fa fa-cube"></i>SRG<b>Shop</b></a>
	<a href="admin_view.jsp"style="position:relative;left:1050px;"><button type="button" class="btn btn-outline-danger">EXIT</button></a>
</nav>
<div class="container">
  <h1><span style="color:chartreuse;font-family:fantasy;position:relative;left:450px;">New Stock</span></h1><br>
 
 
 
  
  <div class="b">
  <form class="form-horizontal" action="Controller" method="post">
    <div class="form-group">
      <label class="control-label col-sm-2" for="itemname">Product Name:</label>
      <div class="col-sm-8">          
        <input type="text" class="form-control" id="itemname"  name="itemname">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="qty">Quantity :</label>
      <div class="col-sm-8">          
        <input type="text" class="form-control" id="qty"  name="qty">
      </div>
    </div>
     
     <div class="form-group">
      <label class="control-label col-sm-2" for="price">price:</label>
      <div class="col-sm-8">          
        <input type="text" class="form-control" id="price"  name="price">
      </div>
    </div>
     
    </div>
    <div class="c">
    <form action="Controller" method="post">
        
           
           <button type="submit" name="action" value="stock" class="btn btn-primary">Save</button>
         </form></div>
  
    <form action="Controller" method="post">
         
           
           <button type="submit" name="action" value="view1" class="btn btn-primary"><span class="glyphicon glyphicon-eye-open">
           <b>View</b></span></button>
         </form>

  </form>
</div>

</body>
</html>