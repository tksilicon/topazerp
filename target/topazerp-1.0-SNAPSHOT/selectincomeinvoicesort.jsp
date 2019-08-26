<%
            if (session.getAttribute("username") == null) {
                response.sendRedirect("index.jsp");
            }
            session.setAttribute("pageinfo", "All Incoming Invoices");
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
        
        <style>
            table.rowHover tr:hover{ background-color:  orange; }
            table.rowHover TR:hover{ background-color:  orange; }

        </style>
        <title>Incoming Jobs </title>
    </head>
    <body>
        <jsp:include flush="true" page="cshead.jsp"></jsp:include>

        <table align="center" bgcolor="white" width="1205" height="600" frame="border">
            <tbody align="left">
            <td>
                <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff; height:  35px;" 
                           ONCLICK="printDiv();" />
           
                    <INPUT TYPE="button" VALUE="Export to Excel" onclick="generateexcel();" style="background-color:#330099; font-weight:bold; color:#ffffff;  height:  35px;"  />
                   
                <div align="right"    style=" overflow-y: scroll;  border:  scrollbar; width: 1190px; height: 80px;" >

                    <form action="selectincomeinvoicesort.jsp" method="post">
                            <table width="350" align="center"  >
                                <tr>
                                    <td>From:</td>
                                    <td><input type="date" size="15" name="fromdate" value="<%=session.getAttribute("sqldate")%>"></td>
                                <td width="20"></td>
                                <td>To:</td>
                                <td><input type="date" size="15" name="todate" value="<%=session.getAttribute("sqldate")%>"></td>
                                <td><input type="submit" name="invoicesort" value="View"></td>
                            </tr>
                        </table>
                    </form>
                                <br>
                                <table align="center"  class="rowHover"  frame="border" width="1100"  height="30" valign="top" cellspacing="1">
                        <TR valign="center" bgcolor="white" align="center" height="30">

                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Date</B></FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Invoice No</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Branch</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Cust Name</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Cust. Id</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>CustType</B></FONT></TD>


                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Tag No</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Total Qty</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Discount</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Type</B></FONT></TD>


                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Grand Total</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Deposit</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Balance</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Ready</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Staff</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Status</B></FONT></TD>

                        </TR>
                    </table>
                </div>
                <div align="right"    style=" overflow-y: scroll;  border:  scrollbar; width: 1190px; height: 580px;" >


                    <table align="center"  class="alt1"  frame="border"  id="customer" width="1100"  height="100" valign="top" cellspacing="1">
                        <TR valign="center" bgcolor="#333366" align="center" height="30">
                           
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Date</B></FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Invoice No</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Branch</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Cust Name</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Cust. Id</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>CustType</B></FONT></TD>


                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Tag No</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Total Qty</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Discount</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Type</B></FONT></TD>


                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Grand Total</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Deposit</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Balance</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Ready</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Staff</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Status</B></FONT></TD>





                        </TR>
                        <%
                                    int totalrecords = 0;
                                    DecimalFormat formatter = new DecimalFormat("###,###,###");
                                     if(request.getParameter("invoicesort") != null){

                                String value = request.getParameter("fromdate");
                                String d1 = String.valueOf(value);

                                String value2 = request.getParameter("todate");
                                String d2 = String.valueOf(value2);
                                

                                    try {

                                        SQLconnector sqlcon = new SQLconnector();
                                        Connection con = sqlcon.getCon();

                                        Statement st = con.createStatement();
                                        //ResultSet rs = st.executeQuery("select YEAR(getDate()) from extrainfo ");
                                        //String year = "";
                                        //if (rs.next()) {
                                        //    year = rs.getString(1);
                                        //}
                                        //out.print("C.I.= "+year);
                                        ResultSet rs2 = st.executeQuery("select count(*) from ourinvoice where branch = '" + session.getAttribute("mybranch")+"' and date between '"+d1+"' and '"+d2+"'");
                                        if (rs2.next()) {
                                            totalrecords = rs2.getInt(1);
                                        }
                                        String sql = "select * from ourinvoice where branch = '" + session.getAttribute("mybranch")+"' and date between '"+d1+"' and '"+d2+"' order by custname asc";

                                        ResultSet set = st.executeQuery(sql);

                        %>
                        <%
                                                                while (set.next()) {
                        %>

                        <TR bgcolor="#eeeeee">

                           
                            <TD align="left" height="25"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("date")%></FONT></TD>

                           
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><a href="selectincomeitemwtdt.jsp?invidd=<%=set.getString("invoiceid")%>"><%=set.getString("invoiceid")%></a></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("branch")%></FONT></TD>

                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("custname")%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("custid")%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= set.getString("custtype")%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("tagno")%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getInt("totalqty")%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat("discount"))%>.00</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("type")%></FONT></TD>

                            <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat("grandtotal"))%>.00</FONT></TD>

                            <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat("amtpaid"))%>.00</FONT></TD>

                            <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat("balance"))%>.00</FONT></TD>

                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("ready")%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("staff")%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><b><%=set.getString("Verify")%></b></FONT></TD>

                        </TR>

                        <%
                                        }
                                                                  con.close();
                                    } catch (SQLException e) {
                                        out.print(e);
                                    }
                                     

                        %>
                    </table>

                    <table align="center" dir="LTR"   frame="border"  width="1100"  height="30" valign="top">

                        <tr align="left" width="100">
                       
                        <td><font color="blue">Total Records = <%=totalrecords%></font></td>
                        <form>
                            <td align="right"> <INPUT NAME="export" TYPE="button" VALUE="Export to Excel" onclick="generateexcel();" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                            </td>
                        </form>
                       <td>Total Invoices between <%= d1 %> and <%= d2 %> = </td>
                        <td>N
                            <%
                            AcctBal bal = new AcctBal();
                            out.print(formatter.format(bal.totalinvoiceday(d1, d2)));


                            %>
                            .00

                        </td>
                         <td>(Note: Package Customers are calculated as item units)</td>
                         
                        </tr>
                    </table>
                    <%
                    }
                     else{
                             }
                    %>
                </div>
            </td>
        </tbody>
    </table>

    <jsp:include page="footer_1.jsp" flush="true"></jsp:include>

</body>
</html>
