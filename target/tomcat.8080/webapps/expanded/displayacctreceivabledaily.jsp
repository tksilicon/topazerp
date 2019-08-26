<%
if(session.getAttribute("username") == null){
 response.sendRedirect("index.jsp");
 }
session.setAttribute("pageinfo2", "Daily Acct. Rec.");
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
        <title>Account Receivable</title>
    </head>
    <body>

         <jsp:include flush="true" page="webheader.jsp" ></jsp:include>


             
         <jsp:include flush="true" page="pageheader.jsp" ></jsp:include>

        <table align="center" bgcolor="white" width="1205" height="360" frame="border">



            <tbody align="left">


            <td align="left" width="210" valign="top"> <jsp:include page="menu.jsp" flush="true"></jsp:include></td>
            <td align="right" width="300"  valign="top">
                <div align="center"   style=" overflow-y: scroll;  height: 80px;" >
                     <jsp:include page="selectsortrec.jsp"></jsp:include>
                     <table align="center"   frame="border"  width="940"  height="30" valign="top"  cellpadding="1" cellspacing="1">

                        <TR valign="center" bgcolor="#eeeeee" align="center" height="30">

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Branch</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Date</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Invoice Id</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Customer</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Grand Total</FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Deposit</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Balance</FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Staff</FONT></TD>

                        </TR>
                    </table>
                </div>
                <div align="center"   style=" overflow-y: scroll;  height: 480px;" >   <jsp:include page="selectacctrecdaily.jsp" flush="true" ></jsp:include> </div> </td>

            <%--
          <p align="center"> <jsp:include page="Movie2.html" flush="true"></jsp:include></p>
            --%>

        </tbody>

    </table>

    <jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>
