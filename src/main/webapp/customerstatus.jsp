<%
if(session.getAttribute("username") == null){
 response.sendRedirect("index.jsp");
 }
session.setAttribute("pageinfo", "Customer's Status");
%>

        <table align="center">
            <tr>
                <td><a href="displayinvoicearch.jsp"><input type="button" name="" value="Voided Invoices" style="background-color: #5FB404;font-weight:bold; height: 40px; color:#ffffff;"  /></a></td>
                <td><a href="displayacctreceivable.jsp"><input type="button" name="" value="List of Debtors" style="background-color:red;font-weight:bold; height: 40px; color:#ffffff;"  /></a></td>
                <td><a href="account.jsp"><input type="button" name="" value="Financial Status" style="background-color: #330099;font-weight:bold; height: 40px; color:#ffffff;"  /></a></td>
                <td><a href="displayacctpayable.jsp"><input type="button" name="" value="Vendors to Pay" style="background-color: darkorange;font-weight:bold; height: 40px; color:#ffffff;"  /></a></td>
                <td><a href="lastbirthday.jsp"><input type="button" name="" value="Birth Day Cust" style="background-color: blueviolet;font-weight:bold; height: 40px; color:#ffffff;"  /></a></td>
               <td><a href="invoicestatus.jsp"><input type="button" name="" value="Invoice Status " style="background-color: lime;font-weight:bold; height: 40px; color:black;"  /></a></td>
            </tr>
        </table>