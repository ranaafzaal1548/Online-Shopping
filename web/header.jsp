<%@ page import = " java.util.* " %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
    <!--Header-->
    <br>
    <div class="topnav sticky">
           
            <center><h2>Online shopping </h2></center>
           <a href="home.jsp">Home<i class="fa fa-institution"></i></a>
            <a href="myCart.jsp">My Cart<i class='fas fa-cart-arrow-down'></i></a>
            
            <a href="about.jsp">About <i class="fa fa-address-book"></i></a>
            <a href="admin/logout.jsp">Logout <i class='fas fa-share-square'></i></a>
            <div class="search-container">
                <form action="searchHome.jsp" method="post">
                    <input type="text" placeholder="Search" name="search">
                    <button type="submit"><i class="fa fa-search"></button>
                </form>
               
             
             
            </div>
          </div>
           <br>
           <!--table-->
