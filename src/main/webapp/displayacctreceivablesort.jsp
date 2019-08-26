<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }
    session.setAttribute("pageinfo2", "Acct. Receivable");
%>

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
        <title>Account Receivables</title>
        <style>
            table.Hover tr:hover{ background-color:  orange; }
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
        <jsp:include flush="true" page="webheader.jsp" ></jsp:include>
        <jsp:include flush="true" page="pageheader.jsp" ></jsp:include>
            <table align="center" bgcolor="white" width="1205" height="360" frame="border">

                <tbody align="left">

                <td align="left" width="210" valign="top"> <jsp:include page="menu.jsp" flush="true"></jsp:include></td>
                <td align="right" width="300"  valign="top">
                    <div align="center"   style=" overflow-y: scroll;  height: 85px;" >

                        <form action="displayacctreceivablesort.jsp" method="post">
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

                                <table align="center"   frame="border"  width="940"  height="30" valign="top" cellpadding="1" cellspacing="1" >

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
                <div align="center"   style=" overflow-y: scroll;  height: 500px;">

                    <table align="center" class="Hover"  dir="LTR"  id="customer"  frame="border"  width="940"  height="100" valign="top" cellspacing="1" cellpadding="1" >

                        <TR valign="center" bgcolor="#333366" align="center" height="30">

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
                            if (request.getParameter("invoicesort") != null) {

                                String value = request.getParameter("fromdate");
                                String d1 = String.valueOf(value);

                                String value2 = request.getParameter("todate");
                                String d2 = String.valueOf(value2);
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


                                    String sql = "select branch, date, invoiceid, custname, grandtotal, amtpaid, balance, staff  from ourinvoice where balance > 0 and date between '" + d1 + "' and '" + d2 + "'";

                                    ResultSet set = st.executeQuery(sql);

                        %>
                        <%
                            while (set.next()) {
                        %>

                        <TR bgcolor="#eeeeee">

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(1)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(2)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(3)%></FONT></TD>
                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(4)%></FONT></TD>

                            <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat(5))%>.00</FONT></TD>

                            <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat(6))%>.00</FONT></TD>

                            <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat(7))%>.00</FONT></TD>

                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(8)%></FONT></TD>

                        </TR>
                        <tr>

                        </tr>
                        <%
                                    i++;
                                }
                            con.close();
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
                        <%
                            }
                        %>
                    </table>


                </div> </td>

            <%--
          <p align="center"> <jsp:include page="Movie2.html" flush="true"></jsp:include></p>
            --%>

        </tbody>

    </table>

    <jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>
