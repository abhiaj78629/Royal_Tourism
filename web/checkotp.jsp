<%-- 
    Document   : checkotp
    Created on : nov  16, 2019, 1:36:16 AM
    Author     :abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Password</title>
        <link type="text/css" rel="stylesheet" href="reportcss.css"/>
    </head>
    <%@page import="java.sql.*"%>
     <body>
        <%
            String sotp=request.getParameter("systemotp");
            String myotp=request.getParameter("userotp");
            
            if(sotp.equals(myotp))
            {
                %>
                    <form action="upass.jsp">
                        New Password <input type="text" name="pass">
                        <input type="submit" value="change" />
                    </form>
                <%
            }
            else
            {
                %>
                <script>
                    alert("Incorret OTP");
                </script>
                <a href="home.html">Go to Login Page</a>
                <%
            }
        %>

    </body>
</html>
