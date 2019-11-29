<%-- 
    Document   : forgetpassword
    Created on : Nov 22, 2019, 4:02:22 PM
    Author     : abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>forgetpassword</title>
          
    <link rel="stylesheet" type="text/css" href="joinus.css">
    <link rel="stylesheet" type="text/css" href="slider.css">

    <style type="text/css">
        .main-container{
            display: flex;
            flex-direction: row;
        }

        .main-container .sidebar-left{
            flex: 1;
        }

        .main-container .sidebar-right{
            flex: 5;
            display: flex;
            justify-content: center;
            align-items: center;
           
          
        }
    </style>

    </head>
    <body><div class="main-container">
        
        <!--    Left Sidebar for Coolapsing navbar      -->
        <div class="sidebar-left">
            <nav class="menu">
    <header>Menu <span>x</span></header>
    <ol>
        <li class="menu-item"><a href="home.html">Home</a></li>
        
        <li class="menu-item">
            <a href="joinus.html ">Join us</a>
            <ol class="sub-menu">
                <li class="menu-item"><a href="joinus.html">Login</a></li>
                <li class="menu-item"><a href="joinus.html">Sign-up</a></li>
                
            </ol>
        </li>

        <li class="menu-item">
            <a href="#0">Booking</a>
            <ol class="sub-menu">
                <li class="menu-item"><a href="hotel.jsp">Hotel</a></li>
                <li class="menu-item"><a href="package.jsp">Package</a></li>
                
            </ol>
        </li>

        <li class="menu-item">
            <a href="#0">Cancel</a>
            <ol class="sub-menu">
                <li class="menu-item"><a href="cancelpackage.html">Hotel</a></li>
                <li class="menu-item"><a href="cancelpackage.html">Package</a></li>
                
            </ol>
        </li>
        <li class="menu-item"><a href="aboutus.html">About us</a></li>
        <li class="menu-item"><a href="contactus.html">Contact us</a></li>
        <li class="menu-item"><a href="gallery.html">Gallery</a></li>
    </ol>
    <footer><button aria-label="Toggle Menu">Toggle</button></footer>
</nav> 
        </div>
        
        <div class="sidebar-right">
			<div class="container" id="container">
		<div class="container">
  <div style="text-align:center">
    <h2> FORGET PASSWORD</h2>
    </div>
  <div class="row">
    <div class="column" align="center">
      <img src="avtar2.jpg" style="width:50%" style="hight:50%">
    </div>
    <div class="column">
     
         <form action="forgot.jsp" align="center">
            Enter email    <input type="email" name="email"><br>
            <br><input type="submit" value="Send OTP">
        </form>
                                        
       
    </div>
  </div>
</div>
    </div>
        </div>
            
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="collapsenav.js"></script>
    <script type="text/javascript" src="slider.js"></script>

</body>
</html>


        
    </body>
</html>
