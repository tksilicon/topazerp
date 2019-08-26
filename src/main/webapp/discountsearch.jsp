<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }
    session.setAttribute("pageinfo", "Discount Customers");
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
            function printDiv()
            {
                var divToPrint = document.getElementById('customer');
                newWin = window.open("");
                newWin.document.write(divToPrint.outerHTML);
                newWin.print();
                newWin.close();
            }
        </script>
        <style>
            table.rowHover tr:hover{ background-color:  orange; }
            table.rowHover TR:hover{ background-color:  orange; }

        </style>
        <title>Discount</title>
    </head>
    <body>
        <jsp:include flush="true" page="cshead.jsp"></jsp:include>
            <table align="center" bgcolor="white" width="1205" height="600" frame="border">
                <tbody align="left">
                <td align="left" valign="top">
                    <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff; height:  35px;" 
                           ONCLICK="printDiv();" />

                    <INPUT TYPE="button" VALUE="Export to Excel" onclick="generateexcel();" style="background-color:#330099; font-weight:bold; color:#ffffff;  height:  35px;"  />
                </td>
                <td align="left">
                    <br>
                    <form action="discountsearch.jsp" method="post">

                        <table width="600" align="center"  >
                            <tr>
                                <td>Enter Customer's Name:
                                    <input type="text" size="30" name="name" value="">
                                    <input type="submit" name="searchname" value="Search"></td>

                            </tr>
                        </table>

                    </form>
                    <br>
                    <div align="center"    style=" overflow-y: scroll;  border:  scrollbar; width: 700px; height: 580px;" >
                        <table align="center" class="rowHover"   frame="border"  id="customer" width="600"  height="50" valign="top" cellspacing="1">
                            <TR valign="center" bgcolor="#333366" align="center" height="30">

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>S/N</B></FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>Cust. no</B></FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>Customer's Name</B></FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>Discount (%)</B></FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>Update</B></FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>Delete</B></FONT></TD>

                            </TR>
                        <%
                            if (request.getParameter("searchname") != null) {
                                String value = request.getParameter("name");
                                String kw = String.valueOf(value);
                                try {
                                    SQLconnector sqlcon = new SQLconnector();
                                    Connection con = sqlcon.getCon();

                                    Statement st = con.createStatement();

                                    String sql = "select * from discount where name like '%" + kw + "%' order by custid asc";

                                    ResultSet set = st.executeQuery(sql);

                                    //session.setAttribute("custno", kw);
%>
                        <%
                            int i = 1;
                            while (set.next()) {
                        %>



                        <TR bgcolor="#eeeeee">
                            <TD align="center" height="25"><FONT FACE="tahoma" SIZE="2" color="gray"><%=i%></FONT></TD>

                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(1)%></FONT></TD>

                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(2)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(3)%></FONT></TD>

                            <td align="center"><a href="#"><img src="images/upimg.gif" style="font-weight:bold; font-size: x-small; color:#ffffff;"  ></a></td>

                            <td align="center"><a href="deleting.jsp?deletediscount=<%=set.getString(1)%>"><img src="images/delete.gif"  onclick="javascript:return confirm('Are you sure you want to delete this package order ?')" style="font-weight: bold;font-size: x-small; color:#ffffff;" ></a></td>

                        </TR>

                        <%
                                        i++;
                                    }
                                    con.close();
                                } catch (SQLException e) {
                                    out.print(e);
                                }
                            } else {
                            }
                        %>
                    </table>

                    <table align="center" dir="LTR"   frame="border" width="600"  height="30" valign="top">

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