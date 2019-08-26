<%
if(session.getAttribute("username") == null){
 response.sendRedirect("index.jsp");
 }
session.setAttribute("pageinfo2", "Payment Records");
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
        <title>Payment Reports</title>
    </head>
    <body>

         <jsp:include flush="true" page="webheader.jsp" ></jsp:include>


             <jsp:include flush="true" page="pageheader.jsp" ></jsp:include>
        <table align="center" bgcolor="white" width="1205" height="400" frame="border">



            <tbody align="left">


            <td align="left" width="210" valign="top"> <jsp:include page="menu.jsp" flush="true"></jsp:include></td>
            <td align="right" width="300" valign="top">
                <div align="center"   style=" overflow-y: scroll;  height: 85px;" >
                    <jsp:include page="selectsortpay.jsp"></jsp:include>
                    <table align="center" frame="border"  width="940"  height="30" valign="top">

                        <TR valign="center" bgcolor="#eeeee" align="center" height="30">

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">S/N</FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Branch</FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Expense Date</FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">From Account</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Vendor/Receiver</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Address</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Phone No</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Pev. Bal.(=N=)</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Description</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Amt Paid(=N=)</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Balance(=N=)</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Paid By</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Delete</FONT></TD>
                        </TR>
                    </table>
                </div>
                <div align="center"   style=" overflow-y: scroll;  height: 480px;" >  <jsp:include page="selectpaymentdate.jsp" flush="true" ></jsp:include> </div> </td>
             
                <%--
              <p align="center"> <jsp:include page="Movie2.html" flush="true"></jsp:include></p>
                --%>
            
        </tbody>

    </table>

    <jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>
