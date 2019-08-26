<%-- 
    Document   : printinvoice
    Created on : Dec 15, 2014, 10:51:20 AM
    Author     : THANKGOD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%          
           response.sendRedirect("generateinvoice.jsp?copy=shadow");  
        %>
    </body>
</html>
