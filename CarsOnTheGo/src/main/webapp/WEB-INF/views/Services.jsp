<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
  <title>CarsOnTheGo</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body {
   
    background-color: #cccccc;
    background-size:1400px 900px;
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
<body>
<div class="row">
  <div class="col-md-5">
  
 <!--    <div class="clearfix" style="margin-bottom:30px;"></div> -->


  <div id="myCarousel" class="carousel slide" data-ride="carousel">
  

  <!-- Indicators -->
    

<ol class="carousel-indicators">
    
  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    
  <li data-target="#myCarousel" data-slide-to="1"></li>
    
  <li data-target="#myCarousel" data-slide-to="2"></li>
   
   <li data-target="#myCarousel" data-slide-to="3"></li>
   <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

   

 <!-- Wrapper for slides -->
    
<div class="carousel-inner" role="listbox">

   
   <div class="item active">
        
<img src="resources/images/sale.jpg"  style="width: 800px; height: 500px">
        
<div class="carousel-caption">
         
        </div>
      </div>
     
    
      

  


    <div class="item">
      
  <img src="resources/images/roadside.jpg"  style="width: 800px; height: 500px">
    
    <div class="carousel-caption">
         
        </div>
      </div>
    
  <div class="item">
       
 <img src="resources/images/sign.jpg"  style="width: 800px; height: 500px">
      
  <div class="carousel-caption">
         
        </div>
      </div>
   
   <div class="item">
     
   <img src="resources/images/usedcars.jpg"  style="width: 800px; height: 500px">

        <div class="carousel-caption">
         
        </div>
      </div>
     
 <div class="item">
    
    <img src="resources/images/exchange.jpg" style="width: 800px; height: 500px">
     
   <div class="carousel-caption">
         
        </div>
      </div>
  
   </div>

   


 <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
  
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>

      <span class="sr-only">Previous</span>
    </a>
  
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
   
   <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
     
 <span class="sr-only">Next</span>
    </a>
  </div>
    </div>


   <div class="col-md-2">
     <center><h1>Services</h1></center>
     <br>
     <br>
        <br>
 
           

      <center><button type=button class="btn btn-primary">Buy New Cars</button></center>
      <br>
      <center> <button type=button class="btn btn-primary">Exchange Old Cars</button></center>
      <br>
      <center><button type=button class="btn btn-primary">Roadside Assistance</button></center>
      <br>
      <center><button type=button class="btn btn-primary">Customer Care</button></center>
      <br>
     <center><button type=button class="btn btn-primary">Connect With Us</button></center>
     <br>
</div>


<div class="col-md-5">
<a href="#" class="thumbnail">
<img src="resources/images/pairservice.jpg" style="width: 700px; height: 500px">
</a>
</div>
</div>

</body>
</html>