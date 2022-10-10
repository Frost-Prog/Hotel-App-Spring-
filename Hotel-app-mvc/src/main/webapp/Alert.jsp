<%@page import="com.example.HotelMVC.Hotelappmvc.model.Items"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" http-equiv="Refresh" content="5;url=/find-all">
<title>Insert title here</title>
</head>
<body>
<%Items item = (Items) request.getAttribute("item_c");
float newNumber=item.getItemquantity();
if(newNumber<=4){%>
<p> Order placed Successfully</p>
<p> Alert: Item is below the Minimum Required quantity</p>
<%}
else{
%><p> Order placed Successfully</p>
<%}%> 
</body>
</html>