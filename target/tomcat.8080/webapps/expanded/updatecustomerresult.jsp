<%
if(session.getAttribute("username") == null){
 response.sendRedirect("index.jsp");
 }
 session.setAttribute("pageinfo", "Customer's Update");
%>
<%-- 
    Document   : insert
    Created on : Aug 10, 2012, 11:06:27 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="newpackage.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*" %>
<%@page import="java.lang.NullPointerException" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Update</title>

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
        <style>
            table.rowHover tr:hover{ background-color:  orange; }
            table.rowHover TR:hover{ background-color:  orange; }

        </style>
    </head>
    <body>

        <jsp:include flush="true" page="cshead.jsp" ></jsp:include>
        <table align="center" bgcolor="white" width="1195" height="500" frame="border">
            <tbody align="left">
            <td>
                <div align="center"   style=" overflow-y: scroll;  width: 1195px; height: 550px;" >

                    &nbsp;
                    &nbsp;
                    <table align="center" width="1000" bgcolor="#333399" height="40" frame="border">
                        <tr align="center">
                            <td>
                                <font color="white" face="tohoma" size="5">Customer's Update</font>
                            </td>
                        </tr>
                    </table>
                    <form action="deleting.jsp" method="post">
                        <table align="center" width="1000" bgcolor="#eeeeee" height="100" frame="border">

                            <tr width="400" align="center">
                                <td> <font color="green" face="tohoma" size="4">Customer successfully updated</font></td>
                            </tr>
                        </table>
                    </form>

                    <table align="center" width="1000" bgcolor="#cccccc" height="40" frame="border">
                        <tr align="center">
                            <td>
                                <font color="green" face="tohoma" size="3">Make  all necessary changes and click on SAVE button</font>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tbody>
    </table>
    <jsp:include page="footer_1.jsp" flush="true"></jsp:include>
</body>
</html>
