<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }
    session.setAttribute("pageinfo", "Customer's Ledger");
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
        <link rel="icon"  type="image/gif" href="logo.gif">
        <title>Cust Ledger</title>
        <%@ page import="java.util.*" %>
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
    <body >
        <jsp:include page="siteurl.jsp" flush="true"></jsp:include>
        <jsp:include flush="true" page="cshead.jsp"></jsp:include>

            <table align="center" bgcolor="white" width="1205" height="500" frame="border">
                <tbody align="left">
                <td>
                    <div align="right"    style=" overflow-y: scroll;  border:  scrollbar; width: 1190px; height: 400px;" >
                        <table align="center" width="700" height="30" bgcolor="bdff5b">
                            <tr>
                                <td align="center"><font color="black" size="3" face="arial">Customer's Transaction History</font></td>
                            </tr>
                        </table>
                        <form action="selectcustledger.jsp" method="post">
                            <table align="center" width="700" height="50" bgcolor="#5870a7">
                                <tr>
                                    <td><font color="white" size="3" face="arial"><b>Enter Customer's Name:</b> </font> </td>
                                    <td><input type="text" name="custname" size="30"> </td>
                                    <td><input type="submit" name="custsearch" value="Submit" style="background-color:red;font-weight:bold;color:#ffffff;"  /></td>
                                    <td><a href="transaction.jsp"><input type="button" name="" value="Back to Drop Off Page" style="background-color:red;font-weight:bold;color:#ffffff;"  /></a></td>
                                </tr>
                            </table>
                        </form>
                        <table align="center" width="700" height="10" bgcolor="#b37db7">
                        </table>
                    </div>
                </td>
            </tbody>
        </table>
    <jsp:include page="footer_1.jsp" flush="true"></jsp:include>
</body>
</html>