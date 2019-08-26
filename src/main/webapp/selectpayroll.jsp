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



        <table align="center" dir="LTR" class="alt1"  id="customer"  frame="border"  width="940"  height="100"  cellspacing="1">

            <TR valign="center" bgcolor="orange" align="center" height="30">

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">S/N</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Branch</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Date</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">From Account</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Employee</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Basic</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Medical Allwce</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Transport Allwce</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Feeding Allwce</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Housing Allwce</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Utility Allwce</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Cleaning Allwce</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Pension</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Other Deductable</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Tax</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Loan</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Gross Pay</FONT></TD>
              
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Net Pay</FONT></TD>



                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Pay</FONT></TD>
               
            </TR>
            <%

                DecimalFormat formatter = new DecimalFormat("###,###,###");



                try {

                    SQLconnector sqlcon = new SQLconnector();
                    Connection con = sqlcon.getCon();

                    Statement st = con.createStatement();

                    String sql = "select * from paysolution ";


                    ResultSet set = st.executeQuery(sql);

            %>
            <%
                while (set.next()) {
            %>

            <TR bgcolor="#eeeeee">
                <TD align="center" height="25"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getInt(1)%></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString(2)%></FONT></TD>

                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><a href=""><%=set.getString(3)%></a></FONT></TD>

                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><a href=""><%= set.getString(4)%></a></FONT></TD>

                <TD align="left" width="150"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString(5)%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat(6))%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat(7))%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat(8))%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat(9))%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat(10))%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat(11))%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat(12))%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat(13))%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat(14))%></FONT></TD>
                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat(15))%></FONT></TD>
                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat(16))%></FONT></TD>
                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat(17))%></FONT></TD>
                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat(18))%></FONT></TD>

                <td><a href="displaypayrollup.jsp?updatepayroll=<%=set.getInt(1)%>"><input type="button" name="Delete" value="Pay" style="background-color:#ff0000;font-weight:bold; font-size: x-small; color:#ffffff;"  ></a></td>                

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
            <form action="insert.jsp" method="post">
                <td align="right"> <INPUT NAME="export7" TYPE="submit" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                </td>
            </form>
            <form action="" method="post">
                <td align="right"> <INPUT NAME="export7" TYPE="submit" VALUE="Pay All Staffs" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
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
<table align="left" dir="LTR"      width="600"  height="100" valign="top">


    <%
        // DecimalFormat formatter = new DecimalFormat("###,###,###");
        AcctBal ab = new AcctBal();

        double total = ab.payroltotal();
        double iou = ab.payroliou();
        double tax = ab.payroltax();
        double loan = ab.checkBalance("loan");




    %>




    <tr>
        <td><font size="3" face="arial" color="blue">Total Monthly Tax for Staffs:............................................ N<%out.print(formatter.format(tax));%>.00</font></td>
    </tr>

    <tr>
        <td><font size="3" face="arial" color="blue">Total Staff Loan:...............................................................N<%out.print(formatter.format(loan));%>.00</font></td>
    </tr>

    <tr>
        <td><font size="3" face="arial" color="blue">Total Staff Salary Advance:.............................. ...............<u>N<%out.print(formatter.format(iou));%>.00</u></font></td>
    </tr>

    <tr>
        <td><font size="3" face="arial" color="blue">Total Monthly Salary and Wages After Deductions:.........<u><span style="border-bottom: 1px double #000;"> N<%out.print(formatter.format(total));%>.00</span></u></font></td>
    </tr>


</table>
</body>
</html>
