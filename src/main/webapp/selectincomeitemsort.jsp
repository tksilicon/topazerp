<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }
    session.setAttribute("pageinfo", "Incoming Items");
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
            var divToPrint=document.getElementById('customer');
            newWin= window.open("");
            newWin.document.write(divToPrint.outerHTML);
            newWin.print();
            newWin.close();
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
            window.location = elm.value+".jsp";
            }
        </script>
        <script type="text/javascript">   
            function signout()
            {

            window.location.href="signout.jsp";
            }
        </script>
        <style type="css/text">
            table.rowHover tr:hover{ background-color:  orange; }
            table.rowHover TR:hover{ background-color:  orange; }

        </style>
        <title>Incoming Items</title>
    </head>
    <body>


        <jsp:include flush="true" page="cshead.jsp"></jsp:include>

            <table align="center" bgcolor="white" width="1205" height="600" frame="border">
                <tbody align="left">
                <td>
                    <div align="right"    style=" overflow-y: scroll;  border:  scrollbar; width: 1190px; height: 580px;" >

                        <form action="selectincomeitemsort.jsp" method="post">
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
                    <table align="center"   class="alt1" frame="border"  id="customer" width="1100"   cellspacing="1" style=" margin-top: 15px;">

                        <TR valign="center" bgcolor="#333366" align="center" height="30">


                            <TH align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Branch</B></FONT></TH>
                            <TH align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Date</B></FONT></TH>
                            <TH align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Cust. Id</B></FONT></TH>
                            <TH align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Invoice No</B></FONT></TH>
                            <TH align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Item</B></FONT></TH>
                            <TH align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Price</B></FONT></TH>

                            <TH align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Quantity</B></FONT></TH>

                            <TH align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Pieces</B></FONT></TH>

                            <TH align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Total Pcs</B></FONT></TH>

                            <TH align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Description</B></FONT></TH>

                            <TH align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Color</B></FONT></TH>

                            <TH align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Total</B></FONT></TH>
                            <TH align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>User</B></FONT></TH>


                        </TR>
                        <%

                            if (request.getParameter("invoicesort") != null) {

                                String value = request.getParameter("fromdate");
                                String d1 = String.valueOf(value);

                                String value2 = request.getParameter("todate");
                                String d2 = String.valueOf(value2);


                                try {

                                    SQLconnector sqlcon = new SQLconnector();
                                    Connection con = sqlcon.getCon();

                                    Statement st = con.createStatement();

                                    String sql = "select  * from invoicebody where indate between '"+d1+"' and '"+d2+"' and branch = '" + session.getAttribute("mybranch") + "'";

                                    ResultSet set = st.executeQuery(sql);

                        %>
                        <%
                            while (set.next()) {
                        %>

                        <TR bgcolor="#eeeeee">

                            <TD align="left" height="25"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("branch")%></FONT></TD>

                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("indate")%></FONT></TD>


                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("custid")%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("invoiceid")%></FONT></TD>

                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("items")%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("price")%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= set.getString("qty")%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("pcs")%></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("totalqty")%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("des")%></FONT></TD>

                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("color")%></FONT></TD>                         

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("total")%></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("admin")%></FONT></TD>


                        </TR>

                        <%
                                    }
                                    con.close();
                                } catch (SQLException e) {
                                    out.print(e);
                                }

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
                            <td align="right"> <INPUT NAME="export" TYPE="button" VALUE="Export to Excel" onclick="generateexcel();" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
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
