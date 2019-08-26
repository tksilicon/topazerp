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
        <script type="text/javascript">
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
        <script type="text/javascript">   
            function signout()
            {
          
                window.location.href="signout.jsp";
            }
        </script>
        <style>
            table.rowHover tr:hover{ background-color:  orange; }
            table.rowHover TR:hover{ background-color:  orange; }

        </style>
        <title>Incoming Jobs </title>
    </head>
    <body>
      

      
                
                   
                
                    <table align="center"  class="alt1"  frame="border"  id="customer" width="940"  height="100" valign="top">
                        <TR valign="center" bgcolor="#333366" align="center" height="30">

                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Date</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Time</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Invoice No</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Branch</B></FONT></TD>
                            <TD align="center"  width="100"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Cust Name</B></FONT></TD>
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

                          
                        </TR>
                        <%
                                    int totalrecords = 0;
                                    DecimalFormat formatter = new DecimalFormat("###,###,###");
                                    if (request.getParameter("incomenameyear") != null) {

                                        String value2 = request.getParameter("year");
                                        String year = String.valueOf(value2);
                                    try {

                                        SQLconnector sqlcon = new SQLconnector();
                                        Connection con = sqlcon.getCon();

                                        Statement st = con.createStatement();
                                       
                                        //out.print("C.I.= "+year);
                                        ResultSet rs2 = st.executeQuery("select count(*) from ourinvoice where year ='" + year + "'");
                                        if (rs2.next()) {
                                            totalrecords = rs2.getInt(1);
                                        }
                                        String sql = "select * from ourinvoice where year = '" + year + "' ";

                                        ResultSet set = st.executeQuery(sql);

                        %>
                        <%
                                                                while (set.next()) {
                        %>

                        <TR bgcolor="#eeeeee">

                           
                            <TD align="left" height="25"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("date")%></FONT></TD>

                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("time")%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><a href="selectincomeitemwtdt.jsp?invidd=<%=set.getString("invoiceid")%>"><%=set.getString("invoiceid")%></a></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("branch")%></FONT></TD>

                            <TD align="left" width="100"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("custname")%></FONT></TD>

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

                        </TR>

                        <%
                                        }
                                                                  con.close();
                                    } catch (SQLException e) {
                                        out.print(e);
                                    }


                        %>
                    </table>

                    <table align="center" dir="LTR"   frame="border"  width="940"  height="30" >

                        <tr>
                        
                            <td align="left"> <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;"
                                                     ONCLICK="printDiv()" />
                            </td>
                        

                        <td align="left" width="210"><font color="blue">Annual Income for the year <%= year%> =
                        N
                            <%
                                                                    AcctBal bal = new AcctBal();
                                                                    out.print(formatter.format(bal.totalinvoiceyear(year)));
                            %>
                            .00
                            </font>
                        </td>
                        <td width="200"><font color="blue">(Note: Package Customers are calculated as item units) </font> </td>

                        <td align="right"><font color="blue">Total Records = <%=totalrecords%></font></td>
                       
                            <td align="right"> <INPUT NAME="export" TYPE="button" VALUE="Export to Excel" onclick="generateexcel();" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                            </td>
                       
                        </tr>
                    </table>
                    <%
                                } else {
                                }
                    %>

    
</body>
</html>
