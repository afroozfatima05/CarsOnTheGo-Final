<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html lang="en">
<head>
  <title>CarsonTheGo</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <!-- <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
	.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  </style> -->
  
  <style>
 
body {
    background-image: url("resources/images/mirror.jpg");
    background-color: #cccccc;
    background-size:1200px 900px;
} 

 #navbar{
color:white;margin:0px;border-radius:15px;font-size:150%;}


  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
 
 
  </style>
  
</head>
<body>
<nav class="navbar navbar-inverse" margin-bottom:10px>
 
                <div id="navbar">
 
                  <div class="container-fluid">
                   <div class="navbar-header">
                   <a class="navbar-brand" href="/shoeclue">CarsOnTheGo</a>
                    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="/shoeclue">Home</a></li>
      <li><a href="Services">Services</a></li>
       
        
         <li class="current icon"><a href="/shoeclue"><img src="resources/images/logoex.png" alt="" width="150" height="60"></a></li>
   <li><a href="ContactUs">Contact Us</a></li>
   
   
   
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
     <li><a href="customerSignUp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="CustomerCheck"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
  </div>
</nav>  
    </div>
    <div>
    
    </div>


<h1>Login here</h1>
<br>
<br>
<br>
<br>
<br>


    <div align="center" class="form">
   <form name='f' action="<c:url value='j_spring_security_check'/>" method='POST' >
      <table>
         <tr>
           <td style="font-size: 20px">UserName:</td> <td><input type='text' name='j_username' style="width:300px;height: 40px" placeholder="UserName Required" s required="required"/></td><td><br></br></td>
         </tr>
         <tr><td><br></br></td></tr>
         <tr>
           <td style="font-size: 20px">Password:</td> <td><input type='password' name='j_password' style="width: 300px;height: 40px" placeholder="Password Required" required="required"/></td><td><br></br></td>
         </tr>
          <tr><td><br></br></td></tr>
         <tr>
           <br><center> <td><input name="submit" type="submit" value="LOGIN" /></td></center>
             

 

 
         </tr>
      </table>
  </form>
  
 


</body>

</html>

<!-- <div class="container">
  <center><h2 style="color: black;">Shoe Clue's</h2></center>
  <div>
  <ul class="nav nav-pills">
    <li><a href="index" style="color: white">Home</a></li>
  </div>
    <div align="center" class="form">
   <form name='f' action="<c:url value='j_spring_security_check'/>" method='POST' >
      <table>
         <tr>
            <td><input type='text' name='j_username' style="width: 200px" placeholder="UserName Required" required="true"></td>
         </tr>
         <tr>
            <td><input type='password' name='j_password' style="width: 200px" placeholder="Password Required" required="true"/></td>
         </tr>
         <tr>
            <td><input name="submit" type="submit" value="submit" /></td>
         </tr>
      </table>
  </form>
 </div>--> 

 
 
