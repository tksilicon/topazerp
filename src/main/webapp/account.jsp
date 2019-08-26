<%
            if (session.getAttribute("username") == null) {
                response.sendRedirect("index.jsp");
            }

            session.setAttribute("pageinfo2", "Financial Reports");
%>

<%-- 
    Document   : welcome
    Created on : Feb 26, 2012, 6:15:00 AM
    Author     : deji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*" %>
<%@page import="java.sql.Date" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chart of account</title>
    </head>
    <body>
        <jsp:include page="siteurl.jsp" flush="true"></jsp:include>
        <jsp:include flush="true" page="webheader.jsp" ></jsp:include>

        <jsp:include flush="true" page="pageheader.jsp" ></jsp:include>

        <table align="center"  width="1205" height="400" frame="border">

            <tbody align="left">

            <td align="left" valign="top"> <jsp:include page="menu.jsp" flush="true"></jsp:include></td>
            <td align="left" valign="top"> 
                <table align="center" width="500" style=" margin-bottom: 20px; margin-top: 20px;">
                    <tr align="center" bgcolor="yellow">
                        <td height="20">
                            <font size="3" face="tahoma" color="#777777"><b>ACCOUNTING, HR AND OTHER REPORTS</b></font>
                        </td>
                    </tr>
                    
                </table>
                <table width="500" align="center" frame="hsides">
                    <tr align="left">
                        <td>
                            <a href="displaycashflow.jsp" style=" text-decoration:  none;"> <INPUT NAME="print" TYPE="button" VALUE="Cash Book" style="background-color:#438941;font-weight:bold;color:#ffffff; height: 35px; width: 150px;  background-image:  url(images/acct1.gif);" /></a> 
                                                   
                        </td>
                        <td>
                            <a href="displayacct.jsp" style=" text-decoration:  none;"> <INPUT NAME="print" TYPE="button" VALUE="Chart of Account" style="background-color:#438941;font-weight:bold; margin-bottom: 10px;color:#ffffff; height: 35px; width: 150px; background-image:  url(images/acct1.gif);" /> </a>
                             
                        </td>
                        <td>
                            <a href="displaycustomer.jsp" style=" text-decoration:  none;"> <INPUT NAME="print" TYPE="button" VALUE="View Customers" style="background-color:#438941;font-weight:bold; margin-bottom: 10px;color:#ffffff; height: 35px; width: 150px; background-image:  url(images/acct1.gif);" /> </a>
                             
                        </td>
                    </tr>
                     <tr align="left">
                        <td>
                            <a href="displayacctpayable.jsp" style=" text-decoration:  none;"><INPUT NAME="print" TYPE="button" VALUE="Account Payable" style="background-color:#438941;font-weight:bold;color:#ffffff; height: 35px; width: 150px;" /> </a>
                                                   
                        </td>
                        <td>
                            <a href="displayexpenses.jsp" style=" text-decoration:  none;"><INPUT NAME="print" TYPE="button" VALUE="Expenses" style="background-color:#438941;font-weight:bold;margin-bottom: 10px;color:#ffffff; height: 35px; width: 150px;" /> </a>
                             
                        </td>
                        <td>
                            <a href="displaydiscount.jsp" style=" text-decoration:  none;"> <INPUT NAME="print" TYPE="button" VALUE="Discounts" style="background-color:#438941;font-weight:bold; margin-bottom: 10px;color:#ffffff; height: 35px; width: 150px;" /> </a>
                             
                        </td>
                    </tr>
                    <tr align="left">
                        <td>
                            <a href="displayacctreceivable.jsp" style=" text-decoration:  none;"><INPUT NAME="print" TYPE="button" VALUE="Account Receivable" style="background-color:#438941;font-weight:bold;color:#ffffff; height: 35px; width: 150px; background-image:  url(images/acct1.gif);" /> </a>
                                                   
                        </td>
                        <td>
                            <a href="displayconsume.jsp" style=" text-decoration:  none;"> <INPUT NAME="print" TYPE="button" VALUE="Inventory" style="background-color:#438941;font-weight:bold;margin-bottom: 10px;color:#ffffff; height: 35px; width: 150px; background-image:  url(images/acct1.gif);" /> </a>
                             
                        </td>
                        <td>
                            <a href="displayfixedasset.jsp" style=" text-decoration:  none;"> <INPUT NAME="print" TYPE="button" VALUE="Fixed Assets" style="background-color:#438941;font-weight:bold; margin-bottom: 10px;color:#ffffff; height: 35px; width: 150px; background-image:  url(images/acct1.gif); " /> </a>
                             
                        </td>
                    </tr>
                     <tr align="left">
                        <td>
                            <a href="displayincomestate.jsp" style=" text-decoration:  none;"> <INPUT NAME="print" TYPE="button" VALUE="Income Statements" style="background-color:#438941;font-weight:bold;color:#ffffff; height: 35px; width: 150px;" /> </a>
                                                   
                        </td>
                        <td>
                            <a href="displaypayment.jsp" style=" text-decoration:  none;"> <INPUT NAME="print" TYPE="button" VALUE="Payments Records" style="background-color:#438941;font-weight:bold;margin-bottom: 10px;color:#ffffff; height: 35px; width: 150px;" /> </a>
                             
                        </td>
                        <td>
                            <a href="displayvendor.jsp" style=" text-decoration:  none;"> <INPUT NAME="print" TYPE="button" VALUE="View Vendors" style="background-color:#438941;font-weight:bold; margin-bottom: 10px;color:#ffffff; height: 35px; width: 150px;" /> </a>
                             
                        </td>
                    </tr>
                     <tr align="left">
                        <td>
                            <a href="displayprofit.jsp" style=" text-decoration:  none;"><INPUT NAME="print" TYPE="button" VALUE="Profit and Loss Account" style="background-color:#438941;font-weight:bold;color:#ffffff; height: 35px; width: 150px; background-image:  url(images/acct1.gif);" /> </a>
                                                   
                        </td>
                        <td>
                            <a href="displaypayroll.jsp" style=" text-decoration:  none;"> <INPUT NAME="print" TYPE="button" VALUE="Payroll Reports " style="background-color:#438941;font-weight:bold;margin-bottom: 10px;color:#ffffff; height: 35px; width: 150px; background-image:  url(images/acct1.gif);" /> </a>
                             
                        </td>
                        <td>
                            <a href="displayitem.jsp" style=" text-decoration:  none;"> <INPUT NAME="print" TYPE="button" VALUE="View Items" style="background-color:#438941;font-weight:bold; margin-bottom: 10px;color:#ffffff; height: 35px; width: 150px; background-image:  url(images/acct1.gif);" /> </a>
                             
                        </td>
                    </tr>
                     <tr align="left">
                        <td>
                            <a href="displayjournal.jsp" style=" text-decoration:  none;"> <INPUT NAME="print" TYPE="button" VALUE="Journal Entry Reports" style="background-color:#438941;font-weight:bold;color:#ffffff; height: 35px; width: 150px;" /> </a>
                                                   
                        </td>
                        <td>
                            <a href="displaydeposit.jsp" style=" text-decoration:  none;"> <INPUT NAME="print" TYPE="button" VALUE="Bank Deposit Records" style="background-color:#438941;font-weight:bold;margin-bottom: 10px;color:#ffffff; height: 35px; width: 150px;" /> </a>
                             
                        </td>
                        <td>
                            <a href="displaytax.jsp" style=" text-decoration:  none;"> <INPUT NAME="print" TYPE="button" VALUE="Tax Payment Reports" style="background-color:#438941;font-weight:bold; margin-bottom: 10px;color:#ffffff; height: 35px; width: 150px;" /> </a>
                             
                        </td>
                    </tr>
                     <tr align="left">
                        <td>
                            <a href="displaybs.jsp" style=" text-decoration:  none;"><INPUT NAME="print" TYPE="button" VALUE="Balance Sheet" style="background-color:#438941;font-weight:bold;color:#ffffff; height: 35px; width: 150px; background-image:  url(images/acct1.gif);" /> </a>
                                                   
                        </td>
                        <td>
                            <a href="displaywithdrawal.jsp" style=" text-decoration:  none;"><INPUT NAME="print" TYPE="button" VALUE="Withdrawal Records" style="background-color:#438941;font-weight:bold;margin-bottom: 10px;color:#ffffff; height: 35px; width: 150px; background-image:  url(images/acct1.gif);" /> </a>
                             
                        </td>
                        <td>
                            <a href="displayloan.jsp" style=" text-decoration:  none;"> <INPUT NAME="print" TYPE="button" VALUE="View Staff Loan" style="background-color:#438941;font-weight:bold; margin-bottom: 10px;color:#ffffff; height: 35px; width: 150px; background-image:  url(images/acct1.gif);" /> </a>
                             
                        </td>
                    </tr>
                     <tr align="left">
                        <td>
                            <a href="displayfixedasset.jsp" style=" text-decoration:  none;"><INPUT NAME="print" TYPE="button" VALUE="Fixed Asset Records" style="background-color:#438941;font-weight:bold;color:#ffffff; height: 35px; width: 150px;" /> </a>
                                                   
                        </td>
                        <td>
                            <a href="displaybank.jsp" style=" text-decoration:  none;">  <INPUT NAME="print" TYPE="button" VALUE="Bank Statements" style="background-color:#438941;font-weight:bold;margin-bottom: 10px;color:#ffffff; height: 35px; width: 150px;" /> </a>
                             
                        </td>
                         <td>
                             <a href="displaypension.jsp" style=" text-decoration:  none;">  <INPUT NAME="print" TYPE="button" VALUE="Pension Reports" style="background-color:#438941;font-weight:bold;margin-bottom: 10px;color:#ffffff; height: 35px; width: 150px;" /> </a>
                             
                        </td>
                    </tr>
                    
                </table>
        
        </td>

            <td align="right" valign="top" bgcolor="#663399" width="120" >
                <jsp:include page="otherreport.jsp" flush="true"></jsp:include>
            </td>
        </tbody>

    </table>

    <jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>
