<%-- 
    Document   : logout
    Created on : Nov 22, 2019, 2:10:27 PM
    Author     : abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout</title>
    </head>
    <body>
        <%
   
 session.setAttribute("email",null);
 session.invalidate();
 
    
        %>
        <jsp:forward page="joinus.html"/>
        
    </body>
</html>
