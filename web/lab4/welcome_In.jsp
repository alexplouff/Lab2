<%-- 
    Document   : welcome_In
    Created on : Jan 26, 2015, 8:57:42 PM
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account:  </title>
    </head>
    <body>
        <% 
            Object message = request.getAttribute("message");
            
            out.print("<br>" + message);
            
            %>;
            
            <p><a href="form4.html">Back
    </body>
</html>
