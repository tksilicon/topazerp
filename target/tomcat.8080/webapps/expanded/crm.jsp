<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }
    session.setAttribute("pageinfo", "Customers Relationship Management");
%>
<%-- 
    Document   : invoice
    Created on : Dec 10, 2012, 11:11:34 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@page import="java.util.*" %>
        <%@page  import="Classespack.*" %>
        <%@page   import="java.sql.*"   %>
        <%@page   import="java.sql.Statement"   %>
        <%@page  import="newpackage.*" %>

        <script>
            function printDiv()
            {
                var divToPrint = document.getElementById('customer');
                newWin = window.open("");
                newWin.document.write(divToPrint.outerHTML);
                newWin.print();
                newWin.close();
            }
        </script>
    </head>
    <body>

        <jsp:include flush="true" page="cshead.jsp"></jsp:include>

            <table align="center" bgcolor="white" width="1205" height="600" frame="border">
                <tbody align="left">
                <td>

                    <div align="right"    style=" overflow-y: scroll;  border:  scrollbar; width: 1190px; height: 500px;" >
                        <table align="center">
                            <tr>
                                <td><a href="lastfivecust.jsp"><input type="button" name="" value="Last Five Customers" style="background-color: #5FB404;font-weight:bold; height: 40px; color:#ffffff;"  /></a></td>
                                <td><a href="last100customer.jsp"><input type="button" name="" value="Best 100 Customers" style="background-color:red;font-weight:bold; height: 40px; color:#ffffff;"  /></a></td>
                                <td><a href="lastvip.jsp"><input type="button" name="" value="VIP Customers" style="background-color: #330099;font-weight:bold; height: 40px; color:#ffffff;"  /></a></td>
                                <td><a href="lastnewcustomers.jsp"><input type="button" name="" value="New Customers(1 Month) " style="background-color: darkorange;font-weight:bold; height: 40px; color:#ffffff;"  /></a></td>
                                <td><a href="lastbirthday.jsp"><input type="button" name="" value="Birth Day Customers " style="background-color: blueviolet;font-weight:bold; height: 40px; color:#ffffff;"  /></a></td>
                                <td><a href="lastinactive.jsp"><input type="button" name="" value="Inactive Customers(3 Months) " style="background-color: purple;font-weight:bold; height: 40px; color:#ffffff;"  /></a></td>

                            </tr>
                        </table>          
                    </div>
                </td>
            </tbody>
        </table>
    <jsp:include page="footer_1.jsp" flush="true"></jsp:include>
</body>
</html>
