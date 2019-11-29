<%--
Document   : book
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
            
            <link rel="stylesheet" type="text/css" href="CSS/payment.css">
            <%@page import="java.sql.*"%>
            <%@page import="java.util.Random"%>
            
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
                <li class="menu-item"><a href="hotel.html">Hotel</a></li>
                <li class="menu-item"><a href="package.html">Package</a></li>
                
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

		<!--	Right sidebar for content      -->
                

           
           
            <%
                      String em1,hemail;
                       em1=(String)session.getAttribute("email"); 
                     //  hemail = (String)session.getAttribute("hemail");
                     hemail=request.getParameter("hid");
                     
                     out.print(em1+ " "+ hemail);
        try
            {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/tourismdb");
                
                Random rand = new Random();
                int x = rand.nextInt(10000);
                int y = rand.nextInt(20000);
                
                int bookId = (x>y)?(x*x):(y*y);
                String st,offer,price,desc;
                st = offer = price = desc = "";
            
                String a,b,c,d,m,i,j,k,l,n1,o,p,t;
                int pid = Integer.parseInt(request.getParameter("pId"));
                
                          n="";a="";c="";b="";d="";i="";j="";l="";k="";m="";o="";p="";t="";
                
                /* String a=request.getParameter("H_ID");
                String b=request.getParameter("H_NAME");
                String c=request.getParameter("EMAIL");
                String d=request.getParameter("PHONE_NO");
                String m=request.getParameter("STATE");
                String i=request.getParameter("CITY");
                String j=request.getParameter("LOCATION");
                String k=request.getParameter("ADDRESS");
                String l=request.getParameter("PINCODE");
                String n=request.getParameter("NAME");
                String o=request.getParameter("MOB");
                String p=request.getParameter("GENDER");
                out.print(a+" " +b+"" +c+""+ d+"" +m+"" +i+""+ j+"" +k+""+l+""+ n+"" +o+"" +p+"");*/
                
                                
                
                PreparedStatement ps= cn.prepareStatement("select * from REGUSER where EMAIL=?");
                ps.setString(1, em);
                
                //ps.setString(3, c);
                //ps.setString(11, o);
                //ps.setString(8, k);
                //ps.setString(12, p);
                ResultSet rs=ps.executeQuery();
                if(rs.next())
                {
                    n=rs.getString("NAME");
                    k=rs.getString("ADDRESS");
                    o=rs.getString("MOB");
                    p=rs.getString("GENDER");
                }
                
                
                PreparedStatement ps2= cn.prepareStatement("select * from PACKAGE where p_id=?");
                ps2.setInt(1, pid);
                
                /*ps2.setString(2, b);
                ps2.setString(3, c);
                ps2.setString(4, d);
                ps2.setString(5, m);
                ps2.setString(6, i);
                ps2.setString(7, j);
                ps2.setString(8, k);
                ps2.setString(9, l);*/
                
                ResultSet rs1=ps2.executeQuery();

                
                 if(rs1.next())
                 {
                     
                     st = rs1.getString("state");
                     offer = rs1.getString("offer");
                     price = rs1.getString("price");
                     desc = rs1.getString("description");
                     
                 
                  
                 }
                
                
                
                
                PreparedStatement ps3 = cn.prepareStatement("insert into PBOOKING values(?,?,?)");
                
                ps3.setInt(1, pid);
               
                ps3.setString(2, em);
                 ps3.setInt(3, bookId);
                
                ps3.executeUpdate();
                
               //out.print("uploaded successfully");  
               //response.sendRedirect("booking.html");
                
                
                %>
                  
	
                                        
                                        <div class="sidebar-right">
			<div class="container" id="container">
		<div class="container">
  <div style="text-align:center">
    <h2> Package Booked</h2>
    </div>
  <div class="row">
    <div class="column">
      <img src="delhi.jpg" style="width:100%">
    </div>
    <div class="column">
      <form action="home.html">
        
          <h3>Booking Id <%=bookId%></h3>
          
          <U>COUSTOMER DETAILS</U><BR>
          
          
                                         name - <%=n%><br>
                                        Address - <%=k%><br>
                                        MOBILE NO.- <%=o%><br><br>
                                    
        
                                        <U>Package DETAILS</U><BR>
                                        Package Id - <%=pid%><br>
                                        Package Price  - <%=price%><br>
                                        Description - <%=desc%><br>
                                        
                                        
        <p id="demo"></p>

      
        <input type="submit" value="Back to Home">
      </form>
    </div>
  </div>
</div>
                                       

    
                    
        <%
            }
        
               catch(Exception ex)
            {
                out.print(ex);
            }
        %>
                   
        <script>

</script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="collapsenav.js"></script>
	<script type="text/javascript" src="slider.js"></script>

</body>
                        </body>
                    </html>