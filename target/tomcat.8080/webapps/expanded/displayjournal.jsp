<%
            if (session.getAttribute("username") == null) {
                response.sendRedirect("index.jsp");
            }
            session.setAttribute("pageinfo2", "Journal Reports");
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
        <title>Item Records</title>
    </head>
    <body>

        <jsp:include flush="true" page="webheader.jsp"></jsp:include>


        <jsp:include flush="true" page="pageheader.jsp"></jsp:include>
        <table align="center" bgcolor="white" width="1205" height="400" frame="border">



            <tbody align="left">


            <td align="left" width="210" valign="top"> <jsp:include page="menu.jsp" flush="true"></jsp:include></td>
            <td align="left" valign="top" width="500">
                   <div align="center"   style=" overflow-y: scroll;  height: 40px;" > 
                <table align="center"    frame="border"   width="740"  height="30" valign="top">

            <TR valign="center" bgcolor="#eeeeee" align="center" height="30">
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>S/N</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Date</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Narration</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Debit Account</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Credit Account</B></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Amount</B></FONT></TD>
              
            </TR>
                  </table>
                </div>
                <div align="center"   style=" overflow-y: scroll;  height: 480px;" >
                    <jsp:include page="selectjournal.jsp" flush="true"></jsp:include>
                </div> </td>
            <td align="right" valign="top" bgcolor="#663399" width="120" >
                <jsp:include page="otherreport.jsp" flush="true"></jsp:include>
            </td>
        </tbody>

    </table>

    <jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>
