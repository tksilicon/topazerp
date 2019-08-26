<%
if(session.getAttribute("username") == null){
 response.sendRedirect("index.jsp");
 }
session.setAttribute("pageinfo", "Search Results for Customers");
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
<%@page import="newpackage.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>

<%@page  import="Classespack.*" %>

<%@page import="java.lang.NullPointerException" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="icon"  type="image/gif" href="logo.gif">

         <script type="text/javascript">
            function handleSelect(elm)
            {
                window.location = elm.value+".jsp";
            }
        </script>

          <style>
            table.rowHover tr:hover{ background-color:  orange; }
            table.rowonClick tr:select{background-color: inherit;}

        </style>
        <script type="text/javascript">   
            function signout()
            {
          
                window.location.href="signout.jsp";
            }
        </script>
        <title>Customer Records</title>
    </head>
    <body>

 <jsp:include flush="true" page="cshead.jsp"></jsp:include>


 <table align="center" bgcolor="white" width="1205" height="600" frame="border" >



        <tbody align="left">

            
        
        <td align="right" valign="top"><div align="center"    style=" overflow-y: scroll;  border:  scrollbar;  height: 600px;" > 
            <jsp:include page="selectcustsearch.jsp" flush="true"></jsp:include></div></td>

            
    </tbody>

</table>



<jsp:include page="footer_1.jsp" flush="true"></jsp:include>
</body>
</html>
