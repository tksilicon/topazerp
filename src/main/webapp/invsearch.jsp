<%
if(session.getAttribute("username") == null){
 response.sendRedirect("index.jsp");
 }
 session.setAttribute("pageinfo", "Invoice Search");
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

                    <form action="selectincomeinvoicesearch.jsp" method="post">
                         &nbsp;
                        <table align="center" width="700" height="50" bgcolor="#333399">
                            <tr>
                                <td><font color="white" size="3" face="arial">Search for the invoice number to pick up Or make part payment. Only unclosed invoices will be displayed on this page. </font> </td>
                                <td>

                                    <input type="text" name="invoicenumber" value="" size="30">

                                </td>
                                <td><input type="submit" name="searchinvoice" value="Search" style="background-color:red;font-weight:bold;color:#ffffff;"  /></td>
                                   
                               
                            </tr>

                        </table>
                    </form>

                   
                </div>
            </td>
        </tbody>
    </table>
    <jsp:include page="footer_1.jsp" flush="true"></jsp:include>
</body>
</html>
