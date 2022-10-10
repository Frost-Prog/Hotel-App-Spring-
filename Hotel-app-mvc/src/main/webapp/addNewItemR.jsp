
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<style>
p{text-align: center;}

p{text-transform: uppercase;}

a{padding-top: 70px;}
h1{text-align: center;}
</style>
</head>
<body>

<h1>Add a new Item </h1>

<script>
 function check(input) {
   if (input.value == 0) {
     input.setCustomValidity('The number must not be zero.');
   } else {
     // input is fine -- reset the error message
     input.setCustomValidity('');
   }
 }
</script>

<form id="form" action="add-item" method="post" enctype="multipart/form-data">
<table class="table table-bordered">
  <thead class="thead-dark">
    <tr>
      <th scope="col" style="text-align:center;">Attributes</th>
      <th scope="col" style="text-align:center;">Values</th>
    </tr>
  </thead>
    	<tr>
    	
<td>
<p>Number
 <td style="text-align: center;"><input type="number" name="itemNumber" placeholder="Add Item Number" required="required" oninput="check(this)"> </p>
<tr>
<td><p>Name 
<td style="text-align: center;"><input type="text" name="itemName" placeholder="Add Item Name" required="required" minlength="4" maxlength="15"></p>
<tr>
<td><p>Price
<td style="text-align: center;"> <input type="number" name="price" placeholder="Add Item price" required="required" oninput="check(this)"></p>
<tr>
<td><p>Quantity
<td style="text-align: center;"> <input type="number" name="Itemquantity" placeholder="Add Item Quantity" required="required" oninput="check(this)"></p>
<tr>
<td style="text-align: center;"><p> Catergory
<td style="text-align: center;">
<label for="category"> Category</label>
<select name="category" id="category">
<option value="Starter">Starter</option>
<option value="Beverages">Beverages</option>
<option value="Soup">Soup</option>
<option value="Kaju">Kaju</option>
<option value="Paneer">Paneer</option>
<option value="Kofta">Kofta</option>
<option value="Roti">Roti</option>
<option value="Rice">Rice</option>
<option value="IceCream">Ice-Cream</option>
</select>
</tr>
<tr>
<td colspan="2"><p>Select Image: <input type="file" name="file" id="imageUpload" accept="image/*">
<tr>
<td style="text-align: center;" colspan="2">
<button type="submit">Add</button>
</table>
</form>
</body>
</html>