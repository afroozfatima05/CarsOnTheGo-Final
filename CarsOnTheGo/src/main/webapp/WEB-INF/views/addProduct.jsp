<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html lang="en">
<head>
  <title>CarsOnTheGo</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
  body {
   
    background-color: #778899;
    background-size:1400px 900px;
}
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
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-home"></span></a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
       
        <li><a href="viewProducts">View All Cars</a></li>
        <li><a href="logout">Logout</a></li>
		  <li>&nbsp; &nbsp; &nbsp; &nbsp;</li>
		   
		    <li>&nbsp; &nbsp; &nbsp; &nbsp;</li>
      </ul>
    </div>
  </div>
</nav>
<div>
<div>

</div>
<div>
<center><img src="resources/images/pm.png" style="width: 1000px; height: 200px"></center>
</div>
<div>

</div>
<div>
${message}
</div>
 <div style="background-color: #778899;">
<form:form action="storeProduct" commandName="shoes" method="post" enctype="multipart/form-data">
<center><table>
<tr><td><hr></hr></td></tr>
<tr>
<td style="font-size: 20px">Product Name:</td>

<td><form:input path="product_name" placeholder="Product Name"  style="width:300px;height:40px"/></td>
      <td><form:errors path="product_name"> </form:errors></td>

</tr>
<tr><td><br></br></td></tr>
<tr>
<td style="font-size: 20px">Product Category:</td>
<td><form:select path="product_category" style="width:300px;height:40px">
<form:option value="SUV"></form:option>
<form:option value="Sedan"></form:option>
<form:option value=""></form:option>
<form:option value=""></form:option>
</form:select></td>
</tr>
<tr><td><br></br></td></tr>
<tr>
<td style="font-size: 20px">Type of Product:</td>
<td><form:select path="typeOfProduct"  style="width:300px;height:40px">
<form:option value="Petrol"></form:option>
<form:option value="Diesel"></form:option>
</form:select></td>
</tr>
<tr><td><br></br></td></tr>
<tr>
<td style="font-size: 20px">Brand:</td>
<td><form:select path="brand" style="width:300px;height:40px">
<form:option value="Honda">Honda</form:option>
<form:option value="Hyundai">Hyundai</form:option>
<form:option value="Nissan">Nissan</form:option>
<form:option value="Ford">Ford</form:option>
<form:option value="MaruthiSuzuki">MaruthiSuzuki</form:option>
<form:option value="Tata">Renault</form:option>
</form:select></td>
</tr>
<tr><td><br></br></td></tr>
<tr>
<td style="font-size: 20px">Product price:</td><td><form:input path="price" placeholder="Product Price"  required="true" style="width:300px;height:40px"/></td>
</tr>
<tr><td><br></br></td></tr>
<tr>
<td style="font-size: 20px">Product Description:</td><td><form:textarea path="description" cols="10" rows="10" placeholder="Description"   style="width:300px;height:40px"/></td>
<td><form:errors path="description"></form:errors></td> 
</tr>
<tr><td><br></br></td></tr>
<tr>
<td style="font-size: 20px">Product Image:</td><td><input type="file" name="file"/></td>
</tr>
<tr><td><br></br></td></tr>
<tr>
<td style="font-size: 50px"><td><input type="submit" value="Add New Product"/></td>
</tr>
</table>
</form:form>
</div>


<div class="well"><center>&copy; 2016 CarsOnTheGo.com. All rights reserved</center>
</body>
</html>
