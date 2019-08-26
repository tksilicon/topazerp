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

            <tr align="left" width="100%">

            <form action="welcome.jsp">
                <td align="left"><input type="submit" width="30"  size="20"value="Back to Welcome Page" style="background-color:#330099;font-weight:bold;color:#ffffff; background-image:  url(images/acct1.gif);" /> </td>
            </form>

            <form action="updateproduct.jsp">
                <td align="left"><input type="submit" width="30"  size="20"value="Update Items" style="background-color:#330099;font-weight:bold;color:#ffffff; background-image:  url(images/acct1.gif);" /> </td>
            </form>

            <form action="regwithdrawal.jsp">
                <td align="left"><input type="submit" width="30"  size="20"value="Bank Withdrawal" style="background-color:#330099;font-weight:bold;color:#ffffff; background-image:  url(images/acct1.gif);" /> </td>
            </form>

            <form action="regdeposit.jsp">
                <td align="left"><input type="submit" width="30"  size="20"value="Bank Deposit" style="background-color:#330099;font-weight:bold;color:#ffffff; background-image:  url(images/acct1.gif);" /> </td>
            </form>

            <form action="displaycustomer.jsp">
                <td align="left"><input type="submit" width="30"  size="20"value="Delete Customer" style="background-color:#330099;font-weight:bold;color:#ffffff; background-image:  url(images/acct1.gif);" /> </td>
            </form>

            <form action="custledgersearch.jsp">
                <td align="left"><input type="submit" width="30"  size="20"value="Customer Ledger" style="background-color:#330099;font-weight:bold;color:#ffffff; background-image:  url(images/acct1.gif);" /> </td>
            </form>



            <form action="">
                <td align="left"><input type="submit" width="30"  size="20"value="Back up Database" style="background-color:#330099;font-weight:bold;color:#ffffff; background-image:  url(images/acct1.gif);" /> </td>
            </form>
            <form action="transaction.jsp">
                <td align="left"><input type="submit" width="30"  size="20"value="Customer Service" style="background-color:#330099;font-weight:bold;color:#ffffff; background-image:  url(images/acct1.gif);" /> </td>
            </form>

        </tr>
    </table>
    <table width="1205" height ="20" bgcolor="black" align ="center">
        <tr>
            <td align="right"><font color="white"></font></td>

        </tr>
    </table>
</body>
</html>
