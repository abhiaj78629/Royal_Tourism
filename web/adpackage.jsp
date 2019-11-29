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
            String n,e,p,o,ds,add,ph,gen,usty,id,hn,em,state,city,loc,pin;
            
      
            state=(String)request.getParameter("pstate");
            p=(String)request.getParameter("price");
            o=(String)request.getParameter("offer");
            ds=(String)request.getParameter("description");
            id=(String)request.getParameter("p_id");
            
            
            
            out.print(state + "<br>" + p + "<br>" + o + "<br>" + ds );
            try
            {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/tourismdb");

                PreparedStatement ps= cn.prepareStatement("insert into PACKAGE values(?,?,?,?,?)");

                    ps.setString(1,state);
                    ps.setString(2,p);
                    ps.setString(3,o);
                    ps.setString(4,ds);
                    ps.setInt(5,Integer.parseInt(id));
                  //  ps.setString(6,city);
                 //   ps.setString(7,loc);
                   // ps.setString(8,add);
                    //ps.setInt(9,Integer.parseInt(pin));
                    //ps.setString(10, "xyz");
                    
                    ps.executeUpdate();
        %>
                    
                    <script>
                        alert('PACKAGE  and deatils register sussesfully.');
                        window.location.href = "adminHome.jsp";
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
