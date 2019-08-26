<%
            if (session.getAttribute("username") == null) {
                response.sendRedirect("index.jsp");
            }
%>

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
<%@page  import="java.text.DecimalFormat" %>
<%@page import="java.lang.NullPointerException" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <script>
            function printDiv()
            {
                var divToPrint=document.getElementById('customer');
                newWin= window.open("");
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

        <form action="displayincomestatesort.jsp" method="post">
                            <table width="350" align="center"  style=" margin-bottom: 10px; margin-top: 10px;" >
                                <tr>
                                    <td>From:</td>
                                    <td><input type="text" size="15" name="fromdate" value="<%=session.getAttribute("mynewdate")%>"></td>
                                <td width="20"></td>
                                <td>To:</td>
                                <td><input type="text" size="15" name="todate" value="<%=session.getAttribute("mynewdate")%>"></td>
                                <td><input type="submit" name="invoicesort" value="View"></td>
                            </tr>
                        </table>
                    </form>

        <table align="center" dir="LTR"  id="customer" class="rowHover"  frame="border"  width="940"  height="100" valign="top" cellspacing="1">

            <TR valign="center" bgcolor="#333366" align="center" height="30">

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Branch</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Date</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Cust. Name</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Transaction Id</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Amount(=N=)</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Staff</FONT></TD>
                 <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">PMT Type</FONT></TD>

            </TR>
            <%
                        int i = 0;

                        DecimalFormat formatter = new DecimalFormat("###,###,###");
                        try {
                            String type1 = "PickUp";
                            String type2 = "DropOff";
                            SQLconnector sqlcon = new SQLconnector();
                            Connection con = sqlcon.getCon();

                            Statement st = con.createStatement();
                            //ResultSet rs = st.executeQuery("select YEAR(getDate()) from extrainfo ");
                            //String year = "";
                            //if (rs.next()) {
                             //   year = rs.getString(1);
                            //}
                            //out.print("C.I.= " + year);

                            String sql = "SELECT branch, Date, custname,  invoiceid, amtpaid, staff,  '" + type2 + "' from ourinvoice where amtpaid >0 UNION ALL SELECT branch, Date,  custname, invoiceid, amtpaid, staff,  '" + type1 + "'  from pickup where amtpaid > 0";

                            ResultSet set = st.executeQuery(sql);

            %>
            <%

                                        while (set.next()) {
            %>
            <TR bgcolor="#eeeeee">

                <TD align="center" height="25"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(1)%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(2)%></FONT></TD>

                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(3)%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(4)%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat(5))%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(6)%></FONT></TD>
                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"> <%=set.getString(7)%></FONT></TD>

            </TR>

            <%

                                ++i;
                            }

                        } catch (SQLException e) {
                            out.print(e);
                        }
            %>

        </table>
        <table align="center" dir="LTR"   frame="border"  width="940"  height="30" valign="top">

            <tr align="left" width="100">
            <form>
                <td align="left"> <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                         ONCLICK="printDiv()" />
                </td>
            </form>
            <td><font color="blue"> Total Records = <%=i%></font></td>

            <form action="insert.jsp" method="post">
                <td align="right"> <INPUT NAME="export11" TYPE="submit" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                </td>
            </form>
        </tr>
    </table>
</body>
</html>
