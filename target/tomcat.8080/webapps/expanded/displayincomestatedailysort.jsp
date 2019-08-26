<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }
    session.setAttribute("pageinfo2", "Income Statement");
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
        <script type="text/javascript">
            function printDiv()
            {
                var divToPrint = document.getElementById('income');
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
                var table = document.getElementById('income');
                var html = table.outerHTML;
                window.open('data:application/vnd.ms-excel,' + encodeURIComponent(html));
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
                    <div align="center"   style=" overflow-y: scroll;  height:85px;">

                        <form action="displayincomestatedailysort.jsp" method="post">
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

                    <table align="center" dir="LTR"  frame="border"  width="940"  height="30" valign="top" cellpadding="1" cellspacing="1">

                        <TR valign="center" bgcolor="#eeeee" align="center" height="30">

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Branch</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Date</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Cust. Name</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Invoice Id</FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Cust.Type</FONT></TD>


                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Amount(=N=)</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Staff</FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">PMT Type</FONT></TD>

                        </TR>
                    </table>
                </div>
                <%
                    DecimalFormat formatter = new DecimalFormat("###,###,###");
                    String rd = "";
                    if (request.getParameter("invoicesort") != null) {

                        String value = request.getParameter("fromdate");
                        String d1 = String.valueOf(value);

                        String value2 = request.getParameter("todate");
                        String d2 = String.valueOf(value2);

                        try {
                            SQLconnector sqlcon = new SQLconnector();
                            Connection con = sqlcon.getCon();

                            Statement st = con.createStatement();

                            ResultSet rs = st.executeQuery("SELECT  date(now()) from admin");


                            while (rs.next()) {

                                rd = rs.getString(1);
                            }
                            con.close();
                        } catch (Exception e) {
                        }

                %>
                <div align="center"   style=" overflow-y: scroll;  height: 480px;" >


                    <table align="center"  class="alt1" id="income"  frame="border"  width="940" cellpadding="1" cellspacing="1">

                        <TR  bgcolor="#333366" align="center" height="30">

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Branch</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Date</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Cust. Name</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Invoice Id</FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Cust.Type</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Amount(=N=)</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Staff</FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">PMT Type</FONT></TD>

                        </TR>
                        <%
                            try {
                                String type1 = "PickUp";
                                String type2 = "DropOff";

                                SQLconnector sqlcon = new SQLconnector();

                                Connection con = sqlcon.getCon();

                                Statement st = con.createStatement();

                                String sql = "SELECT branch, date, custname,  invoiceid, amtpaid, staff, '" + type2 + "' from ourinvoice where amtpaid >0 AND custtype ='regular' AND date between '" + d1 + "' and '" + d2 + "'  UNION ALL SELECT branch, date, custname, invoiceid, amtpaid, staff, '" + type1 + "'  from pickup where amtpaid > 0 AND custtype ='regular' AND date between '" + d1 + "' and '" + d2 + "'";

                                //String sql = " SELECT branch, Date,  invoiceid, amtpaid from ourinvoice where amtpaid >0 AND  branch = '"+session.getAttribute("mybranch")+" order by invoiceid desc' UNION ALL SELECT branch, Date, invoiceid, amtpaid  from pickup where amtpaid >0 AND  branch = '"+session.getAttribute("mybranch")+"' order by invoiceid desc ";

                                ResultSet set = st.executeQuery(sql);
                        %>
                        <%
                            while (set.next()) {
                        %>
                        <TR bgcolor="#eeeeee">

                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("branch")%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("date")%></FONT></TD>

                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("custname")%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("invoiceid")%></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444">Regular</FONT></TD>

                            <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat("amtpaid"))%></FONT></TD>

                            <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("staff")%></FONT></TD>
                            <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString(7)%></FONT></TD>


                        </TR>
                        
                        <%
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


                        <td align="right"> <INPUT NAME="export11" TYPE="button" onclick="generateexcel();" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                        </td>
                        </tr>
                    </table>
                    <table align="center" dir="LTR"   frame="border"  width="940"  height="30" valign="top">

                        <tr align="left" width="100">
                            <td>
                                <%

                                    AcctBal bal = new AcctBal();
                                    double total1 = bal.totalincomesort1(d1, d2);
                                    double total2 = bal.totalincomesort2(d1, d2);
                                    double total3 = bal.totalincomesort3(d1, d2);
                                    double gtotal = total1 + total2;
                                    double gtotal2 = gtotal + total3;

                                %>

                                <font color="#333366" face="tohoma" size="3"> Total Income between <%=d1%> and <%=d2%> = N<%out.print(formatter.format(gtotal));%>.00</font>
                        </tr>
                        <tr>
                            <td>
                                <font color="#333366" face="tohoma" size="3">Amount Paid by Package Customers = <u>N<%out.print(formatter.format(total3));%>.00 </u></font>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <font color="#333366" face="tohoma" size="3">Total Daily Income between <%=d1%> and <%=d2%>  = <u><span style="border-bottom: 1px double #000;"><b> N<%out.print(formatter.format(gtotal2));%>.00</b> </span> </u> (Cash Received)</font>
                            </td>
                        </tr>
                        <%}%>
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