<%-- 
    Document   : checkmail
    Created on : Jul 16, 2019, 1:46:01 AM
    Author     : bisweswar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <%@page  import="java.sql.*" %>
    <body>
     <%
             String email,psw;
             email =(String)session.getAttribute("em");
             out.print(email);
             try
             {
               Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/Login");
                PreparedStatement st=cn.prepareStatement("select *  from login where username=? ");
                st.setString(1,(email));
                ResultSet rs= st.executeQuery();
                if(rs.next())
                   {
                      
                     session.setAttribute("em",email);
                     
                     %>
                              <jsp:forward page="sendmail.jsp"/>
                            <%
                     
                   }
                else
                  {
                      %>
                      <script>
                               alert("Please enter correct email");
                       </script>
                       <%
                  } 
              }
             catch(Exception ex)
             {
                  out.print(ex);
             }
       %>
    </body>
</html>
