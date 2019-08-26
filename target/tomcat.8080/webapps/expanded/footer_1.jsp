<%-- 
    Document   : footer
    Created on : Nov 6, 2012, 6:55:16 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table width="1205" height ="30" bgcolor="#222222" align ="center">

            <tbody>
                <tr align="center">

            <form  action="selectincomeinvoice.jsp" method="get">
                <td align="left"><input type="submit" width="30"  size="20"value="Incoming jobs report" style="background-color:#330099;font-weight:bold;color:#ffffff; background-image:  url(images/acct1.gif);" /> </td>
            </form>

            <form  action="selectpickupCC.jsp" method="get">
                <td align="left"><input type="submit" width="30"  size="20"value="Outgoing jobs report" style="background-color:#330099;font-weight:bold;color:#ffffff; background-image:  url(images/acct1.gif);" /> </td>
            </form>

            <form action="selectincomeinvoicepaid.jsp">
                <td align="left"><input type="submit" width="30"  size="20"value="Completed Jobs" style="background-color:#330099;font-weight:bold;color:#ffffff; background-image:  url(images/acct1.gif);" /> </td>
            </form>

            <form>
                <td align="left"><input type="submit" width="30"  size="20"value="Drycleaning Order" style="background-color:#330099;font-weight:bold;color:#ffffff; background-image:  url(images/acct1.gif);" /> </td>
            </form>

            <form action="displayitemCC.jsp" method="get">
                <td align="left"><input type="submit" width="30"  size="20"value="Display Items" style="background-color:#330099;font-weight:bold;color:#ffffff; background-image:  url(images/acct1.gif);" /> </td>
            </form>

            <form  action="custledgersearch.jsp" method="get">
                <td align="left"><input type="submit" width="30"  size="20"value="Customer's Ledger" style="background-color:#330099;font-weight:bold;color:#ffffff; background-image:  url(images/acct1.gif);" /> </td>
            </form>

            <form  action="invoice_2_1.jsp" method="get">
                <td align="left"><input type="submit" width="30"  size="20"value="Print Invoice" style="background-color:#330099;font-weight:bold;color:#ffffff; background-image:  url(images/acct1.gif);" /> </td>
            </form>

           



        </tr>
    </tbody>
</table>
</body>
</html>
