<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }
    session.setAttribute("pageinfo", "Invoice details");
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
<%@page  import="Classespack.*" %>
<%@page import="java.lang.NullPointerException" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon"  type="image/gif" href="logo.gif">
        <script type="text/javascript">
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
        <script type="text/javascript">
            function signout()
            {

                window.location.href = "signout.jsp";
            }
        </script>
        <style type="text/css">
            table.rowHover tr:hover{ background-color:  orange; }
            table.rowHover TR:hover{ background-color:  orange; }

        </style>
        <title>Invoice Generation</title>
    </head>
    <body>

        <jsp:include flush="true" page="cshead.jsp"></jsp:include>

            <table align="center" bgcolor="white" width="1205" height="500" frame="border">
                <tbody align="left">
                <td>

                    <div align="right"    style=" overflow-y: scroll;  border:  scrollbar; width: 1190px; height: 480px;" >
                        <table align="center"  class="rowHover"  frame="border" height="50" width="1100"  cellspacing="1">
                        <%

                           

                            try {

                                 SQLconnector sqlcon = new SQLconnector();
                            Connection con = sqlcon.getCon();
                                if (request.getParameter("invidd") != null) {
                                    String value = request.getParameter("invidd");
                                    String kw = String.valueOf(value);
                                    Statement st = con.createStatement();

                                    String sql = "select * from ourinvoice where invoiceid = '" + kw + "'";

                                    ResultSet set = st.executeQuery(sql);

                        %>
                        <%
                            while (set.next()) {
                        %>

                        <tr  bgcolor="#eeeeee">
                            <td><font FACE="tahoma" SIZE="2" color="blue">Invoice id</font></td>
                            <td> <input type="text" size="15" value="<%=set.getString("invoiceid")%>"> </td>
                            <td><font FACE="tahoma" SIZE="2" color="blue">Customer's Name</font></td>
                            <td> <input type="text" size="25" value="<%=set.getString("custname")%>"> </td>
                            <td><font FACE="tahoma" SIZE="2" color="blue">Total Pcs</font></td>
                            <td> <input type="text" size="15" value="<%=set.getInt("totalqty")%>"> </td>
                            <td><font FACE="tahoma" SIZE="2" color="blue">Total Amt</font></td>
                            <td> <input type="text" size="15" value="<%=set.getString("grandtotal")%>"> </td>
                            <td><font FACE="tahoma" SIZE="2" color="blue">Amt Paid</font></td>
                            <td> <input type="text" size="15" value="<%=set.getString("amtpaid")%>"> </td>
                            <td><font FACE="tahoma" SIZE="2" color="blue">Balance</font></td>
                            <td> <input type="text" size="15" value="<%=set.getString("balance")%>"> </td>
                        </tr>
                        <%
                                    }
                                    con.close();
                                }

                            } catch (SQLException e) {
                                out.print(e);
                            }
                        %>

                    </table>
                    <table align="center"  class="rowHover"  frame="border"  id="customer" width="1100"  height="100" valign="top" cellspacing="1">

                        <TR valign="center" bgcolor="#333366" align="center" height="30">

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>item Id</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Branch</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Date</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Cust. Id</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Invoice No</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Item</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Price</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Quantity</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Pieces</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Total Pcs</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Description</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Color</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Total</B></FONT></TD>

                        </TR>
                        <%

                            try {
                                 SQLconnector sqlcon = new SQLconnector();
                            Connection con = sqlcon.getCon();
                                if (request.getParameter("invidd") != null) {
                                    String value = request.getParameter("invidd");
                                    String kw = String.valueOf(value);


                                    Statement st = con.createStatement();

                                    String sql = "select * from invoicebody where invoiceid = '" + kw + "'";

                                    ResultSet set = st.executeQuery(sql);

                        %>
                        <%
                            while (set.next()) {
                        %>

                        <TR bgcolor="#eeeeee">
                            <TD align="center" height="25"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(1)%></FONT></TD>

                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(2)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray" > <a href=""><%=set.getString(3)%></a></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(4)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(5)%></FONT></TD>

                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(6)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getFloat(7)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%= set.getInt(8)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getInt(9)%></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getInt(10)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(11)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(12)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getFloat(13)%></FONT></TD>

                        </TR>

                        <%
                                    }
                                }
                                con.close();
                            } catch (SQLException e) {
                                out.print(e);
                            }
                            
                        %>
                    </table>

                    <table align="center" dir="LTR"   frame="border"  width="1100"  height="30" valign="top">

                        <tr align="left" width="100">
                        <form>
                            <td align="left"> <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                                     ONCLICK="printDiv()" />
                            </td>
                        </form>

                        <form>
                            <td align="right"> <INPUT NAME="export" TYPE="button" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                            </td>
                        </form>
                        </tr>
                    </table>

                </div>
            </td>
        </tbody>
    </table>

    <jsp:include page="footer_1.jsp" flush="true"></jsp:include>
</body>
</html>
