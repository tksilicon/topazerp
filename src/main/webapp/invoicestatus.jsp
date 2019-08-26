<%
if(session.getAttribute("username") == null){
 response.sendRedirect("index.jsp");
 }
 session.setAttribute("pageinfo", "Invoice Status");
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
        <title>Invoice Status</title>
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

                <div align="right"    style=" overflow-y: scroll;  border:  scrollbar; width: 1190px; height: 400px;" >
                    &nbsp;
                    <table align="center" width="700" height="30" bgcolor="bdff5b">
                        <tr>
                            <td align="center"><font color="black" size="3" face="arial">Invoice Payment History and Current Status</font></td>
                        </tr>
                    </table>
                    <form action="selectinvstatus.jsp" method="post">
                         
                        <table align="center" width="700" height="50" bgcolor="#5870a7">
                            <tr>
                                <td><font color="white" size="3" face="arial">Type invoice number to view invoice status</font> </td>
                                <td>

                                    <input type="text" name="invoicenumber" value="" size="40">

                                </td>
                                <td><input type="submit" name="invoicestatus" value="Submit" style="background-color:red;font-weight:bold;color:#ffffff;"  /></td>
                                   
                               
                            </tr>

                        </table>
                    </form>
                     <table align="center" width="700" height="10" bgcolor="#b37db7">
                      
                    </table>
                   
                </div>
           
            <table width="1190" height ="100"  align ="center" frame ="border">
        <tr align="center">
            <td align="left"> <img src="images/anigifnew.gif" </td>
            <td align="left"> <img src="images/anicloth.gif" </td>
            <td align="left"> <img src="images/anigifnew.gif" </td>
            <td align="left"> <img src="images/anicloth.gif" </td>
            <td align="left"> <img src="images/anigifnew.gif" </td>
            <td align="left"> <img src="images/anicloth.gif" </td>
        </tr>

    </table>
                 </td>
        </tbody>
    </table>
    <jsp:include page="footer_1.jsp" flush="true"></jsp:include>
</body>
</html>
