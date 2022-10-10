<%@page import="com.example.HotelMVC.Hotelappmvc.model.Items"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Base64" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Insert title here</title>
<style>
p{text-align: center;}
p{padding-top: 70px;}
p{text-transform: uppercase;}
td{text-align: center;}
a{padding-top: 70px;}
h1{text-align: center;}
</style>
</head>
<body>
<%
Items item =(Items)request.getAttribute("item");
%>
<br> <br>
<h1>Searched Item</h1>
<br> <br>
<table class="table table-bordered">
  <thead class="thead-dark">
    <tr>
      <th scope="col" style="text-align:center;">Number</th>
      <th scope="col" style="text-align:center;">Name</th>
      <th scope="col" style="text-align:center;">Price</th>
      <th scope="col" style="text-align:center;">Quantity</th>
      <th scope="col" style="text-align:center;">Category</th>
      <th scope="col" style="text-align:center;">Image</th>
      <th scope="col" colspan="3" style="text-align:center;">Action</th>
    </tr>
  </thead>
  <tbody>
  <div>
    	<tr>
<td><p>${item.itemName}</p>
<td><p>${item.itemNumber}</p>
<td><p>${item.price}</p>
<td><p>${item.itemquantity}</p>
<td><p>${item.category}</p>
<%if(item.getImagedata()!=null){
    		byte[] imageBytes = item.getImagedata();
String base64Image = Base64.getEncoder().encodeToString(imageBytes);%>
    		<td><img alt="Not Available" src="data:image/jpg;base64,<%=base64Image%>" width="240" height="190"/>
    		<%}else{%>
    		<td><p>Image: Image Not Available</p>
    		<%}%>
    		<td style="padding-top: 80px;"><a href="/delete/<%=item.getItemNumber()%>" > Delete</a></td>
    		<td style="padding-top: 80px;"><a href="/update-<%=item.getItemNumber()%>-up" > Update</a></td>
    		<td style="padding-top: 80px;"><a href="/calculate-<%=item.getItemNumber()%>" > Order</a></td>
 </tr>
    	</div>
  </tbody>
</table>
<img alt="" src="/Hotel-app-mvc/src/main/resources/static/starter.jpg">