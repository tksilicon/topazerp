

        <script type="text/javascript">
            function handleSelect(elm)
            {
                window.location = elm.value+".jsp";
            }
        </script>
    
            <table align="right" frame="border" width="300">
                <tr align="left">
                    <td align="right">
                        <font size="3" color="green" face="tahoma">Customer Care Departmental Reports </font>
                    </td>
                </tr>
                <tr align="left">
                    <td align="right">
                        <select name="laundry" onchange="javascript:handleSelect(this)"  style=" background-color: purple;   color:  gold;  font-style: bold; " >
                            <option>Select</option>
                             <option value="invoicestatus">View Invoice Status </option>
                            <option value="selectincomeitem">Incoming Items Reports </option>
                            <option value="transaction">New Drop Off </option>
                            <option value="invsearch">New Pick Up </option>
                            <option value="selectpickupCC">View Pick Up History </option>
                            <option value="regccnewcust">Register New Customer </option>
                            <option value="selectcccustomer">View Branch Customers </option>
                            <option value="regccnewitem">Register New Item</option>
                            <option value="selectccextra">Open registered Extra Charges</option>
                           
                            <option value="selectincomeinvoice">View All Incoming Invoices</option>
                            <option value="crm">Cust. Rel. Manag.</option>
                            <option value="selectincomeinvoiceunpaid">View Unclosed Invoices.</option>
                            <option value="selectincomeinvoicepaid">View Closed Invoices.</option>

                        </select>   
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        <input type="button" name="report" value="Submit" style="background-color:yellowgreen;font-weight:bold;color:#ffffff;">
                    </td>
                <tr>
            </table>
       