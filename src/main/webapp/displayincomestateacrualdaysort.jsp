
<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }
    //session.setAttribute("pageinfo2", "Income Statement");
    session.setAttribute("pageinfo2", "Income Statement Acrual Acct");
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="newpackage.*" %>
<%@page import="Classespack.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*" %>
<%@page import="java.text.DecimalFormat" %>
<%@page import="java.lang.NullPointerException" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon"  type="image/gif" href="echelon1.gif">
        <title>Income Statement</title>
        <script>
            function printDiv()
            {
                var divToPrint = document.getElementById('customer');
                newWin = window.open("");
                newWin.document.write(divToPrint.outerHTML);
                newWin.print();
                newWin.close();
            }

            function deleteRecord(id) {
                var f = document.form;
                f.method = "post";
                f.action = 'delete.jsp?id=' + id;
                f.submit().deleteRow(index);
            }
        </script>
        <script type="text/javascript">
            function generateexcel() {
                var table = document.getElementById('customer');
                var html = table.outerHTML;
                window.open('data:application/vnd.ms-excel,' + encodeURIComponent(html));
            }
        </script>
        <style>
            table.Hover tr:hover{ background-color:  orange; }
            table.Hover TR:hover{ background-color:  orange; }

        </style>
    </head>
    <body>

        <jsp:include flush="true" page="webheader.jsp" ></jsp:include>

        <jsp:include flush="true" page="pageheader.jsp" ></jsp:include>

            <table align="center" bgcolor="white" width="1205" height="360" frame="border">

                <tbody align="left">

                <td align="left" width="210" valign="top"> <jsp:include page="menu.jsp" flush="true"></jsp:include></td>
                <td align="right" width="300"  valign="top">
                    <div align="center"   style=" overflow-y: scroll;  height:90px;" >


                        <form action="displayincomestateacrualdaysort.jsp" method="post">
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

                    <%
                        DecimalFormat formatter = new DecimalFormat("###,###,###");
                    %>

                    <table align="center" dir="LTR"  frame="border"  width="940"  cellspacing="1"  >

                        <TR  bgcolor="#eeeee" align="center" height="30">

                            <TD align="center" width="50"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Date</B></FONT></TD>
                            
                            <TD align="center"  width="50"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Invoice No</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Branch</B></FONT></TD>
                            <TD align="center"  width="100"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Cust Name</B></FONT></TD>
                            <TD align="center"  width="45"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Cust. Id</B></FONT></TD>

                            <TD align="center"  width = "50" ><FONT FACE="tahoma" SIZE="2" color="blue"><B>CustType</B></FONT></TD>

                            <TD align="center"  width="80"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Tag No</B></FONT></TD>

                            <TD align="center"  width="30"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Total Qty</B></FONT></TD>

                            <TD align="center"  width="50"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Discount</B></FONT></TD>

                            <TD align="center"  width="55"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Type</B></FONT></TD>

                            <TD align="center"  width="56"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Grand Total</B></FONT></TD>

                            <TD align="center"  width="55"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Deposit</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Balance</B></FONT></TD>

                            <TD align="center"  width="60"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Ready</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Staff</B></FONT></TD>

                        </TR>
                    </table>
                </div>

                <div align="center"   style=" overflow-y: scroll;  height: 480px;" >
                    <table align="center"  class="alt1"  frame="border"  id="customer" width="940"   cellpadding="1" cellspacing="1">
                        <TR valign="center" bgcolor="#333366" align="center" height="30">

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Date</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Invoice No</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Branch</B></FONT></TD>
                            <TD align="center"  width="100"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Cust Name</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Cust. Id</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>CustType</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Tag No</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Total Qty</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Discount</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Type</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Grand Total</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Deposit</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Balance</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Ready</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Staff</B></FONT></TD>
                        </TR>
                        <%
                            int totalrecords = 0;

                            //if (request.getParameter("incomename") != null) {
                            // String value = request.getParameter("date");
                            // String date = String.valueOf(value);
                            String date = (String) session.getAttribute("mynewdate");
                            if (request.getParameter("invoicesort") != null) {

                                String value = request.getParameter("fromdate");
                                String d1 = String.valueOf(value);

                                String value2 = request.getParameter("todate");
                                String d2 = String.valueOf(value2);

                                try {
                                    SQLconnector sqlcon = new SQLconnector();
                                    Connection con = sqlcon.getCon();

                                    Statement st = con.createStatement();
                                    //ResultSet rs = st.executeQuery("select YEAR(getDate()) from invid ");
                                    // String year = "";
                                    //if (rs.next()) {
                                    //    year = rs.getString(1);
                                    //}
                                    //out.print("C.I.= "+year);
                                    ResultSet rs2 = st.executeQuery("select count(*) from ourinvoice where date between '"+d1+"' and '"+d2+"'");
                                    if (rs2.next()) {
                                        totalrecords = rs2.getInt(1);
                                    }
                                    String sql = "select * from ourinvoice where date between '"+d1+"' and '"+d2+"'";

                                    ResultSet set = st.executeQuery(sql);

                        %>
                        <%
                            while (set.next()) {
                        %>

                        <TR bgcolor="#eeeeee">

                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("date")%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><a href="selectincomeitemwtdt.jsp?invidd=<%=set.getString("invoiceid")%>"><%=set.getString("invoiceid")%></a></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("branch")%></FONT></TD>

                            <TD align="left" width="100"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("custname")%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("custid")%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= set.getString("custtype")%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("tagno")%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getInt("totalqty")%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat("discount"))%>.00</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("type")%></FONT></TD>

                            <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat("grandtotal"))%>.00</FONT></TD>

                            <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat("amtpaid"))%>.00</FONT></TD>

                            <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat("balance"))%>.00</FONT></TD>

                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("ready")%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("staff")%></FONT></TD>

                        </TR>

                        <%
                                }
                            con.close();
                            } catch (NullPointerException e) {
                                out.print(e);
                            }

                        %>
                    </table>

                    <table align="center" dir="LTR"   frame="border"  width="940"  height="30" valign="top">

                        <tr>

                            <td align="left"> <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;"
                                                     ONCLICK="printDiv()" />
                            </td>


                            <td align="left" width="600"><font color="blue">Daily Income on  <%=date%> =
                                    N
                                    <%
                                        AcctBal bal = new AcctBal();
                                        out.print(formatter.format(bal.totalinvoiceday(d1, d2)));
                                    %>
                                    .00
                                </font>
                            </td>
                            <td align="right"> <INPUT NAME="export" TYPE="button" VALUE="Export to Excel" onclick="generateexcel();" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                            </td>
                        </tr>
                        <tr>
                            <td width="400" align="right"><font color="blue">&nbsp;(Note: Package Customers are calculated as item units) </font> </td>

                            <td align="right"><font color="blue">Total Records = <%=totalrecords%></font></td>

                        </tr>
                        <%
                            }
                        %>
                    </table>
                </div>
            </td>

            <%--
          <p align="center"> <jsp:include page="Movie2.html" flush="true"></jsp:include></p>
            --%>

        </tbody>

    </table>

    <jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>