<%-- 
    Document   : f2
    Created on : Jan 27, 2014, 3:45:40 PM
    Author     : Echelon
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
            if (request.getParameter("mf") != null) {
                String firstname = request.getParameter("firstName");
                String lastname = request.getParameter("lastName");
                String email = request.getParameter("email");
            %>
            <table>
                <tr>
                    <td>FirstName</td>
                    <td>LastName</td>
                    <td>Email</td>
                </tr>
                
                 <tr>
                     <td><%=firstname%></td>
                    <td><%=lastname%></td>
                     <td><%=email%></td>
                </tr>
            </table>
            <%
            }
        %>
    </body>
</html>
