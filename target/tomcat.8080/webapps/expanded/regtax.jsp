<%
if(session.getAttribute("username") == null){
 response.sendRedirect("index.jsp");
 }
 session.setAttribute("pageinfo2", "Tax Form");
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
<%@page import="Classespack.*" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="icon"  type="image/gif" href="echelon1.gif">
        <title>Tax</title>
    </head>
    <body>

         <jsp:include flush="true" page="webheader.jsp" ></jsp:include>

         <jsp:include  page="pageheader.jsp" ></jsp:include>

        <table align="center" bgcolor="white" width="1205" height="400" frame="border">
            <tbody align="left">
            <td align="left" valign="top" bgcolor="#333366" width="210"> <jsp:include page="menu.jsp" ></jsp:include></td>
            <td align="center" valign="top"> <jsp:include page="tax.jsp" ></jsp:include></td>
            
            
            
           <td align="right" valign="top" bgcolor="#663399" width="120" >
               <jsp:include page="otherreport.jsp" ></jsp:include>
            </td>
        </tbody>

    </table>

    <jsp:include page="footer.jsp" ></jsp:include>
</body>
</html>
