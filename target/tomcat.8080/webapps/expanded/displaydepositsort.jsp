<%
    if (session.getAttribute("username") == null) {
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
<%@page import="newpackage.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*" %>
<%@page import="java.lang.NullPointerException" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon"  type="image/gif" href="echelon1.gif">
        <title>Bank Deposit</title>

        <script>
            function printDiv()
            {
                var divToPrint = document.getElementById('customer');
                newWin = window.open("");
                newWin.document.write(divToPrint.outerHTML);
                newWin.print();
                newWin.close();
            }
        </script>
        
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
                <div align="center"   style=" overflow-y: scroll;  height: 480px;" >

                    <table align="center"  class="alt1"  frame="border"  id="customer" width="720"  height="50" valign="top">

                        <TR valign="center" bgcolor="#333366" align="center" height="30">
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"> S/N</FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Date</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Teller Number</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Depositor's Name</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Amount(=N=)</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Bank</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">From Account</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Void</FONT></TD>

                        </TR>
                        <%
                            if (request.getParameter("invoicesort") != null) {

                                String value = request.getParameter("fromdate");
                                String d1 = String.valueOf(value);

                                String value2 = request.getParameter("todate");
                                String d2 = String.valueOf(value2);
                                try {

                                    SQLconnector sqlcon = new SQLconnector();
                                    Connection con = sqlcon.getCon();

                                    Statement st = con.createStatement();

                                    String sql = "select * from deposit where date between '" + d1 + "' and '" + d2 + "'";

                                    ResultSet set = st.executeQuery(sql);

                        %>
                        <%
                            while (set.next()) {
                        %>

                        <TR bgcolor="#eeeeee">
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getInt("id")%></FONT></TD>

                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("date")%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= set.getString("tellerno")%></FONT></TD>

                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("depositor")%></FONT></TD>

                            <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getFloat("amount") + "0"%></FONT></TD>

                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("bank")%></FONT></TD>

                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("account")%></FONT></TD>

                            <TD align="center"><a href="deleting.jsp?deletedeposit=<%=set.getInt("id")%>"><input type="button" name="Delete" value="Void" style="background-color:#ff0000;font-weight:bold; font-size: x-small; color:#ffffff;" onclick="javascript:return confirm('Are you sure you want to void this deposit ?')"  ></a></td>

                        </TR>
                        <%
                                    }
                                    con.close();
                                } catch (SQLException e) {
                                    out.print(e);
                                }
                            }

                        %>
                    </table>

                    <table align="center" dir="LTR"   frame="border"  width="720"  height="30" valign="top">

                        <tr align="left" width="100">
                        <form>
                            <td align="left"> <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                                     ONCLICK="printDiv()" />
                            </td>
                        </form>

                        <form action="insert.jsp" method="post">
                            <td align="right"> <INPUT NAME="export4" TYPE="submit" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                            </td>
                        </form>
                        </tr>
                    </table>

                </div>  </td>
            <td align="right" valign="top" bgcolor="#663399" width="120" >
                <jsp:include page="otherreport.jsp" flush="true"></jsp:include>
                </td>
            </tbody>
        </table>
    <jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>
