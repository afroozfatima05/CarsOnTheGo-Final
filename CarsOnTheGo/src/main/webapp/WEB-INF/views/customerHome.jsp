<!DOCTYPE html>
<html lang="en">
<head>
  <title>CarsOnTheGo</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  <script>document.write('<base href="' + document.location + '" />');</script>
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="./resources/css/style.css" rel="stylesheet" media="screen">
    <script data-require="angular.js@1.0.x" src="http://code.angularjs.org/1.0.7/angular.min.js" data-semver="1.0.7"></script>
  <style>
  body {
   
    background-color: #cccccc;
    background-size:1400px 900px;
} 
    /* Remove the navbar's default margin-bottom and rounded borders */ 
     
 #navbar{
color:white;margin:0px;border-radius:15px;font-size:150%;}


  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
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
  </style>
  <script type="text/javascript">
$(document).ready(function(){
     $("#myCarousel").carousel({
         interval : 1000,
         pause: false
     });
});
</script>
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
 <center><h3>Featured Cars</h3></center>
<hr></hr>
</div>
<div class="container">
  <div ng-app="myApp" ng-controller="dataCtrl">
Enter Brand:  <input type="text"  ng-model="search">&nbsp&nbsp<span class="glyphicon glyphicon-search"></span>
    <hr></hr>
    <table>
  <tr>
<div class="row">
    <td><div class="col-md-4 col-lg-4 col-sm-6" class="img-thumbnail" ng-repeat="resource in names | filter:search">
    <a href="productViewDetails?id={{resource.product_id}}" class="thumbnail">
        	<p>$ {{resource.price}} - {{resource.product_name}}        </p>
        <img src="resources/images/{{resource.product_id}}.jpg" alt="Pulpit Rock" style="width:450px;height:250px" border="5">
        <p> {{resource.description}}</p>
      </a>
    </div></td>
</table>
</div>

    
  </div>
  </div>

<div class="well"><center>&copy; 2016 CarsOnTheGo.com. All rights reserved</center>
	
 </div>
<script>
angular.module('myApp',[]).controller('dataCtrl',function($scope)
		{
	
		$scope.names=${products};
		$scope.orderByMe=function(x)
		{
			$scope.myOrderBy=x;
			}
		});
</script>

</body>


</html>
