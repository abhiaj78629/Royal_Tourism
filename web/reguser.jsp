<%-- 
    Document   : reguser
    Created on : 11 July, 2019, 11:59:05 AM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register User</title>
        <%@page import="java.sql.*" %>
    </head>
    <body>
        <%
            String n,e,p,add,ph,gen,usty;
            
            n=request.getParameter("fullname");
            e=request.getParameter("email");
            p=request.getParameter("password");
            ph=request.getParameter("phone");
            add=request.getParameter("address");
            gen=request.getParameter("gender");
            usty=request.getParameter("usertype");
            
            try
            {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/tourismdb");

                PreparedStatement ps= cn.prepareStatement("insert into REGUSER values(?,?,?,?,?,?,?)");
                    ps.setString(1,n);
                    ps.setString(2,e);
                    ps.setString(3,p);
                    ps.setString(4,ph);
                    ps.setString(5,add);
                    ps.setString(6,gen);
                    ps.setString(7,"user");
                    ps.executeUpdate();
        %>
                    
                    <script>
                        alert('Registration Successful. Please Login to Continue.');
                        window.location.href="joinus.html";
                    </script>
                    <%
                
                
                
                
                
                cn.close();
            }
            catch(Exception ex)
            {
                out.print(ex);  
            }
            
        %>
    </body>
</html>
