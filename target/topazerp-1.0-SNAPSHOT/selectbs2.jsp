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
<%@ page  import="Classespack.*" %>

<%@page import="java.lang.NullPointerException" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <style>
            table.rowHover tr:hover{ background-color:  orange; }
            table.rowonClick tr:select{background-color: inherit;}

        </style>
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
        <table id="customer" class="rowHover" frame="border" width="750" hieght="450" align="center" bgcolor="#333399" cellpadding="1" cellspacing="1">
            <tr align="center">
                <td></td>
                <td><font size="4" face="tahoma" color="white"><b><%=company.toUpperCase()%> NIGERIA LIMITED</b></font></td>
                <td></td>

            </tr>
            <tr align="center">
                <td></td>
                <td><font size="4" face="tahoma" color="white"><b>BALANCE SHEET</b></font></td>
                <td></td>

            </tr>
            <tr align="center" >
                <td></td>
                <td><font size="4" face="tahoma" color="white"><b>AS AT</b></font></td>
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
                    //out.println("<html><font color='black' size='3' color='white'>" + String.format("%tF\n", dateTime) + " .." + "\n" + "</font>" + "</html>");
                    // out.println("<html><font color='black' size='3' color='white'>" + CT + "\n" + "</font>" + "</html>");


                    session.setAttribute("date", String.format("%ta\n", dateTime) + String.format("%tF\n", dateTime) + " " + CT);

                    String rd = "";
                    String rd1 = "";
                    String rd2 = "";
                    try {
                     

                        Statement st = con.createStatement();

                        ResultSet rs = st.executeQuery("SELECT  date(now()) from admin ");


                        while (rs.next()) {

                            rd = rs.getString(1);


                        }
                    } catch (Exception e) {
                    }

                    //session.setAttribute("myinvoicedate2", String.format("%ta\n", dateTime) + " " + rd + "-" + rd1 + "-" + rd2 + "  " + CT);
                    out.println("<html><font color='black' size='3' color='white'>" + String.format("%ta\n", dateTime) + " " + rd + "  " + CT + "\n" + "</font>" + "</html>");


                        %></b></td>
                <td></td>

            </tr>
        </table>
        <table id="customer2" frame="border" width="750" class="rowHover" hieght="450" align="center" bgcolor="#eeeeee">
            <%
                /**
                 * AcctBal bal = new AcctBal(); double costservice =
                 * bal.checkBalance("cost of Sales"); double petty =
                 * bal.checkBalance("petty cash"); double discount =
                 * bal.checkBalance("sales discount"); double rec =
                 * bal.checkBalance("account receivable"); double pay =
                 * bal.checkBalance("account payable"); double consume =
                 * bal.checkBalance("consumables"); double salary =
                 * bal.checkBalance("salary and wages"); double tax =
                 * bal.checkBalance("tax"); double cash =
                 * bal.checkBalance("cash-at-hand") +
                 * bal.checkBalance("cash-at-bank"); double depre =
                 * bal.checkBalance("depreciations"); double fixed =
                 * bal.checkBalance("fixed asset"); double payable =
                 * bal.checkBalance("account payable"); double utility =
                 * bal.checkBalance("utility expenses"); double bankcharge =
                 * bal.checkBalance("Bank Charges"); double packcust =
                 * bal.checkBalance("package customers");
                 *
                 *
                 *
                 *
                 *
                 * double revenue = bal.revenue() + bal.checkBalance("package
                 * customers");
                 *
                 * double otherexpenses = bal.totalexpences() -
                 * bal.checkBalance("Salary and wages");
                 *
                 * double totalexpences = salary + otherexpenses + discount +
                 * bankcharge; double ded = costservice;
                 *
                 * double grossprofit = revenue - bal.totalcostofsales();
                 *
                 * double profitb4tax = grossprofit - totalexpences; double
                 * profitaftertax = profitb4tax - tax;
                 *
                 *
                 * double totalexpencesnew = bal.totalexpences(); double
                 * totalliab = bal.totallia();
                 *
                 * double totalded1 = totalexpencesnew + totalliab; double
                 * retain = revenue - totalded1;
                 */
                AcctBal bal = new AcctBal();
                double bcharge = bal.checkBalance("bank charges");
                double petty = bal.checkBalance("petty cash");
                double packcust = bal.checkBalance("package customers");
                double rec = bal.checkBalance("account receivable");
                double pay = bal.checkBalance("account payable");
                double loan = bal.checkBalance("loan");
                double consume = bal.checkBalance("consumables");
                double salary = bal.checkBalance("salary and wages");
                double tax = bal.checkBalance("tax");

                double cash = bal.totalcash() + bal.totalbank();
                double depre = bal.checkBalance("depreciations");
                double fixed = bal.checkBalance("fixed asset");
                double pic = bal.checkBalance("paid-in-capital");
                double discount = bal.checkBalance("sales discount");
                double totalfixed = fixed - depre;

                double totalasset = cash + rec + consume + loan;
                double totallia = pay + tax;

                double grandasset = totalfixed + totalasset;

                double revenue = bal.revenue() + bal.checkBalance("package customers");

                double totalexpences = bal.totalexpences();
                double totalliab = bal.totallia();

                double totalded1 = totalexpences + totalliab;
                double retain = revenue - totalded1;

                double equip = bal.equipment();
                double land = bal.lands();
                double furniture = bal.furnitures();
                double build = bal.buildings();
                double vehicle = bal.landimprovement();
                double machine = bal.machine();




                double netincome = revenue - (discount + totalexpences + tax);

                double totalcapital = pic + retain;

                double totalequitypluslia = totalcapital + totallia;
                double staff = 0.0;
                try {


                    Statement st = con.createStatement();

                    String sql = "select * from account ";
                    
                    ResultSet res = st.executeQuery("SELECT SUM(grandtotal) FROM ourinvoice where custtype = 'Staff' OR custtype = 'Complementary'");
                    while (res.next()) {
                        double c = res.getFloat(1);
                        staff = staff + c;
                    }
                    ResultSet set = st.executeQuery(sql);

            %>
            <%
                if (set.next()) {
            %>


            <tr bgcolor="#cccccc">
                <td>

                </td>

                <td align="RIGHT">
                    <b>  =N= </b>
                </td>

                <td align="RIGHT">
                    <b>  =N= </b>
                </td>


            </tr>

            <tr>
                <td>
                    <b>FIXED ASSETS </b>
                </td>

                <td>

                </td>

                <td>

                </td>


            </tr>
            <tr>
                <td>
                    Furniture and Fixtures
                </td>


                <td align ="right">
                    &nbsp; &nbsp; <% out.print(formatter.format(furniture));%>.00
                </td>
                <td>

                </td>
            </tr>
            <tr>
                <td>
                    Land
                </td>


                <td align ="right">
                    &nbsp; &nbsp; <% out.print(formatter.format(land));%>.00
                </td>

                <td>

                </td>
            </tr>


            <tr>
                <td>
                    Motor Vehicle
                </td>


                <td align ="right">
                    <% out.print(formatter.format(vehicle));%>.00
                </td>
                <td>

                </td>
            </tr>


            <tr>
                <td>
                    Buildings
                </td>


                <td align ="right">
                    <% out.print(formatter.format(build));%>.00
                </td>
                <td>

                </td>
            </tr>


            <tr>
                <td>
                    Office Equipments
                </td>


                <td align ="right">
                    <% out.print(formatter.format(equip));%>.00
                </td>
                <td>

                </td>
            </tr>

            <tr>
                <td>
                    Plant and Machinery
                </td>


                <td align ="right">
                    <% out.print(formatter.format(machine));%>.00
                </td>
                <td>

                </td>
            </tr>


            <tr >
                <td >
                    <b> Less: Accum Depreciation </b>
                </td>


                <td align ="right">
                    <b>  (<% out.print(formatter.format(depre));%>.00) </b>
                </td>
                <td>

                </td>
            </tr>


            <tr bgcolor="white">

                <td>
                    <b> TOTAL FIXED ASSET </b>
                </td>

                <td>

                </td>
                <td align = "right">
                    <b><u><% out.print(formatter.format(totalfixed));%>.00   </u></b>
                </td>
            </tr>
            <tr height="20">

            </tr>

            <tr bgcolor="WHITE">
                <td>
                    <b>CURRENT ASSET</b>
                </td>
                <td>

                </td>
                <td>

                </td>
            </tr>

            <tr>
                <td>
                    Cash and Bank
                </td>


                <td align ="right">
                    <% out.print(formatter.format(cash));%>.00  
                </td>



            </tr>



            <tr>
                <td >
                    Account Receivables
                </td>


                <td align ="right">
                    <% out.print(formatter.format(rec));%>.00 
                </td>



            </tr>
            
             <tr>
                <td >
                    Staff and Comp. Customers
                </td>


                <td align ="right">
                    <% out.print(formatter.format(staff));%>.00 
                </td>



            </tr>

            <tr>
                <td>
                    Stocks
                </td>


                <td align ="right">
                    <% out.print(formatter.format(consume));%>.00 
                </td>



            </tr>


            <tr>
                <td>
                    Other Debtors
                </td>


                <td align ="right">
                    <% out.print(formatter.format(loan));%>.00   
                </td>

            </tr>

            <tr bgcolor="white">
                <td>
                    <b> Total Current Assets </b>
                </td>

                <td>

                </td>
                <td align ="right">
            <u> <b><% out.print(formatter.format(totalasset + staff));%>.00 </b></u>
        </td>


    </tr>

    <tr bgcolor="white">
        <td>
            <b> TOTAL ASSET </b>
        </td>

        <td>

        </td>
        <td align ="right">
    <u><span style="border-bottom: 1px double #000;"><b><% out.print(formatter.format(grandasset + staff));%>.00 </b></span></u>
</td>


</tr>
<tr>
    <td height="20">

    </td>
</tr>
<tr bgcolor="white">
    <td>
        <b> CURRENT LIABILITY </b>
    </td>

    <td>

    </td>
    <td>

    </td>


</tr>
<tr>
    <td>
        Account Payable
    </td>
    <td align ="right">
        <% out.print(formatter.format(pay));%>.00
    </td>
    <td>

    </td>

</tr>


<tr>
    <td>
        Other Creditors
    </td>
    <td align ="right">
        0.00
    </td>
    <td>

    </td>

</tr>
<tr>
    <td>
        Taxation
    </td>
    <td align ="right">
        <% out.print(formatter.format(tax));%>.00
    </td>
    <td>

    </td>

</tr>
<tr bgcolor="WHITE">
    <td>
        <b> TOTAL LIABILITY </b>
    </td>
    <td>

    </td>
    <td align="right" >
<u><b> <% out.print(formatter.format(totallia));%>.00 </b> </u>
</td>

</tr>

<tr>
    <td height="20">

    </td>
</tr>

<tr bgcolor="WHITE">
    <td>
        <b> SHAREHOLDERS' EQUITY </b>
    </td>

    <td >

    </td>
    <td>

    </td>
</tr>

<tr>
    <td>
        Paid-In-Capital
    </td>


    <td align ="right">
        <% out.print(formatter.format(pic));%>.00
    </td>
    <td>

    </td>

</tr>


<tr>
    <td>Retained Earning</td>
    <td align ="right">
        <% out.print(formatter.format(retain));%>.00
    </td>
    <td>

    </td>

</tr>



<tr bgcolor="WHITE">
    <td>
        <b> TOTAL EQUITY </b>
    </td>

    <td>

    </td>
    <td align ="right">
<u> <b><% out.print(formatter.format(totalcapital));%>.00  </b></u>
</td>


</tr>
<tr bgcolor="WHITE">
    <td>
        <b> TOTAL LIAB. & EQUITY</b>
    </td>
    <td>

    </td>

    <td align ="right">
<u><span style="border-bottom: 1px double #000;"><b> <% out.print(formatter.format(totalequitypluslia));%>.00</b> </span></u>
</td>
</tr>

<%
        }
    } catch (SQLException e) {
        out.print(e);
    }

con.close();
%>
</table>
<table align="center" dir="LTR"   frame="border"  width="750"  height="30" valign="top">

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
