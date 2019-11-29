<%-- 
    Document   : viewhotels
    Created on : Jul 16, 2019, 3:59:46 PM
    Author     : abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hotels</title>
        <%@page import="java.sql.*" %>
        <link rel="stylesheet" type="text/css" href="home.css">
        <link rel="stylesheet" type="text/css" href="hotellayout.css">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        
          <% 
  

               
    String em1=(String)session.getAttribute("email");
    String n11=(String)session.getAttribute("ename");
    
    
    %>
        <div class="main-container">
		
		<!--	Left Sidebar for Coolapsing navbar      -->
		<div class="sidebar-left">
			<nav class="menu">
    <header>Menu <span>×</span></header>
    <ol>
        <li class="menu-item"><a href="home.html">Home</a></li>
        
        <li class="menu-item">
            <a href="#0"><%=n11%></a>
            
            <ol class="sub-menu">
                <li class="menu-item"><a href="joinus.html"><%=em1%></a></li>
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
                        String em;
                        //em= request.getParameter("email");
                        em=(String)session.getAttribute("email");
                        
                        if(em==null)
                        {
                            session.setAttribute("ht", "1");
                            response.sendRedirect("joinus.html");
                        }
                        try
                        {
                            String n,e,p,state,city,loc,add,pin,img,ds,o,dp,d;
                            n="";o="";p="";city="";loc="";add="";pin="";img="";ds="";dp="";d="";state="";
                            Class.forName("org.apache.derby.jdbc.ClientDriver");
                            Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/tourismdb");
                             state = request.getParameter("state");
                             
                             //state = "mussoorie";
                            
                            PreparedStatement ps= cn.prepareStatement("select * from package where state=?");    
                            ps.setString(1,state);

                            ResultSet rs=ps.executeQuery();

                            //out.print("<table border=1>");
                            int pid=0;
                        
                            while(rs.next()) 
                            {
                                
                                o=rs.getString("offer");
                                p=rs.getString("price");
                                dp=rs.getString("description");
                                pid = rs.getInt("p_id");
                               
                                
                                %>
                                <div style="width:100%;background-color:white;margin-top: 20px;height:175px;">
                                    <div style="float:left;">
                                        <img src="<%=img%>" alt="" style="width:175px;height:175px;"/>
                                    </div>
                                    
                                    <div style="margin-left: 200px;">
                                          <form action = "bookPackage.jsp">
                                        <a href="bookPackage.jsp" class="btn btn-primary btn-lg" style=" position: absolute; right: 0; width: 12%; height: 175px; padding-top: 80px;"><input type="submit" value="Book Package"></a>
                                      
                                            <input type="hidden" name="pId" value="<%=pid%>">
                                            
                                        </form>
                                        DESTINATION-<%=ds%><br>
                                        PRICE-<%=p%><br>
                                        <%=o%><br>
                                        <%=dp%><br>
                                        
                                        <br>
                                        
                                                               
                                        
                                    </div>
                                        
                                            
                                </div>
                                <%
                                       //session.setAttribute("email", em);        
                                
                            }
                                
                            
                        }
                        catch(Exception ex)
                        {
                            out.print(ex);
                        }
                    %>
                
            <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="collapsenav.js"></script>
    </body>
</html>
