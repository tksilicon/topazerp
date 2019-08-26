<%
            if (session.getAttribute("username") == null) {
                response.sendRedirect("index.jsp");
            }
            session.setAttribute("pageinfo2", "Invoice Verification");
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
        <title>Invoice</title>
    </head>
    <body>

        <jsp:include flush="true" page="webheader.jsp" ></jsp:include>


        <jsp:include flush="true" page="pageheader.jsp" ></jsp:include>

        <table align="center" bgcolor="white" width="1205" height="400" frame="border">

            <tbody align="left">
            <td align="left" width="210" valign="top"> <jsp:include page="menu.jsp" flush="true"></jsp:include></td>
            <td align="right" width="300" valign="top">
                <div align="center"   style=" overflow-y: scroll;  height: 85px;" >

                     <form action="displayinvoicesearch.jsp" method="post">

                        <table align="center" width="470" height="50">
                            <tr>
                                <td><font color="grey" size="3" face="arial">Search invoice</font> </td>
                                <td>

                                        <input type="text" name="invoicenumber" value="" size="40">

                                </td>
                                <td><input type="submit" name="invoicesearch" value="Search" /></td>


                            </tr>

                        </table>
                    </form>
                    <table align="center"    frame="border"   width="900"  height="30" valign="top">
                          <TR valign="center" bgcolor="#eeeeee" align="center" height="30">

                            <TD align="center" width="60"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Date</B></FONT></TD>

                            <TD align="center" width="70"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Invoice No</B></FONT></TD>
                            <TD align="center" width="50"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Branch</B></FONT></TD>
                            <TD align="center" width="150"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Cust Name</B></FONT></TD>


                            <TD align="center" width="60"><FONT FACE="tahoma" SIZE="2" color="blue"><B>CustType</B></FONT></TD>

                            <TD align="center" width="80"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Tag. No.</B></FONT></TD>

                            <TD align="center" width="30"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Total Qty</B></FONT></TD>

                            <TD align="center" width="50"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Grand Total</B></FONT></TD>

                            <TD align="center" width="50"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Deposit</B></FONT></TD>

                            <TD align="center" width="50"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Balance</B></FONT></TD>


                            <TD align="center" width="50" ><FONT FACE="tahoma" SIZE="2" color="blue"><B>Staff</B></FONT></TD>

                            <TD align="center" width="50"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Update</B></FONT></TD>
                            <TD align="center" width="50" ><FONT FACE="tahoma" SIZE="2" color="blue"><B>Status</B></FONT></TD>
                            <TD align="center" width="50"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Check</B></FONT></TD>

                        </TR>
                    </table>
                </div>
                <div align="center"   style=" overflow-y: scroll;  height: 500px;" >
                    <jsp:include page="selectnvoicesearch.jsp" flush="true" ></jsp:include> </div> </td>
                    <%--
                          <p align="center"> <jsp:include page="Movie2.html" flush="true"></jsp:include></p>
                    --%>

        </tbody>

    </table>

    <jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>
