<!DOCTYPE html>
<html>
<head>
	<title>cancelpackage</title>
	<link rel="stylesheet" type="text/css" href="joinus.css">
	<link rel="stylesheet" type="text/css" href="slider.css">
        <%@page import="java.sql.*" %>
        
	<style type="text/css">
		.main-container{
			display: flex;
			flex-direction: row;
                        widht: 100%;
		}

		.main-container .sidebar-left{  GB                                                                                                                                                                                                                                                                                                                                                                                     
			flex: 1;
                         widht: 100%;
		}

		.main-container .sidebar-right{
			flex: 5;
			display: flex;
			justify-content: center;
			align-items: center;
                         widht: 100%;
                         flex-wrap:wrap;
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
  background-color: #f76262;
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

.one-line{

    font-size: 20px;
    margin-right: 40px;
    
    margin-bottom: 10px;
    color: #fff;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 100%) {
  .column, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
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
                <li class="menu-item"><a href="#cancelpackage.jsp">Package</a></li>
                
            </ol>
        </li>
        <li class="menu-item"><a href="aboutus.html">About us</a></li>
        <li class="menu-item"><a href="contactus.html">Contact us</a></li>
        <li class="menu-item"><a href="gallery.html">Gallery</a></li>
    </ol>
    <footer><button aria-label="Toggle Menu">Toggle</button></footer>
</nav> 
		</div>

		


                                        <%
                    
                    try
            {
                   
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/tourismdb");
                PreparedStatement ps= cn.prepareStatement("select * from PBOOKING where EMAIL=?"); 
                               
                ps.setString(1, em);
                
                ResultSet rs=ps.executeQuery();
                while(rs.next())
                {
                    int pbook_id = rs.getInt("pbook_id");
                    int packid = rs.getInt("pack_id");
                    
                    ps= cn.prepareStatement("select * from PACKAGE where P_ID=?"); 
                    ps.setInt(1, packid);
                    
                    ResultSet rs2 = ps.executeQuery();
                    rs2.next();
                    String desc = rs2.getString("description");
                    
                        
                    %>
                    <!--	Right sidebar for content      -->
                <div class="sidebar-right">
			<div class="container" id="container">
		<div class="container">
                    <div style="text-align:center">
                        <h1> <b><u><em>Cancel Package</em></b></u></h1>
                    </div>
                    <div class="row">
                        <h1 style="color: #666666;">History</h1>
			
                         <div class="column">
      			                                                          
                            <strong>
                            <div class="one-line">Book Id</div>
                            <div class="one-line">Package Id</div>
                            <div class="one-line">Email</div>
                            <div class="one-line">Description</div>
                    </strong>

                           </div>
    
                    <div class="column">
                    
                                   <div class="one-line"><%=pbook_id%></div>
                            <div class="one-line"><%=packid%></div>
                            <div class="one-line"><%=em%></div>
                            <div class="one-line"><%=desc%></div>
                            <form>
                    </div>
                             
                        <form action="cancelPack.jsp" method="post">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="number" name="bookId">
                            <input type="submit" value="Cancel">
                        </form>
                            <br><rb>                        </div>
          
    
                      
                        
                    <%
                }
                     
 
                cn.close();
                
            }
            catch(Exception ex)
            {
                 out.print(ex);
            }
        
        %>
       
                </div><script>
function myFunction() {
  var x = document.getElementById("myDate").value;
  document.getElementById("demo").innerHTML = x;
}
</script>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="collapsenav.js"></script>
	<script type="text/javascript" src="slider.js"></script>

</body>
</html>
    