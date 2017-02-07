<!DOCTYPE html>
<html lang="en">
<head>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
  <title>CarsOnTheGo</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script>document.write('<base href="' + document.location + '" />');</script>
  <style>
  
 #navbar{
color:white;margin:0px;border-radius:15px;font-size:150%;}


  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
   body {
   
    background-color: #cccccc;
    background-size:1400px 900px;
} 
  
  </style>
  </head>
<body>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.2/angular.min.js"></script>
<!-- <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
         </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="#">View Profile</a></li>
        <li><a href="logout">Logout</a></li>
		  <li>&nbsp; &nbsp; &nbsp; &nbsp;</li>
		    
		  
		    <li>&nbsp; &nbsp; &nbsp; &nbsp;</li>
		
		  
      </ul>
    </div>
  </div>
</nav> -->
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
     
     <li><a href="#">View Profile</a></li>
        <li><a href="logout">Logout</a></li>
     
    </ul>
  </div>
  </div>
</nav>  
<div>
<div class="container">
  <div>

    <hr></hr>
    <table class="table table-striped">
    <tr>
    <th>Id</th>
    <th>Product Name</th>
    <th>Product Category</th>
    <th>Brand</th>
     <th>price</th>
    <th>Product Image</th>
    </tr>
        <tr >
             <td>${product.product_id}</td>
            <td>${ product.product_name}</td>
            <td>${product.product_category}</td>
               <td>${product.brand}</td>
               <td>${product.price}</td>
            <td><img src="resources/images/${product.product_id}.jpg" style="width: 200px;height:150px"></td>
            <!-- <div ng-app="addToCartApp">
            <div ng-controller="addToCartCtrl">							
		    <td><a href="#" class="btn btn-primary"
										   ng-click="addItemToCart(${product.product_id})"><span
												class="glyphicon glyphicon-shopping-cart"></span>Add to cart
											</a></td>
										<td><a href="<spring:url value="/user/cart" />"
										   class="btn btn-primary"><span class="glyphicon glyphicon-hand-right"></span>View Cart</a></td>
        </tr>    
    </table>
    </div>
<script src="./resources/js/ordercontroller.js"/></script>
</div>-->

<body ng-app="addToCartApp">
    <div ng-controller="addToCartCtrl">
         <a href="javascript:void(0)" ng-click="addItemToCart(${product.product_id})" class="btn btn-primary">Add To Cart </a> 
        
        <a href="<spring:url value="/user/cart" />"
										   class="btn btn-primary"><span class="glyphicon glyphicon-hand-right"></span>View Cart</a>
										     </div>
    <script>
    var cartApp = angular.module ("addToCartApp", []);

    cartApp.controller("addToCartCtrl", function ($scope, $http){
    	
    	 /*
         * retrieveCart method is used to get all cart items at the starting of the application
         */
        $scope.retrieveCart = function (cartId) {
            $scope.cartId = cartId;
            $scope.refreshCartItems(cartId);
        };
        
        $scope.showAlert = function () {
            alert("This is an example of ng-click");
        }
        
        
        /*
         * removeItemFromCart method is used to remove a item from the cart
         */
        $scope.removeItemFromCart = function (itemId) {
            $http.put('http://localhost:8084/shoeclue/usercart/cart/removeItem/'+itemId).success(function (data) {
                $scope.refreshCartItems();
            });
        };

    	 /*
         * addItemToCart method is used to add items into the cart
         */
        $scope.addItemToCart = function (itemId) {
        	 alert("item added to cart");
            $http.put('http://localhost:8084/shoeclue/usercart/cart/addItem/'+itemId).success(function () {
                alert("Item added to the cart!")
            });
        };
       
       
        /*
         * GrandTotalOfItems method is called on cart page to calculate grand total for the added items
         */
        $scope.GrandTotalOfItems = function () {
            var grandTotal=0;

            for (var i=0; i<$scope.cart.cartItems.length; i++) {
                grandTotal+=$scope.cart.cartItems[i].totalPrice;
           }

            return grandTotal;
        };
        /*
    	 * refreshCartItems method is called by others methods in same controller to refresh the cart
    	 */
        $scope.refreshCartItems = function () {
            $http.get('http://localhost:8084/shoeclue/usercart/cart/refreshCart/'+$scope.cartId).success(function (data) {
               $scope.cart=data;
            });
        };
        
        /*
         * clearCartItems method is used to delete all items from the cart
         */
        $scope.clearCartItems = function () {
        	$http['delete']('http://localhost:8084/shoeclue/usercart/cart/clearCartItems/'+$scope.cartId).success(function (data) {$scope.refreshCartItems()});
        };
    });
</script>
</body>
</html>
