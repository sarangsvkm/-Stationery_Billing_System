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
.b
{
 color:aliceblue;
}
.c
{

color:blue;
font-family:fantasy;
position:relative;
left:500px;
}
body
{
background-image:url(https://img.freepik.com/free-photo/abstract-textured-backgound_1258-30436.jpg?auto=format&h=200);
  background-repeat:no-repeat;
         background-size:cover;
  }
</style>
  <title>Registration</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="a">
         <a href="admin_view.jsp" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-exit;color=red;">Exit</span> 
        </a>
      
</div>
<div class="container">
  <h1><span style="color:aqua;font-family:fantasy;position:relative;left:400px;">Registration Form</span></h1>
 
 

  <p></p>
  <div class="b">
  <form class="form-horizontal" action="Controller"  method="post">
  
    <div class="form-group">
      <br><br><label class="control-label col-sm-2" for="Name">Name:</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="id" name="name">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="Email">Email id:</label>
      <div class="col-sm-8">          
        <input type="email" class="form-control" id="email"  name="email">
      </div>
      </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="Phno">Phone no:</label>
      <div class="col-sm-8">          
        <input type="text" class="form-control" id="name"  name="phno">
      </div>
    </div>
  
     <div class="form-group">
      <label class="control-label col-sm-2" for="password">Password:</label>
      <div class="col-sm-8">          
        <input type="password" class="form-control" id="psw"  name="psw">
      </div>
    </div>
    </div>
    <div class="c">
    
    <button type="submit" name="action" value="register" 
    class="btn btn-secondary btn-lg">Register</button>
    </div>
    <div class="container"><br>
     
    <div class="btn-group btn-group-justified">
  
  <div class="row"> 
    <center>
      <button type="submit" name="action" value="view" class="col-sm" class="btn btn-success"
      style="height:40px ;color: white;border:0px;">
      <span class="btn btn-outline-success" style="width: 300px;" >
      <b><i class="fa fa-user" aria-hidden="true"></i>&nbsp;View</b> </button>
      
    
    
      <button type="submit" name="action" value="view" class="col-sm" 
      style=" height:40px ;color: white;border:0px;">
      <span class="btn btn-outline-warning" style="width: 300px;" >
      <b>&nbsp;<i class="fa fa-refresh fa-spin"></i>&nbsp;Update</b> </button>
     
   
    
      <button type="submit" name="action" value="view" class="col-sm"  
      style="height:40px ;color: white;border:0px;">
      <span class="btn btn-outline-danger" style="width: 300px;" >
      <b><i class="fa fa-trash" aria-hidden="true"></i>&nbsp;Delete</b></button>
    </center>
  </div>
</div>
      
  </div>
</div>
  </form>
</div>

</body>
</html>
