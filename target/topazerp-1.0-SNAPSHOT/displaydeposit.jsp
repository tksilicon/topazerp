<%
if(session.getAttribute("username") == null){
 response.sendRedirect("index.jsp");
 }
session.setAttribute("pageinfo2", "Bank Deposit Records ");
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
        <title>Bank Deposit</title>
    </head>
    <body>
         <jsp:include flush="true" page="webheader.jsp" ></jsp:include>

             <jsp:include flush="true" page="pageheader.jsp" ></jsp:include>      
        <table align="center" bgcolor="white" width="1205" height="400" frame="border">
            <tbody align="left">
            <td align="left" width="150" valign="top"> <jsp:include page="menu.jsp" flush="true"></jsp:include></td>
            <td align="left" width="210" valign="top">
                 <div align="center"   style=" overflow-y: scroll;  height: 85px;" >
                 <form action="displaydepositsort.jsp" method="post">
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
        <table align="center"   frame="border"  width="720"  height="30" valign="top">

            <TR valign="center" bgcolor="#eeeeee" align="center" height="30">
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"> S/N</FONT></TD>
                 <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Date</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Teller Number</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Depositor's Name</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Amount(=N=)</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Bank</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">From Account</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Void</FONT></TD>

            </TR>
        </table>
                </div>
                <div align="center"   style=" overflow-y: scroll;  height: 480px;" >  <jsp:include page="selectdeposit.jsp" flush="true"></jsp:include> </div>  </td>
            <td align="right" valign="top" bgcolor="#663399" width="120" >
            <jsp:include page="otherreport.jsp" flush="true"></jsp:include>
            </td>
            </tbody>
        </table>
    <jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>