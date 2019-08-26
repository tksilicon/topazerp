<%-- 
    Document   : insert
    Created on : Aug 10, 2012, 11:06:27 AM
    Author     : user
--%>

<%@page import="Classespack.AcctBal"%>
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
        <script type="text/javascript">
            function generateexcel() {
                var table= document.getElementById('customer');

                var html = table.outerHTML;

                window.open('data:application/vnd.ms-excel,' + encodeURIComponent(html));
            }
        </script>
        <style>
            table.rowHover tr:hover{ background-color:  orange; }
            table.rowHover TR:hover{ background-color:  orange; }
        </style>
    </head>
    <body>
        <jsp:include page="selectsortpayroll.jsp"></jsp:include>
        <table align="center" dir="LTR" class="rowHover"  id="customer"  frame="border"  width="940"  height="100" valign="top" cellspacing="1">

            <TR valign="center" bgcolor="orange" align="center" height="30">

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">S/N</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Month</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Year</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Employee</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Basic Salary</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Medical Allwce</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Transport Allwce</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Feeding Allwce</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Housing Allwce</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">IOU</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Tax</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Loan</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Gross Pay</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Net Pay</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Void Payroll</FONT></TD>

            </TR>
            <%
                        DecimalFormat formatter = new DecimalFormat("###,###,###");
                        try {

                            SQLconnector sqlcon = new SQLconnector();
                            Connection con = sqlcon.getCon();

                            Statement st = con.createStatement();

                            String sql = "select * from payrecords ";


                            ResultSet set = st.executeQuery(sql);

            %>
            <%
                                        while (set.next()) {
            %>



            <TR bgcolor="#eeeeee">
                <TD align="center" height="25"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getInt(1)%></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(2)%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><a href=""><%=set.getString(3)%></a></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><a href=""><%= set.getString(4)%></a></FONT></TD>



                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat(5))%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat(6))%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat(7))%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat(8))%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat(9))%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat(10))%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat(11))%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat(12))%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat(13))%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat(14))%></FONT></TD>



                <td align="center"><a href="deleting.jsp?deletepay=<%=set.getInt(1)%>"> <img src="images/delete.gif" alt="Delete" onclick="javascript:return confirm('Are you sure you want to void this payroll')">  </a></td>


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
            <form action="insert.jsp" method="post">
                <td align="right"> <INPUT NAME="export7" TYPE="button" VALUE="Export to Excel" onclick="generateexcel();" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                </td>
            </form>
            <form action="displaypayrecords.jsp" method="post">
                <td align="right"> <INPUT NAME="export7" TYPE="submit" VALUE="Payroll Records" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                </td>
            </form>
        </tr>
    </table>

    <table align="left" dir="LTR"      width="600"  height="50" valign="top">
        <tr

    </tr>
</table>

</body>
</html>
