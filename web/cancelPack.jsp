<%-- 
    Document   : cancel
    Created on : Nov 24, 2019, 9:40:22 PM
    Author     : abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <%@page import="java.sql.*" %>

    </head>
    <body>
        <%
                    
                    try
            {
                    String em=(String)session.getAttribute("email");
                    int bookid = Integer.parseInt(request.getParameter("bookId"));

                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/tourismdb");
                PreparedStatement ps= cn.prepareStatement("delete from PBOOKING where PBOOK_ID=?"); 
                               
                ps.setInt(1, bookid);
                ps.executeUpdate();
                
               
                        
                    %>
                    <script>
                        alert("Booking Cancelled");
                        window.location.href = "home.html";
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
