<%-- 
    Document   : PageGenerator2
    Created on : Jan 22, 2015, 12:05:54 PM
    Author     : Alex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   String color = request.getParameter("color");
%>
    
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style="color:<%=color %>">This is a JSP Table</h1> <!-- delimitters are for java code  -->
        
        <table border="1">
          <% 
            for(int row =0; row < 3; row++){
               out.println("<tr style='border:1px solid black;'>");
                   for(int col = 0; col < 3; col++){
                      out.print("<td style='border:1px solid black;'>row" + (row+1) + ",col" + (col+1) + "</td>");
                    }
                    out.println("</tr>");
                }
          %>
        </table>
</html>
