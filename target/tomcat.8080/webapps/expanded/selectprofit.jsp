<%-- 
    Document   : selectbs
    Created on : Jan 17, 2013, 6:32:18 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.util.*" %>
<%@page import="java.sql.Date" %>
<%@page import="newpackage.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page  import="java.text.DecimalFormat" %>
<%@page  import="Classespack.*" %>
<%@page import="java.lang.NullPointerException" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <script type="text/javascript">
            // You can do this now:
            accounting.formatMoney(5318008.0);
        </script>

        <style>
            table.rowHover tr:hover{ background-color:  orange; }
            table.rowHover TR:hover{ background-color:  orange; }

        </style>
        <script>
            function printDiv()
            {
                var divToPrint = document.getElementById('customer');
                var divToPrint2 = document.getElementById('customer2');
                newWin = window.open("");
                newWin.document.write(divToPrint.outerHTML);
                newWin.document.write(divToPrint2.outerHTML);
                newWin.print();
                newWin.close();
            }

        </script>
        <script type="text/javascript">
            function generateexcel() {
                var table = document.getElementById('customer');
                var table2 = document.getElementById('customer2');
                var html = table.outerHTML;
                var html2 = table2.outerHTML;
                window.open('data:application/vnd.ms-excel,' + encodeURIComponent(html) + encodeURIComponent(html2));
            }
        </script>
    </head>
    <body>
        <%
            SQLconnector SQL = new SQLconnector();

            Connection con = SQL.getCon();
            String company = "";
            try {

                Statement st = con.createStatement();

                String sql = "select * from branch limit 1";
                ResultSet rs = st.executeQuery(sql);

                if (rs.next()) {

                    company = rs.getString("companyname");
                }
            } catch (Exception e) {
            }

        %>
        <table id="customer" frame="border" class="rowHover" width="600" hieght="450" align="center" bgcolor="#333399" cellpadding="1" cellspacing="1">
            <tr align="center">
                <td></td>
                <td><font size="4" face="tahoma" color="white"><b><%=company.toUpperCase() %> NIGERIA LIMITED</b></td>
                <td></td>

            </tr>
            <tr align="center" >
                <td></td>
                <td><font size="4" face="tahoma" color="white"><b>PROFIT AND LOSS ACCOUNT</b></td>
                <td></td>

            </tr>

            <tr align="center"  bgcolor="white">
                <td></td> <td><font size="4" face="tahoma" color="white"><b> <%

                    //response.setIntHeader("Refresh", 150);
                    // Date dt = null;
                    //dt.getDay();
                    DecimalFormat formatter = new DecimalFormat("###,###,###");
                    Calendar dateTime = Calendar.getInstance();


                    String am_pm;
                    int hour = dateTime.get(Calendar.HOUR);
                    int minute = dateTime.get(Calendar.MINUTE);
                    int second = dateTime.get(Calendar.SECOND);
                    if (dateTime.get(Calendar.AM_PM) == 0) {
                        am_pm = "AM";
                    } else {
                        am_pm = "PM";
                    }
                    String CT = hour + ":" + minute + ":" + second + " " + am_pm;
                    //out.println("<html><font color='black' size='3' color='white'>" + String.format("%ta\n", dateTime) + " .." + "\n" + "</font>" + "</html>");
                    // out.println("<html><font color='black' size='3' color='white'>" + String.format("%tF\n", dateTime) + " .." + "\n" + "</font>" + "</html>");
                    // out.println("<html><font color='black' size='3' color='white'>" + CT + "\n" + "</font>" + "</html>");
                    session.setAttribute("date", String.format("%ta\n", dateTime) + String.format("%tF\n", dateTime) + " " + CT);



                    //session.setAttribute("myinvoicedate2", String.format("%ta\n", dateTime) + " " + rd + "-" + rd1 + "-" + rd2 + "  " + CT);
                    out.println("<html><font color='black' size='3' color='white'>" + String.format("%ta\n", dateTime) + " " + String.format("%tF\n", dateTime) + "  " + CT + "\n" + "</font>" + "</html>");


                        %></b></td>
                <td></td>

            </tr>
        </table>
        <table id="customer2" class="rowHover" frame="border" width="600" hieght="450" align="center" bgcolor="#eeeeee">
            <%
                AcctBal bal = new AcctBal();
                double costservice = bal.totalcostofsales();

                double discount = bal.checkBalance("sales discount");


                double salary = bal.checkBalance("salary and wages");
                double tax = bal.totaltax();

                double bankcharge = bal.checkBalance("Bank Charges");

                double revenue = bal.revenue() + bal.checkBalance("package customers");

                double otherexpenses = bal.totalexpences() - bal.checkBalance("Salary and wages");

                double totalexpences = salary + otherexpenses + discount + bankcharge;

                double grossprofit = revenue - bal.totalcostofsales();

                double profitb4tax = grossprofit - totalexpences;


                double totalexpencesnew = bal.totalexpences();
                double totalliab = bal.totallia();

                double totalded1 = totalexpencesnew + totalliab;
                double retain = revenue - totalded1;
                try {


                    Statement st = con.createStatement();

                    String sql = "select * from account ";

                    ResultSet set = st.executeQuery(sql);

            %>
            <%
                if (set.next()) {
            %>
            <tr>
                <td height="30">

                </td>
            </tr>
            <tr bgcolor="#cccccc">
                <td>

                </td>
                <td align ="right">
                    <b> =N= </b>
                </td>



                <td align ="right" width="150">
                    <b> =N= </b> 
                </td>


            </tr>

            <tr>

                <td height="30">

                </td>
            </tr>
            <tr>
                <td>
                    <b>Revenue</b>
                </td>
                <td align ="right">
                    <% out.print(formatter.format(revenue));%>.00
                </td>



                <td>

                </td>


            </tr>
            <tr>
                <td>

                </td>


                <td align="right">

                </td>
                <td>

                </td>


            </tr>
            <tr>
                <td>
                    <b>Less: Cost of Service</b>
                </td>


                <td align="right">
                    (<% out.print(formatter.format(costservice));%>.00)
                </td>
                <td>

                </td>


            </tr>
        </tr>
        <tr>
            <td>

            </td>


            <td align="right">

            </td>
            <td>

            </td>


        </tr>
        <tr>
            <td height="30">

            </td>
        </tr>
        <tr>
            <td>
                <b> Gross Profit: </b>
            </td>


            <td >

            </td>
            <td align ="right">
        <u> <b><% out.print(formatter.format(grossprofit));%>.00  </b></u>
    </td>





</tr>
<tr>
    <td height="30">

    </td>
</tr>
<tr>
    <td>
        <b>Less: Administrative Expenses</b>
    </td>


    <td >

    </td>
    <td>

    </td>




</tr>

<tr>
    <td >
        Staff Cost
    </td>


    <td align ="right">
        (<% out.print(formatter.format(salary));%>.00 )
    </td>
    <td>

    </td>




</tr>

<tr>
    <td>
        Sales Discount:
    </td>


    <td align="right">
        (<% out.print(formatter.format(discount));%>.00)
    </td>





</tr>
<tr>
    <td>
        Bank Charges:
    </td>


    <td align="right">
        (<% out.print(formatter.format(bankcharge));%>.00)
    </td>
    <td>

    </td>
</tr>
<tr>
    <td>
        Other Expenses:
    </td>


    <td align ="right">
        (<% out.print(formatter.format(otherexpenses));%>.00)
    </td>
    <td>

    </td>

</tr>
<tr>
    <td height="30">

    </td>
</tr>
<tr>
    <td>
        <b> Total Administrative Expenses</b>
    </td>


    <td >

    </td>
    <td align ="right">
<u><b> (<% out.print(formatter.format(totalexpences));%>.00)</b></u>
</td>





</tr>
<tr>
    <td height="30">

    </td>
</tr>
<tr>
    <td>
        <b> Profit Before Taxation</b>
    </td>


    <td>

    </td>
    <td align ="right">
<u><b><% out.print(formatter.format(profitb4tax));%>.00  </b></u>



</td>


</tr>

<tr>
    <td>
        <b> Less: Taxation </b>
    </td>


    <td>

    </td>
    <td align ="right">
        <b> (<% out.print(formatter.format(tax));%>.00) </b>



    </td>


</tr>
<tr>
    <td height="30">

    </td>
</tr>
<tr>
    <td>
        <b> Profit After Taxation </b>
    </td>


    <td>

    </td>
    <td align ="right" >
<u><span style="border-bottom: 1px double #000;"><b><% out.print(formatter.format(retain));%>.00 </b></span></u>



</td>


</tr>

<tr>
    <td height="30">

    </td>
</tr>
<%
        }
        con.close();
    } catch (SQLException e) {
        out.print(e);
    }

    con.close();
%>
</table>
<table align="center" dir="LTR"   frame="border"  width="600"  height="30" valign="top">

    <tr align="left" width="100">
    <form>
        <td align="left"> <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;"
                                 ONCLICK="printDiv()" />
        </td>
    </form>



    <form action="insert.jsp" method="post">
        <td align="right"> <INPUT NAME="export2" TYPE="button" VALUE="Export to Excel" ONCLICK="generateexcel()" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
        </td>
    </form>
</tr>
</table>
</body>
</html>
