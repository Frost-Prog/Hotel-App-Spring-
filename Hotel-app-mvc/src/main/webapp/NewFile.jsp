<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.List" %>
    <%@page import="com.example.HotelMVC.Hotelappmvc.model.Items"%>
<!DOCTYPE html>
<html>
<head>

<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" type="text/css" href="maincss.css" />
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<meta charset="ISO-8859-1">
<title>Food Menu</title>
<style>
dish-title{color: #ff4500;}
a{color: #ff4500;}
a{textAlign:right;}
h1{font-size: 45px;}
h5{font-size: 30px;}
h5{padding-left: 200px;}
h5{padding-bottom: 30px;}
p{font-size: 24px;}
p{color: #696969;}
p{text-transform: uppercase;}
p{padding-left: 200px;}
div{align:center;}
</style>
</head>
<body>



    <!-- menu -->
    <div  class="content">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-center
                ">
                    <div class="page-section">
                        <h1 class="page-title">Food Menu</h1>
                    </div>
                </div>
            </div>
         <br> <br>
            <div class="row">
                <!-- starter -->
                <div>
                    <div class="menu-block">
                        <hr>
                        <hr>
                        <div class="menu-content">
                     
                            <div class="row">
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                    <img src="/static/starter.jpg" >
                                </div>
                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                    <div class="dish-content">
                                        <h5 class="dish-title"><a href="/Starter">STARTER</a></h5>
                                        <span class="dish-meta">
                                        <%List<Items> AllItems = (List<Items>) request.getAttribute("item_c"); 
                                        for(int i=0; i<AllItems.size(); i++) { %>
    	<div>
    	<tr>
    		<td><p class="card"><%= AllItems.get(i).getItemName() %> </p></td></tr>
    	</div>
    <%}%></span>
                                        <div class="dish-price">
                                        
                                    </div>
                                    </div>
                                 </div>
                            </div>
                           
                        </div>
                        <hr>
                        <div class="menu-content">
                        <hr>
                            <div class="row">
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                    <img src="/static/beverages.jpg" >
                                </div>
                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                    <div class="dish-content">
                                        <h5 class="dish-title"><a href="/Beverages">BEVERAGES</a></h5>
                                        <span class="dish-meta"><%List<Items> AllItems2 = (List<Items>) request.getAttribute("item_c2"); 
                                        for(int i=0; i<AllItems2.size(); i++) { %>
    	<div>
    	<tr>
    		<td><p class="card"><%= AllItems2.get(i).getItemName() %> </p></td></tr>
    	</div>
    <%}%></span></span>
                                        <div class="dish-price">
                                        
                                    </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <hr>
                        </div>
                        <div class="menu-content">
                        <hr>
                            <div class="row">
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                    <img src="/static/soup.jpg" >
                                </div>
                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                    <div class="dish-content">
                                        <h5 class="dish-title"><a href="/Soup">SOUP</a> </h5>
                                        <span class="dish-meta">
                                        <%List<Items> AllItems3 = (List<Items>) request.getAttribute("item_c3"); 
                                        for(int i=0; i<AllItems3.size(); i++) { %>
    	<div>
    	<tr>
    		<td><p class="card"><%= AllItems3.get(i).getItemName() %> </p></td></tr>
    	</div>
    <%}%></span></span>
                                        <div class="dish-price">
                                        
                                    </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>
 
                </div>
                <!-- /.starter -->
                <!-- Soup -->
                <div>
                    <div class="menu-block">
                    <hr>
                        <h3 class="menu-title"></h3>
                        <div class="menu-content">
                            <div class="row">
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                    <img src="/static/kaju.jpg" >
                                </div>
                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                    <div class="dish-content">
                                        <h5 class="dish-title"><a href="/Kaju">KAJU</a></h5>
                                        <span class="dish-meta"><%List<Items> AllItems4 = (List<Items>) request.getAttribute("item_c4"); 
                                        for(int i=0; i<AllItems4.size(); i++) { %>
    	<div>
    	<tr>
    		<td><p class="card"><%= AllItems4.get(i).getItemName() %> </p></td></tr>
    	</div>
    <%}%></span>
                                        <div class="dish-price">
                                        
                                    </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <hr>
                        </div>
                        <div class="menu-content">
                        <hr>
                            <div class="row">
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                    <img src="/static/paneer.jpg" >
                                </div>
                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                    <div class="dish-content">
                                        <h5 class="dish-title"><a href="/Paneer">PANEER</a></h5>
                                        <span class="dish-meta"><%List<Items> AllItems5 = (List<Items>) request.getAttribute("item_c5"); 
                                        for(int i=0; i<AllItems5.size(); i++) { %>
    	<div>
    	<tr>
    		<td><p class="card"><%= AllItems5.get(i).getItemName() %> </p></td></tr>
    	</div>
    <%}%></span>
                                         <div class="dish-price">
                                        
                                    </div>
                                    </div>
                                   
                                </div>
                            </div>
                            <hr>
                        </div>
                        <div class="menu-content">
                        <hr>
                            <div class="row">
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                    <img src="/static/kofta1.jpg" style="max-height: 300px; max-width: 300px;" >
                                </div>
                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                    <div class="dish-content">
                                        <h5 class="dish-title"><a href="/Kofta">KOFTA</a> </h5>
                                        <span class="dish-meta"> 
                                        <%List<Items> AllItems6 = (List<Items>) request.getAttribute("item_c6"); 
                                        for(int i=0; i<AllItems6.size(); i++) { %>
    	<div>
    	<tr>
    		<td><p class="card"><%= AllItems6.get(i).getItemName() %> </p></td></tr>
    	</div>
    <%}%></span>
                                        <div class="dish-price">
                                        
                                    </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>
                </div>
                <!-- /.soup -->
                <!-- main course -->
                <div>
                    <div class="menu-block">
                    <hr>
                        <h3 class="menu-title"></h3>
                        <div class="menu-content">
                            <div class="row">
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                    <img src="/static/roti.jpg" style="max-height: 300px; max-width: 300px;"   >
                                </div>
                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                    <div class="dish-content">
                                        <h5 class="dish-title"><a href="/Roti">ROTI</a></h5>
                                        <span class="dish-meta"><%List<Items> AllItems7 = (List<Items>) request.getAttribute("item_c7"); 
                                        for(int i=0; i<AllItems7.size(); i++) { %>
    	<div>
    	<tr>
    		<td><p class="card"><%= AllItems7.get(i).getItemName() %> </p></td></tr>
    	</div>
    <%}%></span>
                                        <div class="dish-price">
                                        
                                    </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <hr>
                        </div>
                        <div class="menu-content">
                        <hr>
                            <div class="row">
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                    <img src="/static/rice.jpg" >
                                </div>
                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                    <div class="dish-content">
                                        <h5 class="dish-title"><a href="/Rice">RICE</a></h5>
                                        <span class="dish-meta">
                                        <%List<Items> AllItems8 = (List<Items>) request.getAttribute("item_c8"); 
                                        for(int i=0; i<AllItems8.size(); i++) { %>
    	<div>
    	<tr>
    		<td><p class="card"><%= AllItems8.get(i).getItemName() %> </p></td></tr>
    	</div>
    <%}%>
</span>
<div class="dish-price">
                                       
                                    </div>
                                    </div>
                                    
                                </div>
                            </div>
                            <hr>
                        </div>
                        <div class="menu-content">
                        <hr>
                            <div class="row">
                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                    <img src="/static/icecream.jpg" >
                                </div>
                                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                    <div class="dish-content">
                                        <h5 class="dish-title"><a href="/IceCream">ICE-CREAM</a> </h5>
                                        <span class="dish-meta"> <%List<Items> AllItems9 = (List<Items>) request.getAttribute("item_c9"); 
                                        for(int i=0; i<AllItems9.size(); i++) { %>
    	<div>
    	<tr>
    		<td><p class="card"><%= AllItems9.get(i).getItemName() %> </p></td></tr>
    	</div>
    <%}%> </span>
                                        <div class="dish-price">
                                        
                                    </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr>
                </div>
                <!-- /.main Course -->
                <hr>
                 <div class="row">
                 <hr>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mt30">
                    <hr>
               <a style="font-size: 20px" href="/find-all">Edit The Menu</a>
              </div></div>
            </div>
           </div>
           <hr>
    </div>
    <!-- /.menu -->
</body>
</html>