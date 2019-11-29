.<%-- 
    Document   : search_hotel
    Created on : Jul 11, 2019, 4:06:14 PM
    Author     : abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <link rel="stylesheet" type="text/css" href="home.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@page import="java.sql.*" %>
        <link rel="stylesheet" type="text/css" href="hotellayout.css">	
	
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


		</style>
                <div class="sidebar-right">
                    <div style="width:100%;height:50px;">
                        <h2 style="height: 100px; width: 200px; size:200px; color:red;">LIST OF PACKAGE</h2>
                    </div >
                    
                    <%  
                        String em1;
                        em1= request.getParameter("email");
                        session.setAttribute("email", em1);
                        try
                        {
                            String s,p,o,ds,state;
                            Class.forName("org.apache.derby.jdbc.ClientDriver");
                            Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/tourismdb");
                            state = request.getParameter("state");
                            PreparedStatement ps= cn.prepareStatement("select * from package where state=?");    
                            ps.setString(1,state);
                            

                            ResultSet rs=ps.executeQuery();

                            //out.print("<table border=1>");
                            int i=0;
                            while(rs.next() && i<=4) 
                            {
                                i++;
                                s=rs.getString("state");
                                p=rs.getString("price");
                                o=rs.getString("offer");
                                ds=rs.getString("description");
                                

                                %>
                                <div style="width:100%;background-color: lightgray;margin-top: 20px;height:150px;">
                                    <div style="float:left;">
                                                                            </div>
                                    
                                    <div>
                                        <%=s%><br>
                                        <%=p%><br>
                                        <%=o%><br>
                                           <%=ds%><br>
                                       
                                    </div>
                                </div>
                                <%
                                session.setAttribute("email", em);
                            }
                        }
                        catch(Exception ex)
                        {
                            out.print(ex);
                        }
                    %>
                
                
                </div>
                    
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="collapsenav.js"></script>
    </body>
</html>
