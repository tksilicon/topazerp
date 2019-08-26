<%
if(session.getAttribute("username") == null){
 response.sendRedirect("index.jsp");
 }
session.setAttribute("pageinfo", "New Items Registration Form");

%>
<%-- 
    Document   : welcome
    Created on : Feb 26, 2012, 6:15:00 AM
    Author     : deji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.*" %>
<%@ page import="java.sql.Date" %>
<%@page import="newpackage.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.SQLException"%>

<%@ page  import="Classespack.*" %>

<%@page import="java.lang.NullPointerException" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon"  type="image/gif" href="echelon1.gif">

        <script language="text/javascript">   
            function signout()
            {
          
                window.location.href="signout.jsp";
            }
        </script>
        <title>New Item Registration</title>
    </head>
    <body>

        <jsp:include flush="true" page="cshead.jsp"></jsp:include>
        <table align="center" bgcolor="white" width="1205" height="500" frame="border">



            <tbody align="left">



            <td align="right" valign="top">  <jsp:include page="newitemCC.jsp" flush="true"></jsp:include></td>


        </tbody>

    </table>



    <jsp:include page="footer_1.jsp" flush="true"></jsp:include>
</body>
</html>
