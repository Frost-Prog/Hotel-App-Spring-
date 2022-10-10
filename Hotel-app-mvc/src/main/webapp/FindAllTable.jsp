<%@page import="com.example.HotelMVC.Hotelappmvc.model.Items"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Base64" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
p{text-align: center;}
p{padding-top: 70px;}
p{text-transform: uppercase;}
td{text-align: center;}
a{padding-top: 70px;}
h1{text-align: center;}
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<h1>Edit Menu</h1>
<a style="font-size: 25px" href="/mainpage">Home</a>
<br> <br>
<form action="/search-item" method="post">
<p1>Item to search <input type="text" name="item-name"></p1>
</form>
<br>
<form action="/search-number" method="post">
<p1>Item to search Using Number<input type="number" name="item-number"></p1>
</form>
<br>
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
    <%List<Items> AllItems = (List<Items>) request.getAttribute("items"); %>
    <%for(int i=0; i<AllItems.size(); i++) {
    %>
    	<div>
    	<tr>
    		<td><p ><%= AllItems.get(i).getItemNumber() %> </p></td>
    		<td><p ><%= AllItems.get(i).getItemName() %> </p></td>
    		<td><p ><%= AllItems.get(i).getPrice() %> </p></td>
    		<td><p ><%= AllItems.get(i).getItemquantity() %> </p></td>
    		<td><p><%= AllItems.get(i).getCategory() %> </p></td>
    		<%if(AllItems.get(i).getImagedata()!=null){
    		byte[] imageBytes = AllItems.get(i).getImagedata();
String base64Image = Base64.getEncoder().encodeToString(imageBytes);%>
    		<td><img alt="Not Available" src="data:image/jpg;base64,<%=base64Image%>" width="240" height="190"/>
    		<%}else{%>
    		<td><p class=>Image Not Available</p>
    		<%}%>
    		<td style="padding-top: 80px;"><a href="/delete/<%=AllItems.get(i).getItemNumber()%>" > Delete</a></td>
    		<td style="padding-top: 80px;"><a href="/update-<%=AllItems.get(i).getItemNumber()%>-up" > Update</a></td>
    		<td style="padding-top: 80px;"><a href="/calculate-<%=AllItems.get(i).getItemNumber()%>" > Order</a></td>
    		
    	</tr>
    	</div>
    <%}%>
  </tbody>
</table>

<a  style="font-size:35px;" href="/add-item" > Add Item</a>

</body>
</html>