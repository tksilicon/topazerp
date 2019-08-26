<%
if(session.getAttribute("username") == null){
 response.sendRedirect("index.jsp");
 }
 session.setAttribute("pageinfo2", "Acct. Payable");
%>
<%-- 
    Document   : welcome
    Created on : Feb 26, 2012, 6:15:00 AM
    Author     : deji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*" %>
<%@page import="java.sql.Date" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="icon"  type="image/gif" href="echelon1.gif">
        <title>Account Payable</title>
    </head>
    <body>

       <jsp:include flush="true" page="webheader.jsp" ></jsp:include>


         <jsp:include flush="true" page="pageheader.jsp" ></jsp:include>


        <table align="center" bgcolor="white" width="1205" height="360" frame="border">



            <tbody align="left">


            <td align="left" width="210"  valign="top"> <jsp:include page="menu.jsp" flush="true"></jsp:include></td>
            <td align="right" width="300"  valign="top"><div align="center"   style=" overflow-y: scroll;  height: 480px;" >   <jsp:include page="selectacctpay.jsp" flush="true" ></jsp:include> </div> </td>






            <%--
          <p align="center"> <jsp:include page="Movie2.html" flush="true"></jsp:include></p>
            --%>

        </tbody>

    </table>

    <jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>
