<%
            if (session.getAttribute("username") == null) {
                response.sendRedirect("index.jsp");
            }
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
        <style>
            table.rowHover tr:hover{ background-color:  orange; }
            table.rowHover TR:hover{ background-color:  orange; }

        </style>
        <script>
            function printDiv()
            {
                var divToPrint=document.getElementById('customer');
                newWin= window.open("");
                newWin.document.write(divToPrint.outerHTML);
                newWin.print();
                newWin.close();
            }
       
            function deleteRecord(id){
                var f=document.form;
                f.method="post";
                f.action='delete.jsp?id='+id;
                f.submit().deleteRow(index);
            }
        </script>
        <script type="text/javascript">
            function generateexcel() {
                var table= document.getElementById('customer');
                var html = table.outerHTML;
                window.open('data:application/vnd.ms-excel,' + encodeURIComponent(html));
            }
        </script>
        <script type="text/javascript">
            function handleSelect(elm)
            {
                window.location = elm.value+".jsp";
            }
        </script>
        <script language="text/javascript">   
            function signout()
            {
          
                window.location.href="signout.jsp";
            }
        </script>
        <title>Invoices </title>
    </head>
    <body>

        <table align="center"  class="rowHover"  frame="border"  id="customer" width="900"  height="100" valign="top">
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

                        if (request.getParameter("invoicesearch") != null) {

                            String value = request.getParameter("invoicenumber");
                            String kw = String.valueOf(value);
                            try {

                                SQLconnector sqlcon = new SQLconnector();
                                Connection con = sqlcon.getCon();

                                Statement st = con.createStatement();
                                
                                String sql = "select * from ourinvoice where invoiceid = '"+kw+"' ";

                                ResultSet set = st.executeQuery(sql);

            %>
            <%
                                        while (set.next()) {
            %>

            <TR bgcolor="#eeeeee" height="25">
               <TD align="left" width="60"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("date")%></FONT></TD>
                <TD align="center" width="70"><FONT FACE="tahoma" SIZE="2" color="gray"><a href="selectincomeitemwtdt.jsp?invidd=<%=set.getString("invoiceid")%>"><%=set.getString("invoiceid")%></a></FONT></TD>

                <TD align="left" width="50"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("branch")%></FONT></TD>


                <TD align="left" width="150"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("custname")%></FONT></TD>

                <TD align="left" width="60"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("custtype")%></FONT></TD>
                <TD align="left" width="80"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("tagno")%></FONT></TD>

                <TD align="center" width="30"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getInt("totalqty")%></FONT></TD>

                <TD align="right" width="50"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat("grandtotal"))%></FONT></TD>

                <TD align="right" width="50"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat("amtpaid"))%></FONT></TD>

                <TD align="right" width="50"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat("balance"))%></FONT></TD>


                <TD align="center" width="50"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("staff")%></FONT></TD>

                <td align="center" width="50"><a href="displayupdateinvoice.jsp?name=<%=set.getString("invoiceid")%>"><img src="upimg.gif"  ></a></td>
              <TD align="center" width="50" onclick="javascript:return confirm('Are you sure you want to VERIFY this invoice')"><FONT FACE="tahoma" SIZE="2" color="grey"><a href="deleting.jsp?verify=<%=set.getString("invoiceid")%> " title="Click to verify invoice or cancel verification"><%=set.getString("verify")%></a></FONT></TD>

                <td align="center" width="50"><a href="selectinvstatus.jsp?invnoba=<%= set.getString("invoiceid")%>"> Check</a></td>


            </TR>

            <%
                                            }
                                          con.close();
                                        } catch (SQLException e) {
                                            out.print(e);
                                        }
                            }
                        else{
                            }


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
            <form action="displayinvoice.jsp">
                <td align="right"> <INPUT NAME="export" TYPE="submit" VALUE="View All Invoices" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                </td>
            </form>
        </tr>
    </table>

</body>
</html>
