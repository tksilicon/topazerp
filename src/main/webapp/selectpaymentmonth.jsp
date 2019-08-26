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

      

        <%
                    String dt = "";
                    String regno = "";
                    String categoryid = "";
                    String name = "";
                    String description = "";
                    String price = "";
                    String state = "";
                    String country = "";
                    String dob = "";
                    String gender = "";
                    String phone = "";
        %>


        <table align="center" dir="LTR"  id="customer" class="rowHover"  frame="border"  width="940"  height="100" cellspacing="1">

            <TR valign="center" bgcolor="#333366" align="center" height="30">

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
            <%
                        int i = 0;
                        DecimalFormat formatter = new DecimalFormat("###,###,###");
                        if (request.getParameter("invoicebtw") != null) {
                            String value = request.getParameter("month");
                            String kw = String.valueOf(value);

                            String value2 = request.getParameter("year");
                            String kw2 = String.valueOf(value2);

                            try {

                                SQLconnector sqlcon = new SQLconnector();
                                Connection con = sqlcon.getCon();

                                Statement st = con.createStatement();

                                String sql = "select id, branch, date, accountname, vendor, address, phoneno, prev_balance, description, amountpaid, balance, paid_by from payment where month =  '" + kw + "' AND year =  '" + kw2 + "' ";

                                ResultSet set = st.executeQuery(sql);

            %>
            <%
                                            while (set.next()) {
            %>



            <TR bgcolor="#eeeeee">
                <TD align="center" height="25"><FONT FACE="tahoma" SIZE="2" color="gray"><%= dt = set.getString(1)%></FONT></TD>
                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%= dt = set.getString(2)%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><a href=""><%= regno = set.getString(3)%></a></FONT></TD>

                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><a href=""><%= categoryid = set.getString(4)%></a></FONT></TD>

                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%= name = set.getString(5)%></FONT></TD>

                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%= description = set.getString(6)%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%= price = set.getString(7)%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat(8))%></FONT></TD>


                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%= country = set.getString(9)%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat(10))%></FONT></TD>


                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat(11))%></FONT></TD>


                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%= dob = set.getString(12)%></FONT></TD>




                <td><a href="deleting.jsp?deletepayment=<%=set.getInt("id")%>"><input type="button" name="Delete" value="Void" style="background-color:#ff0000;font-weight:bold; font-size: x-small; color:#ffffff;" ></a></td>


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
                        } else {
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
            <form>
                <td align="right"> <INPUT NAME="export" TYPE="button" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                </td>
            </form>
        </tr>
    </table>
</body>
</html>
