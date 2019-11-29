<%-- 
    Document   : sendmail
    Created on : Jul 15, 2019, 9:30:58 PM
    Author     : bisweswar
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

 
<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>
<%@page import="java.util.Random" %>
    <body>
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
        
        <%
                String email = (String)session.getAttribute("uem");
                out.print(email);
            //String email = "bisweswar13@gmail.com";
                //String psw = (String)session.getAttribute("op");
              //Creating a result for getting status that messsage is delivered or not!
                Random rd=new Random();
                int x= rd.nextInt(900000)+100000;
                
                String result;
           // Get recipient's email-ID, message & subject-line from index.html page
             final String to = email;
            final String subject = "Reset Password Using OTP";
              final String messg = "Hello, Please use the OTP "+x + " to reset the Password. Please use this within 15 minutes.";
 
            // Sender's email ID and password needs to be mentioned
            final String from = "abhi.aj0001@gmail.com";
            final String pass = "@bhishek0001";

            // Defining the gmail host
            String host = "smtp.gmail.com";

            // Creating Properties object
            Properties props = new Properties();

            // Defining properties
            props.put("mail.smtp.host", host);
            props.put("mail.smtp.host", host);
            props.put("mail.smtp.port", "587");
            props.put("mail.transport.protocol", "smtp");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.user", from);
            props.put("mail.password", pass);
           props.put("mail.port", "587");

            // Authorized the Session object.
            Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(from, pass);
                }
            });

            try {
                // Create a default MimeMessage object.
                MimeMessage message = new MimeMessage(mailSession);
                // Set From: header field of the header.
                message.setFrom(new InternetAddress(from));
                // Set To: header field of the header.
                message.addRecipient(Message.RecipientType.TO,
                        new InternetAddress(to));
                // Set Subject: header field
                message.setSubject(subject);
                // Now set the actual message
                message.setText(messg);
                // Send message
                Transport.send(message);
                %>
      
                 <div class="sidebar-right">
			<div class="container" id="container">
		<div class="container">
  <div style="text-align:center">
    <h2> ONE TIME PASSWORD</h2>
    </div>
  <div class="row">
    <div class="column" align="center">
      <img src="avtar2.jpg" align="center" style="width:40%" style="hight:40%">
    </div>
    <div class="column">
     <form  align="center" action="checkotp.jsp" method="post">
         <br> <input type="text" name="userotp" required="" placeholder="Enter OTP">
                    <input type="hidden" name="systemotp" value="<%=x%>">
                    <input type="submit" value="Verify OTP" style="height:32px;width:105px;border-radius:25px;margin-top: 40px;margin-left: 00px;border:none;background-color:lightseagreen;"><br>
                </form>
                                        
       
    </div>
  </div>
</div>
    </div>
        </div>
   
                
                
                
                
        
    </div>
                <%
            } catch (MessagingException mex) {
                //mex.printStackTrace();
                out.println(mex);
                result = "Error: unable to send mail....";
            }
        %>
      <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="collapsenav.js"></script>
    <script type="text/javascript" src="slider.js"></script>

</body>
</html>
                
             