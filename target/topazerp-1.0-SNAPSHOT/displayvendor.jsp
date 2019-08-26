<%
if(session.getAttribute("username") == null){
 response.sendRedirect("index.jsp");
 }
session.setAttribute("pageinfo2", "All Vendors");
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
        <title>Vendor Records</title>
    </head>
    <body>

         <jsp:include flush="true" page="webheader.jsp" ></jsp:include>


             <jsp:include flush="true" page="pageheader.jsp" ></jsp:include>

        <table align="center" bgcolor="white" width="1205" height="360" frame="border">
            <tbody align="left">
            <td align="left" width="210"  valign="top"> <jsp:include page="menu.jsp" flush="true"></jsp:include></td>
            <td align="right" width="210"  valign="top">
                <div align="center"   style=" overflow-y: scroll; width: 950px;  height: 40px; " >
                <table align="center" dir="LTR"   frame="border"  width="900"  height="30" valign="top">

            <TR valign="center" bgcolor="#eeeeee" align="center" height="30">

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Reg.Date</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Reg.No</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Name</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Address</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">State</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Country</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Gender</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Phone No</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">E_Mail</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Type</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Del</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">UD</FONT></TD>

            </TR>
                 </table>
                </div>
                <div align="center"   style=" overflow-y: scroll; width: 950px;  height: 500px; " >
                    <jsp:include page="selectvendor.jsp" flush="true" ></jsp:include> </div> </td>

            </tbody>

        </table>

    <jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>
