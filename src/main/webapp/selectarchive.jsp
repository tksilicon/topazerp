<%-- 
    Document   : selectarchive
    Created on : Jan 20, 2013, 12:01:19 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table.rowHover tr:hover{ background-color:  orange; }
            table.rowonClick tr:select{background-color: inherit;}

        </style>
    </head>
    <body>
        <table align="center" class="rowHover">
            <tr>
                <td><a href="displayinvoicearch.jsp"><input type="button" name="" value="Invoice Archive" style="background-color: #5FB404;font-weight:bold; height: 40px; color:#ffffff;"  /></a></td>
                <td><a href="displayinvoicearch_1.jsp"><input type="button" name="" value="Pick Up Archive" style="background-color:red;font-weight:bold; height: 40px; color:#ffffff;"  /></a></td>
                <td><a href="displayexpensearch.jsp"><input type="button" name="" value="Expenses Archive" style="background-color: #330099;font-weight:bold; height: 40px; color:#ffffff;"  /></a></td>
                <td><a href="displaypaymentarch.jsp"><input type="button" name="" value="Payment Archive" style="background-color: darkorange;font-weight:bold; height: 40px; color:#ffffff;"  /></a></td>
                <td><a href="displaydepositarch.jsp"><input type="button" name="" value="Bank Deposit Archive " style="background-color: blueviolet;font-weight:bold; height: 40px; color:#ffffff;"  /></a></td>
                <td><a href="displaywithdrawarch.jsp"><input type="button" name="" value="Withdrawal archive " style="background-color: purple;font-weight:bold; height: 40px; color:#ffffff;"  /></a></td>
           </tr>
        </table>   
        <table align="center" height="10">
            <tr>


            </tr>
        </table>   
    </body>
</html>
