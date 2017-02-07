<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>CarsonTheGo</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 <style>
  #navbar{
color:white;margin:0px;border-radius:15px;font-size:150%;}


  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
body {
    background-image: url("resources/images/logout.jpg");
    background-color: #cccccc;
    background-size:1400px 800px;
} 

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout</title>
</head>
<body>
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

<% 
session.invalidate();
%>

<h1 style="text-align: center;">You are now logged out</h1>

</body>

</html>

 <%@include file="/WEB-INF/views/footer.jsp" %>