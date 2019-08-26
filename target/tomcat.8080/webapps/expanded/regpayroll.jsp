<%
if(session.getAttribute("username") == null){
 response.sendRedirect("index.jsp");
 }
 session.setAttribute("pageinfo2", "Payroll Setup");
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
        <title>Payroll Analysis</title>
    </head>
    <body>

         <jsp:include flush="true" page="webheader.jsp" ></jsp:include>


             <jsp:include flush="true" page="pageheader.jsp" ></jsp:include>
                        <%
                            // Set refresh, autoload time as 90 seconds

                            // Get current time
                            Calendar calendar = new GregorianCalendar();
                            String am_pm;
                            int hour = calendar.get(Calendar.HOUR);
                            int minute = calendar.get(Calendar.MINUTE);
                            int second = calendar.get(Calendar.SECOND);
                            if (calendar.get(Calendar.AM_PM) == 0) {
                                am_pm = "AM";
                            } else {
                                am_pm = "PM";
                            }
                            String CT = hour + ":" + minute + ":" + second + " " + am_pm;
                           
                            session.setAttribute("mydate", String.format("%tF\n", calendar));
                        %>
                   

        <table align="center" bgcolor="white" width="1205" height="400" frame="border">
            <tbody align="left">
            <td align="left" valign="top" bgcolor="#333366" width="210"> <jsp:include page="menu.jsp" flush="true"></jsp:include></td>
            <td align="center" valign="top"> <jsp:include page="newpayroll.jsp" flush="true"></jsp:include></td>
            
            
            
           <td align="right" valign="top" bgcolor="#663399" width="120" >
               <jsp:include page="otherreport.jsp" flush="true"></jsp:include>
            </td>
        </tbody>

    </table>

    <jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>
