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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<h1>Menu</h1>
<form action="/search-item" method="post">
<p>Item to search <input type="text" name="item-name"></p>
</form>
<form action="/search-number" method="post">
<p>Item to search Using Number<input type="number" name="item-number"></p>
</form>
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
    <%List<Items> AllItems = (List<Items>) request.getAttribute("item_c"); %>
    <%for(int i=0; i<AllItems.size(); i++) { %>
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
    		<td><a href="/delete/<%=AllItems.get(i).getItemNumber()%>" > Delete</a></td>
    		<td><a href="/update-<%=AllItems.get(i).getItemNumber()%>-up" > Update</a></td>
    		<td><a href="/calculate-<%=AllItems.get(i).getItemNumber()%>" > Order</a></td>
    		
    	</tr>
    	</div>
    <%}%>
  </tbody>
</table>

<a href="/add-item" > Add Item</a>
</body>
</html>