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
<%@page import="Classespack.*" %>
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
                var divToPrint=document.getElementById('income');
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
        <script type="text/javascript">
            function generateexcel() {
                var table= document.getElementById('income');
                var html = table.outerHTML;
                window.open('data:application/vnd.ms-excel,' + encodeURIComponent(html));
            }
        </script>
    </head>
    <body>


        <%
                    DecimalFormat formatter = new DecimalFormat("###,###,###");
                    String rd = "";
                    String rd1 = "";
                    String rd2 = "";
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


                    session.setAttribute("onlydate", rd );
                   


        %>

        <table align="center" dir="LTR"  class="rowHover" id="income"  frame="border"  width="940"  height="100" valign="top">

            <TR valign="center" bgcolor="#333366" align="center" height="30">

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

                            String sql = "SELECT branch, Date, custname,  invoiceid, amtpaid, staff, '" + type2 + "' from ourinvoice where amtpaid >0 AND custtype ='regular' AND date ='" +rd+ "'  UNION ALL SELECT branch, Date, custname, invoiceid, amtpaid, staff, '" + type1 + "'  from pickup where amtpaid > 0 AND custtype ='regular' AND date ='"+rd+"'";

                            //String sql = " SELECT branch, Date,  invoiceid, amtpaid from ourinvoice where amtpaid >0 AND  branch = '"+session.getAttribute("mybranch")+" order by invoiceid desc' UNION ALL SELECT branch, Date, invoiceid, amtpaid  from pickup where amtpaid >0 AND  branch = '"+session.getAttribute("mybranch")+"' order by invoiceid desc ";

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
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray">Regular</FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat(5))%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(6)%></FONT></TD>
                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(7)%></FONT></TD>


            </TR>
            <tr>

            </tr>
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
                            double total1 = bal.totalincome1(rd);
                            double total2 = bal.totalincome2(rd);
                            double total3 = bal.totalincome3(rd);
                            double gtotal = total1 + total2;
                            double gtotal2 = gtotal + total3;

                %>

                <font color="blue" face="tohoma" size="4"> Total Income on the <%=rd%>(Today) = &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  N<%out.print(formatter.format(gtotal));%>.00</font>
        </tr>
        <tr>
            <td>
                <font color="blue" face="tohoma" size="4">Amount Paid by Package Customers(Today) = <u>N<%out.print(formatter.format(total3));%>.00 </u></font>
            </td>
        </tr>
        <tr>
            <td>
                <font color="blue" face="tohoma" size="4">Total Daily Income   = &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;  <u><span style="border-bottom: 1px double #000;"><b> N<%out.print(formatter.format(gtotal2));%>.00</b> </span> </u> (Cash Received)</font>
            </td>
        </tr>
    </table>
</body>
</html>
