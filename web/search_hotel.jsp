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
    <header>Menu <span>×</span></header>
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
                        <h2 style="height: 100px; width: 200px; size:200px; color:red;">List of Hotels</h2>
                    </div >
                    
                    <%  
                        
                       
                        try
                        {
                            String n1,e,ph,state,city,loc,add,pin,img;
                            Class.forName("org.apache.derby.jdbc.ClientDriver");
                            Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/tourismdb");
                            loc = request.getParameter("hotel_loc");
                            PreparedStatement ps= cn.prepareStatement("select * from hotel where location=?");    
                            ps.setString(1,loc);
                            

                            ResultSet rs=ps.executeQuery();

                            //out.print("<table border=1>");
                            int i=0;
                            while(rs.next() && i<=4) 
                            {
                                i++;
                                e=rs.getString("email");
                                ph=rs.getString("phone_no");
                                state=rs.getString("state");
                                city=rs.getString("city");
                                n1=rs.getString("h_name");
                                add=rs.getString("address");
                                pin=rs.getString("pincode");
                                img=rs.getString("image");

                                %>
                               <div style="width:100%;background-color: lightgray;margin-top: 20px;height:175px;">
                                    <div style="float:left;">
                                        <img src="<%=img%>" alt="" style="width:175px;height:175px;"/>
                                    </div>
                                    
                                    
                                        <div style="margin-left: 200px;">
                                             <form method="post" action="book.jsp">
                                        <a href="book.jsp" class="btn btn-primary btn-lg" style=" position: absolute; right: 0; width: 12%; height: 175px; padding-top: 80px;"><input type="submit" value="Book Hotel"></a>
                                        
                                                               <input type="hidden" name="hid" value="<%=e%>">
                                                               <input type="hidden" name="email" value="<%=em%>">
                                        
                                        Name-<%=n1%><br>
                                        Email-<%=e%><br>
                                       Phone no- <%=ph%><br>
                                        State- <%=state%><br>
                                       City- <%=city%><br>
                                  
                                       Address <%=add%><br>
                                        Pincode<%=pin%><br>
                                        </form>
                                         
                                        
                                    </div>
                                        
                                            
                                </div>
                                <%
                                
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
