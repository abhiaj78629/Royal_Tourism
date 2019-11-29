<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page import="java.sql.*"%>
<html>
<head>
	<title>hotel</title>



	<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">


	<link rel="stylesheet" type="text/css" href="home.css">
	
	<link rel="stylesheet" type="text/css" href="hotellayout.css">	
	<style type="text/css">
		.main-container{
			display: flex;
			flex-direction: row;
			background-image: url('7.jpeg');
			background-size: cover;
		}

		.main-container .sidebar-left{
			flex: 1;
		}

		.main-container .sidebar-right{
			flex: 5;
			
		}


		
body {
  font-family: Arial, Helvetica, sans-serif;
}

.flip-card {
  background-color: t
  ransparent;
  width: 300px;
  height: 300px;
  perspective: 1000px;
}

.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.6s;
  transform-style: preserve-3d;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
}

.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  backface-visibility: hidden;
}

.flip-card-front {
  background-color: #bbb;
  color: black;
}

.flip-card-back {
  background-color: #ca3e47;
  color: white;
  transform: rotateY(180deg);
}
</style>
	

</head>
<body>
    <% 
  

               
    String em=(String)session.getAttribute("email");
    String n=(String)session.getAttribute("ename");
    
    
    %>
	<div class="main-container">
		
		<!--	Left Sidebar for Coolapsing navbar      -->
		<div class="sidebar-left">
			<nav class="menu">
    <header>Menu <span>x</span></header>
    <ol>
        <li class="menu-item"><a href="home.html">Home</a></li>
        
        <li class="menu-item">
            <a href="#0"> <%=n%></a>
            <ol class="sub-menu">
                <li class="menu-item"><a href="#0"><%=em%></a></li>
                <li class="menu-item"><a href="logout.jsp">Logout</a></li>
                
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
                <li class="menu-item"><a href="cancelhotel.jsp">Hotel</a></li>
                <li class="menu-item"><a href="cancelpackage.jsp">Package</a></li>
                
            </ol>
        </li>
        <li class="menu-item"><a href="aboutus.html">About us</a></li>
        <li class="menu-item"><a href="contactus.html">Contact us</a></li>
        <li class="menu-item"><a href="gallery.html">Gallery</a></li>
    </ol>
    <footer><button aria-label="Toggle Menu">Toggle</button></footer>
</nav> 		</div>

		<!--	Right sidebar for content      -->
		<div class="sidebar-right">
			
                    <form action="search_package.jsp" method="post">			
    <div class="search-box">
        
<input class="search-text" type="text" name="state" placeholder="Search by location">
<a class="search-btn" href="#">
    <button type="submit" style="background: none; border: none;"><i class="fa fa-search fa-lg"></i></button>
    
</a>
        
</div> 

                    </form>

<br>
<br>
<br><br>
<br>

<br>
<br>
<br>
<br>

<table  align="center" >
  <tr>
<td>
<div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="Massourie 1.jpg" alt="Avatar" style="width:300px;height:300px;">
    </div>
    <div class="flip-card-back">
      <h2>Massourie</h2> 
      <form action="viewpackage.jsp" method="get">
          <button type="submit" name="state" value="mussoorie">View package</button>
          
      </form>
      
    </div>
  </div>
</div>
</td>

  <td>
    <div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="1.jpg" alt="Avatar" style="width:300px;height:300px;">
    </div>
    <div class="flip-card-back">
      <h2>RishiKEsh</h2> 
       <form action="viewpackage.jsp" method="get">
          <button type="submit" name="state" value="rishikesh">View Package</button>
          
      </form>
    </div>
  </div>
</div>
  </td>

<td>
    <div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="2.jpg" alt="Avatar" style="width:300px;height:300px;">
    </div>
    <div class="flip-card-back">
      <h2>Shimla</h2> 
       <a href="viewpackage.jsp" target="_blank" >View Package</a>
    </div>
  </div>
</div>
  </td>
</tr>


<tr>
<td>
<div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="3.jpg" alt="Avatar" style="width:300px;height:300px;">
    </div>
    <div class="flip-card-back">
      <h2>mizoram</h2> 
       <a href="viewpackage.jsp" target="_blank" >View HOtels</a>
    </div>
  </div>
</div>
</td>

  <td>
    <div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="mount-abu.jpg" alt="Avatar" style="width:300px;height:300px;">
    </div>
    <div class="flip-card-back">
      <h2>Mount-Abu</h2> 
       <a href="viewpackage.jsp" target="_blank" >View Package</a>
    </div>
  </div>
</div>
  </td>

<td>
    <div class="flip-card">
  <div class="flip-card-inner">
    <div class="flip-card-front">
      <img src="6.jpg" alt="Avatar" style="width:300px;height:300px;">
    </div>
    <div class="flip-card-back">
      <h2>Ladakh</h2> 
       <a href="viewpackage.jsp" target="_blank" >View Package</a>
    </div>
  </div>
</div>
  </td>
</tr>









</table>

		</div>

	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="collapsenav.js"></script>
	

</body>
</html>