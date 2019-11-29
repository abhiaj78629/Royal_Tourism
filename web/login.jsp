
<%-- 
    Document   : login
    Created on : Jul 11, 2019, 12:01:42 PM
    Author     : abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <%@page import="java.sql.*"%>
    </head>
    <body>
        <%
          String e,p;
            e=request.getParameter("email");
            p=request.getParameter("password");
        try
            {
                
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/tourismdb");

                PreparedStatement ps= cn.prepareStatement("select * from REGUSER where EMAIL=? and PASSWORD=?");                
                ps.setString(1, e);
                ps.setString(2, p);
                
                ResultSet rs=ps.executeQuery();
                
                if(rs.next())
                {
                    session.setAttribute("email", e);
                    session.setAttribute("ename", rs.getString("name"));
                    String a=(String)session.getAttribute("ht");  
                    String userTpye = rs.getString("USERTYPE");
                    if(userTpye.equals("admin")){
                        response.sendRedirect("adminHome.jsp");
                    }
                    else{
                        if(a!=null && a.equals("1"))
                    {
                        session.setAttribute("ht", "0");
                        response.sendRedirect("hotel.jsp");
                    }
                    else
                    {
                        response.sendRedirect("hotel.jsp");
                    }
                        
                    }
                    
                }
                cn.close();
            }
            catch(Exception ex)
            {
                out.print(ex);
            }
        %>
    </body>
</html>

