<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }
    session.setAttribute("pageinfo2", "Profit & Loss Acct.");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*" %>
<%@page import="java.sql.Date" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon"  type="image/gif" href="echelon1.gif">
        <title>Profit and loss Account</title>
    </head>
    <body>

        <jsp:include flush="true" page="webheader.jsp" ></jsp:include>


        <jsp:include flush="true" page="pageheader.jsp" ></jsp:include>
            <table align="center" bgcolor="white" width="1205" height="360" frame="border">
                <tbody align="left">
                <td align="left" width="210"  valign="top"> <jsp:include page="menu.jsp" flush="true"></jsp:include></td>
            <td align="right" width="210"  valign="top"><div align="center"   style=" overflow-y: scroll;  height: 580px;" >   <jsp:include page="selectprofit.jsp" flush="true" ></jsp:include> </div> </td>

            </tbody>

        </table>

    <jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>
