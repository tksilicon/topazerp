<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }
    session.setAttribute("pageinfo2", "Update Invoice");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
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
        <link rel="icon"  type="image/gif" href="logo.gif">
        <script>
            function printDiv()
            {
            var divToPrint = document.getElementById('customer');
            newWin = window.open("");
            newWin.document.write(divToPrint.outerHTML);
            newWin.print();
            newWin.close();
            }

            function deleteRecord(id) {
            var f = document.form;
            f.method = "post";
            f.action = 'delete.jsp?id=' + id;
            f.submit().deleteRow(index);
            }
        </script>
        <script type="text/javascript">
            function generateexcel() {
            var table = document.getElementById('customer');
            var html = table.outerHTML;
            window.open('data:application/vnd.ms-excel,' + encodeURIComponent(html));
            }
        </script>
        <script type="text/javascript">
            function handleSelect(elm)
            {
            window.location = elm.value + ".jsp";
            }
        </script>
        <script type="text/javascript">
            function signout()
            {

            window.location.href = "signout.jsp";
            }
        </script>

        <style>
            table.rowHover tr:hover{ background-color:  orange; }

        </style>
        <title>Incoming Jobs </title>
    </head>
    <body>

        <form action ="deleting.jsp"  method="post">
            <table align="center"   frame="border"  id="customer" width="900"  height="50" valign="top">
                <tr width="400" align="left">
                    <%
                        SQLconnector sqlcon = new SQLconnector();
                        Connection con = sqlcon.getCon();
                        if (request.getParameter("name") != null) {
                            String value = request.getParameter("name");
                            String kw = String.valueOf(value);

                            try {

                                Statement st = con.createStatement();
                                ResultSet rs = st.executeQuery("select * from ourinvoice where invoiceid = '" + kw + "' ");


                                if (rs.next()) {


                    %>
                <tr bgcolor="#eeeeee">
                    <td><font color="black"  face="arial" size="2"> <b> Invoice Id:</b> </font> </td><td><input type="text" name="id" size="5"  readonly="readonly" value="<%=rs.getString("invoiceid")%>" ></a> </td>
                    <td><font color="black"  face="arial" size="2"> <b> Cust. Name:</b> </font> </td><td><input type="text" name="name" size="35"  value="<%=rs.getString("custname")%>" ></a> </td>
                    <td><font color="black"  face="arial" size="2"> <b> Tag. No:</b> </font> </td><td><input type="text" name="tagno" size="35"  value="<%=rs.getString("tagno")%>" ></a> </td>
                    <td><font color="black" face="arial" size="2"> <b>Customer No: </b></font> </td><td><input type="text" size="6"  name="custno" value="<%=rs.getString("custid")%>" > </td>
                    <td align="center"><input type= "submit" size="20" name = "updateinvoice"  value="Save"  style="background-color:#330099;font-weight:bold;color:#ffffff;" > </td>
                </tr>

                <%
                            }
                            // con.close();
                        } catch (Exception e) {
                            out.println(e);
                        }
                    } else {
                    }

                    //response.sendRedirect("transation.jsp");
                %>

            </table>
        </form>
        <table align="center" class="rowHover"    frame="border"  id="customer" width="900"  >
            <TR valign="center" bgcolor="#333366" align="center" height="30">

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Date</B></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Invoice No</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Branch</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Cust Name</B></FONT></TD>


                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>CustType</B></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Tag. No.</B></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Total Qty</B></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Grand Total</B></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Deposit</B></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Balance</B></FONT></TD>


                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Staff</B></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Update</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Status</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Check</B></FONT></TD>
            </TR>

            <%
                DecimalFormat formatter = new DecimalFormat("###,###,###");
                try {
                    Statement st = con.createStatement();

                    String sql = "select * from ourinvoice where verify = 'Not Verified'";

                    ResultSet set = st.executeQuery(sql);

            %>
            <%
                while (set.next()) {
            %>



            <TR bgcolor="#eeeeee" height="25">
                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("date")%></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><a href="selectincomeitemwtdt.jsp?invidd=<%=set.getString("invoiceid")%>"><%=set.getString("invoiceid")%></a></FONT></TD>

                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("branch")%></FONT></TD>


                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("custname")%></FONT></TD>

                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("custtype")%></FONT></TD>
                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("tagno")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getInt("totalqty")%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat("grandtotal"))%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat("amtpaid"))%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat("balance"))%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("staff")%></FONT></TD>

                <td align="center"><a href="displayupdateinvoice.jsp?name=<%=set.getString("invoiceid")%>"><img src="upimg.gif" ></a></td>
                <TD align="center" onclick="javascript:return confirm('Are you sure you want to VERIFY this invoice')"><FONT FACE="tahoma" SIZE="2" color="grey"><a href="deleting.jsp?verify=<%=set.getString("invoiceid")%> " title="Click to verify invoice or cancel verification"><%=set.getString("verify")%></a></FONT></TD>

                <td align="center"><a href="selectinvstatus.jsp?invnoba=<%= set.getString("invoiceid")%>"> Check</a></td>


            </TR>

            <%
                    }

                } catch (SQLException e) {
                    out.print(e);
                }

                con.close();
            %>
        </table>

        <table align="center" dir="LTR"   frame="border"  width="900"  height="30" valign="top">

            <tr align="left" width="100">
            <form>
                <td align="left"> <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;"
                                         ONCLICK="printDiv()" />
                </td>
            </form>

            <form>
                <td align="right"> <INPUT NAME="export" TYPE="button" VALUE="Export to Excel" onclick="generateexcel();" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                </td>
            </form>
        </tr>
    </table>

</body>
</html>
