<%-- 
    Document   : insert
    Created on : Aug 10, 2012, 11:06:27 AM
    Author     : user
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
        <title>JSP Page</title>

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
        <style>
            table.rowHover tr:hover{ background-color:  orange; }
            table.rowHover TR:hover{ background-color:  orange; }

        </style>
    </head>
    <body>
        <table align="center"  class="alt1"  id="customer"  frame="border"  width="900" cellspacing="1">

            <TR valign="center" bgcolor="#333366" align="center" height="30">

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Branch</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Date</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">PickUp Id</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Custname</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Invoice Id</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Custtype</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Previous Bal.</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Descriptions</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Amount Paid</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Balance</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Status</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Staff</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Reason</FONT></TD>
            </TR>
            <%
                try {

                    SQLconnector sqlcon = new SQLconnector();
                    Connection con = sqlcon.getCon();

                    Statement st = con.createStatement();

                    String sql = "select * from pickuparch";

                    ResultSet set = st.executeQuery(sql);
            %>
            <%
                while (set.next()) {
            %>
            <TR bgcolor="#eeeeee">
                <TD align="center" height="25"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= set.getString("branch")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= set.getString("date")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= set.getInt("pickupid")%></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= set.getString("custname")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= set.getString("invoiceid")%></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= set.getString("custtype")%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><a href=""><%= set.getFloat("prevbal")%>0</a></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=  set.getString("description")%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= set.getFloat("amtpaid")%>0</FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getFloat("balance")%>0</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("status")%></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("staff")%></FONT></TD>
                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("reason")%></FONT></TD>

            </TR>
           
            <%
                    }
                    con.close();
                } catch (SQLException e) {
                    out.print(e);
                }
            %>
        </table>
        <table align="center" dir="LTR"  id="customer"  frame="border"  width="900"  height="45" valign="top">

            <tr align="left" width="100">
            <form>
                <td align="left"> <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                         ONCLICK="printDiv()" />
                </td>
            </form>

            <form>
                <td align="right"> <INPUT NAME="export" TYPE="button" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                </td>
            </form>
        </tr>
    </table>

</body>
</html>
