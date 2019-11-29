<%-- 
    Document   : upass
    Created on : nov 10, 2019, 2:13:05 AM
    Author     : abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%@page import="java.sql.*"%>
    <body>
        <%
        String em=(String)session.getAttribute("uem");
        
    
    String p2= request.getParameter("pass");
    //String p3= request.getParameter("p3");
   out.print(em + " "+ p2);
             try
                    {
                        Class.forName("org.apache.derby.jdbc.ClientDriver");
                      Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/tourismdb");
                            PreparedStatement ps1=cn.prepareStatement("update REGUSER set PASSWORD=? where EMAIL=?");
                            ps1.setString(1,p2);
                            ps1.setString(2,em);
                            ps1.executeUpdate();
                              
                   cn.close();
                    }
             
             catch(Exception ex)
             {
                 
             }
    
                    session.removeAttribute("em");
    
   
    
    
  
                response.sendRedirect("joinus.html");
            
        %>
    </body>
</html>
