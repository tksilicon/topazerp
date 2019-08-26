<%
if(session.getAttribute("username") == null){
 response.sendRedirect("index.jsp");
 }
 session.setAttribute("pageinfo", "Success");
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
        <%@ page import="java.util.*" %>


        <%@page  import="Classespack.*" %>
        <%@page   import="java.sql.*"   %>
        <%@page   import="java.sql.Statement"   %>
        <%@page  import="newpackage.*" %>

        <script>
            function printDiv()
            {
                var divToPrint=document.getElementById('customer');
                newWin= window.open("");
                newWin.document.write(divToPrint.outerHTML);
                newWin.print();
                newWin.close();
            }
        </script>
    </head>
    <body >
        <jsp:include flush="true" page="cshead.jsp"></jsp:include>
        <table align="center" bgcolor="white" width="1205" height="500" frame="border">
            <tbody align="left">
            <td>

                <div align="right"    style=" overflow-y: scroll;  border:  scrollbar; width: 1190px; height: 600px;" >

                    <form action="invoice_2.jsp" method="post">
                        <table align="center" width="700" height="50" bgcolor="#333399">

                            <tr align="center">
                                <td><font size="4" color="white">
                                    Transaction Successful
                                    </font> </td>
                            </tr>

                            <%--
                            <tr align="center">

                     <td ONCLICK='history.go(-1)'><font size=5 face='tahoma' color = 'white'>Go to the Previous Page </font><input type = 'button' value='Go' > </td>");


                            </tr>

                            --%>
                    </table>

                </div>
            </td>
        </tbody>
    </table>
    <jsp:include page="footer_1.jsp" flush="true"></jsp:include>
</body>
</html>
