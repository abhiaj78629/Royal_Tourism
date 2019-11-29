<%-- 
    Document   : changepass
    Created on : 3 Jul, 2019, 12:18:07 AM
    Author     : Abhishek
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
                String e,op,np;
                e=(String)session.getAttribute("EMAIL");
                
                op=request.getParameter("op");
                np=request.getParameter("np");
                
                out.print(e);
                try
                {

                   Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/tourismdb");

                    PreparedStatement ps= cn.prepareStatement("select * from REGUSER where EMAIL=? and PASSWORD=?");                
                    ps.setString(1, e);
                    ps.setString(2, op);

                    ResultSet rs=ps.executeQuery();

                    if(rs.next())
                    {
                        
                        
                        
                        
                        ps= cn.prepareStatement("update REGUSER set PASSWORD=? where EMAIL=?");                
                        ps.setString(1, np);
                        ps.setString(2, e);
                        
                        
                        ps.executeUpdate();
                                    if(rs.getString("type").equalsIgnoreCase("donar"))
                              {

                                  %>
                                  <jsp:forward page="dprofile.jsp"/>
                                  <%
                              }
                              else if(rs.getString("type").equalsIgnoreCase("admin"))
                             {

                                  %>
                                  <jsp:forward page="aprofile.jsp"/>
                                  <%
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