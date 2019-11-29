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
            String n,e,p,add,ph,gen,usty,id,hn,em,state,city,loc,pin;
            
            id=(String)request.getParameter("hid");
            hn=(String)request.getParameter("hname");
            em=(String)request.getParameter("hemail");
            ph=(String)request.getParameter("hphon");
            state=(String)request.getParameter("hstate");
            city=(String)request.getParameter("hcity");
            loc=(String)request.getParameter("hlocation");
            add=(String)request.getParameter("hadd");
            pin=(String)request.getParameter("hpin");
            
            
            out.print(id + "<br>" + hn + "<br>" + em + "<br>" + ph + "<br>" + state + "<br>" + city + "<br>" + loc + "<br>" + add + "<br>" + pin);
            try
            {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/tourismdb");

                PreparedStatement ps= cn.prepareStatement("insert into hotel values(?,?,?,?,?,?,?,?,?,?)");
                    ps.setInt(1,Integer.parseInt(id));
                    ps.setString(2,hn);
                    ps.setString(3,em);
                    ps.setString(4,ph);
                    ps.setString(5,state);
                    ps.setString(6,city);
                    ps.setString(7,loc);
                    ps.setString(8,add);
                    ps.setInt(9,Integer.parseInt(pin));
                    ps.setString(10, "xyz");
                    
                    ps.executeUpdate();
        %>
                    
                    <script>
                        alert('hotel id and deatils register sussesfully.');
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
