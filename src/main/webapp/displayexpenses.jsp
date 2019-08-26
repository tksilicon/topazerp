<%
            if (session.getAttribute("username") == null) {
                response.sendRedirect("index.jsp");
            }
            session.setAttribute("pageinfo2", "Expenses Records");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="newpackage.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*" %>
<%@page  import="java.text.DecimalFormat" %>
<%@page import="Classespack.*" %>
<%@page import="java.lang.NullPointerException" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon"  type="image/gif" href="echelon1.gif">
        <title>Expenses</title>
    </head>
    <body>
        <div align="center"  style="width: 1215px;">
            <jsp:include flush="true" page="webheader.jsp"></jsp:include>
            <jsp:include flush="true" page="pageheader.jsp"></jsp:include>
            <table align="center" bgcolor="white" width="1205" height="400" frame="border">
                <tbody align="left">
                <td align="left" width="210" valign="top"> <jsp:include page="menu.jsp" flush="true"></jsp:include></td>
                <td align="right" width="300" valign="top">

                    <div align="center"   style=" overflow-y: scroll;  height: 50px;" >
                        <form action="displayexpensessort.jsp" method="post">
                            <table width="350" align="center"  style=" margin-bottom: 10px; margin-top: 10px;" >
                                <tr>
                                    <td>From:</td>
                                    <td><input type="date" size="15" name="fromdate" value="<%=session.getAttribute("mynewdate")%>"></td>
                                <td width="20"></td>
                                <td>To:</td>
                                <td><input type="date" size="15" name="todate" value="<%=session.getAttribute("mynewdate")%>"></td>
                                <td><input type="submit" name="invoicesort" value="View"></td>
                            </tr>
                        </table>
                    </form>
                    </div>
                    <div align="center"   style=" overflow-y: scroll;  height: 480px;" >   <jsp:include page="selectexpenses.jsp" flush="true" ></jsp:include> </div> </td>
                    <%--
                          <p align="center"> <jsp:include page="Movie2.html" flush="true"></jsp:include></p>
                    --%>
                </tbody>
            </table>
            <jsp:include page="footer.jsp" flush="true"></jsp:include>
        </div>
    </body>
</html>