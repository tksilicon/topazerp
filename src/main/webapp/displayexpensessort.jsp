<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }
    session.setAttribute("pageinfo2", "Expenses Records");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="newpackage.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*" %>
<%@page  import="java.text.DecimalFormat" %>
<%@page import="Classespack.*" %>
<%@page import="java.lang.NullPointerException" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon"  type="image/gif" href="echelon1.gif">
        <title>Expenses</title>
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
            table.Hover tr:hover{ background-color:  orange; }
            table.Hover TR:hover{ background-color:  orange; }

        </style>
    </head>
    <body>
        <div align="center"  style="width: 1215px;">
            <jsp:include flush="true" page="webheader.jsp"></jsp:include>
            <jsp:include flush="true" page="pageheader.jsp"></jsp:include>
                <table align="center" bgcolor="white" width="1205" height="400" frame="border">
                    <tbody align="left">
                    <td align="left" width="210" valign="top"> <jsp:include page="menu.jsp" flush="true"></jsp:include></td>
                    <td align="right" width="300" valign="top">

                        <div align="center"   style=" overflow-y: scroll;  height: 50px;" >
                            <form action="displayexpensessort.jsp" method="post">
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
                    </div>
                    <div align="center"   style=" overflow-y: scroll;  height: 480px;" >
                        <table align="center" dir="LTR" class="alt1"  id="customer"  frame="border"  width="940"  height="100" valign="top" cellspacing="1">

                            <TR valign="center" bgcolor="#333366" align="center" height="30">

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">S/N</FONT></TD>
                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Branch</FONT></TD>
                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Expense Date</FONT></TD>
                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">From Account</FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Receiver</FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Address</FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Phone No</FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Total Amt(=N=)</FONT></TD>

                                <TD align="center" width="20"><FONT FACE="tahoma" SIZE="2" color="blue">Description</FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Amt Paid(=N=)</FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Balance(=N=)</FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Approved By</FONT></TD>
                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Expense Type</FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Delete</FONT></TD>
                            </TR>
                            <%
                                int totalrecords = 0;
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
                                        //ResultSet rs = st.executeQuery("select YEAR(getDate()) from expenses ");

                                        //String year = "";
                                        //if (rs.next()) {
                                        //   year = rs.getString(1);
                                        //}
                                        ResultSet rs2 = st.executeQuery("select count(*) from expenses where expense_date between '" + d1 + "' and '" + d2 + "'");
                                        if (rs2.next()) {
                                            totalrecords = rs2.getInt(1);
                                        }

                                        String sql = "select id, branch, expense_date, accountname, receiver, address, phoneno, total_amount, description, amountpaid, balance, approved_by, type from expenses where expense_date between '" + d1 + "' and '" + d2 + "'";


                                        ResultSet set = st.executeQuery(sql);

                            %>
                            <%
                                while (set.next()) {
                            %>
                            <TR bgcolor="#eeeeee">
                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getInt(1)%></FONT></TD>

                                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString(2)%></FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><a href=""><%=set.getString(3)%></a></FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><a href=""><%=set.getString(4)%></a></FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString(5)%></FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString(6)%></FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString(7)%></FONT></TD>

                                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat(8))%></FONT></TD>

                                <TD align="center" width="20"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString(9)%></FONT></TD>

                                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat(10))%></FONT></TD>

                                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat(11))%></FONT></TD>

                                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString(12)%></FONT></TD>

                                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><a href="displayexpensetype.jsp?type=<%=set.getString("type")%>"><%=set.getString(13)%></a></FONT></TD>

                                <td align="center"><a href="deleting.jsp?deleteexpenses=<%=set.getInt("id")%>"><input type="button" name="Delete" value="Void" onclick="javascript:return confirm('You are about to delete this expenses')" style="background-color:#ff0000;font-weight:bold; font-size: x-small; color:#ffffff;"  ></a></td>
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
                            <td>Total Records = <%=totalrecords%></td>
                            <form action="insert.jsp" method="post">
                                <td align="right"> <INPUT NAME="export3" TYPE="submit" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                                </td>
                            </form>


                            <form action="displayexpenses.jsp" method="post">
                                <td align="right"> <INPUT NAME="export3" TYPE="submit" VALUE="View all Expenses" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                                </td>
                            </form>
                            </tr>
                        </table>

                        <table align="center" dir="LTR"   frame="border"  width="940"  height="30" valign="top">
                            <tr align="center" width="100">
                                <td>
                                    <%
                                        AcctBal bal = new AcctBal();
                                        double total1 = bal.totalexpensemonth(value, value2);
                                    %>
                                    <font color="blue" face="tohoma" size="3"> Total Expenses between <%= value%> and <%= value2%> = &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  N<%out.print(formatter.format(total1));%>.00</font>
                            </tr>
                        </table>
                    </div> </td>
                    <%--
                          <p align="center"> <jsp:include page="Movie2.html" flush="true"></jsp:include></p>
                    --%>
                </tbody>
                <%
                    }
                %>
            </table>
            <jsp:include page="footer.jsp" flush="true"></jsp:include>
        </div>
    </body>
</html>