<%--
Document   : forgot pass word
Created on : 18 Nov, 2019, 6:48:28 PM
Author     : abhishek
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
            rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
            <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
            <link rel="stylesheet" type="text/css" href="joinus.css">
	<link rel="stylesheet" type="text/css" href="slider.css">
            
            
            <%@page import="java.sql.*"%>
            
        </head>
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
		
body {
  font-family: Arial, Helvetica, sans-serif;
}


/* Style inputs */
input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

/* Style the container/contact section */
.container {
  border-radius: 2px;
  background-color: #f2f2f2;
  padding: 0px;
}

/* Create two columns that float next to eachother */
.column {
  float: left;
  width: 50%;
  margin-top: 6px;
  padding: 20px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 100%) {
  .column, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}

	</style>
        <body>
	<div class="main-container">
		
		<!--	Left Sidebar for Coolapsing navbar      -->
		<div class="sidebar-left">
                                    <nav class="menu">
                <header>Menu <span>×</span></header>
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
                            <li class="menu-item"><a href="cancelHotel.jsp">Hotel</a></li>
                            <li class="menu-item"><a href="cancelpackage.jsp">Package</a></li>

                        </ol>
                    </li>
                    <li class="menu-item"><a href="aboutus.html">About us</a></li>
                    <li class="menu-item"><a href="contactus.html">Contact us</a></li>
                    <li class="menu-item"><a href="gallery.html">Gallery</a></li>
                </ol>
                
                <footer><button aria-label="Toggle Menu">Toggle</button></footer>
            </nav> 
		</div>

		<!--	Right sidebar for content      -->
                

           
           
       
                
                
                      <%  
                          
                          String usnm=request.getParameter("email");

            try
            {
                String im="";
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/tourismdb");

                PreparedStatement ps= cn.prepareStatement("select * from REGUSER where email=?");                
                ps.setString(1,usnm);
                ResultSet rs=ps.executeQuery();
                
                if(rs.next())
                {
                    session.setAttribute("uem", usnm);
                    response.sendRedirect("sendmail.jsp");
                    
                }
                else
                {
                    response.sendRedirect("forgetpassword.jsp");
                }
            }
            catch(Exception ex) {
                out.print(ex);
           }
                
                %>   
       
               
                   
        <script>
function myFunction() {
  var x = document.getElementById("myDate").value;
  document.getElementById("demo").innerHTML = x;
}
</script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="collapsenav.js"></script>
	<script type="text/javascript" src="slider.js"></script>

</body>
                        </body>
                    </html>