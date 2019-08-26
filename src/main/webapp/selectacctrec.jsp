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
        <style>
            table.rowHover tr:hover{ background-color:  orange; }
            table.rowonClick tr:select{background-color: inherit;}

        </style>
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

        <table align="center" class="rowHover"  dir="LTR"  id="customer"  frame="border"  width="940"  cellspacing="1" cellpadding="0" >

            <TR valign="center" bgcolor="#333366" align="center" height="25">



                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Branch</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Date</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Invoice Id</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Customer</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Grand Total</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Deposit</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Balance</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Staff</FONT></TD>



            </TR>
            <%
                int i = 0;
                DecimalFormat formatter = new DecimalFormat("###,###,###");
                try {

                    SQLconnector sqlcon = new SQLconnector();
                    Connection con = sqlcon.getCon();

                    Statement st = con.createStatement();

                    //ResultSet rs = st.executeQuery("select YEAR(getDate()) from extrainfo ");
                    //String year = "";
                    //if (rs.next()) {
                    //   year = rs.getString(1);
                    //}
                    //out.print("C.R.= " + year);


                    String sql = "select branch, date, invoiceid, custname, grandtotal, amtpaid, balance, staff  from ourinvoice where balance > 0";

                    ResultSet set = st.executeQuery(sql);

            %>
            <%
                while (set.next()) {
            %>

            <TR bgcolor="#eeeeee">

                <TD align="left" height="25"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(1)%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(2)%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(3)%></FONT></TD>
                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(4)%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat(5))%>.00</FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat(6))%>.00</FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat(7))%>.00</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(8)%></FONT></TD>

            </TR>
            <tr>

            </tr>
            <%
                        i++;
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
            <form action="mychart.jsp" method="post">
                <td align="left"> <INPUT NAME="accountrec" TYPE="submit" VALUE="Create Bar Chart" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                         />
                </td>
            </form>
            <td><font color="blue"> Total Records = <%=i%></font></td>
            <form action="insert.jsp" method="post">
                <td align="right"> <INPUT NAME="export12" TYPE="submit" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                </td>
            </form>
        </tr>
    </table>
</body>
</html>
