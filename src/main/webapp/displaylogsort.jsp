<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }
    session.setAttribute("pageinfo2", "Login Info");
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="newpackage.*" %>
<%@page import="Classespack.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*" %>
<%@page import="java.text.DecimalFormat" %>
<%@page import="java.lang.NullPointerException" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon"  type="image/gif" href="echelon1.gif">
        <title>Login Info</title>
        <script type="text/javascript">
            function printDiv()
            {
                var divToPrint = document.getElementById('income');
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
                var table = document.getElementById('income');
                var html = table.outerHTML;
                window.open('data:application/vnd.ms-excel,' + encodeURIComponent(html));
            }
        </script>
        <style>
            table.Hover tr:hover{ background-color:  orange; }
            table.Hover TR:hover{ background-color:  orange; }

        </style>
    </head>
    <body>

        <jsp:include flush="true" page="webheader.jsp" ></jsp:include>

        <jsp:include flush="true" page="pageheader.jsp" ></jsp:include>

            <table align="center" bgcolor="white" width="1205" height="360" frame="border">

                <tbody align="left">

                <td align="left" width="210" valign="top"> <jsp:include page="menu.jsp" flush="true"></jsp:include></td>
                <td align="center" width="300"  valign="top">
                    <div align="center"   style=" overflow-y: scroll;  height:85px;">

                        <form action="displaylogsort.jsp" method="post">
                            <table width="350" align="center"  style=" margin-bottom: 10px; margin-top: 10px;" >
                                <tr>
                                    <td>From:</td>
                                    <td><input type="text" size="15" name="fromdate" value="<%=session.getAttribute("mynewdate")%>"></td>
                                <td width="20"></td>
                                <td>To:</td>
                                <td><input type="text" size="15" name="todate" value="<%=session.getAttribute("mynewdate")%>"></td>
                                <td><input type="submit" name="invoicesort" value="View"></td>
                            </tr>
                        </table>
                    </form>

                    <table align="center" dir="LTR"  frame="border"  width="600"  height="30" valign="top" cellpadding="1" cellspacing="1">

                        <TR valign="center" bgcolor="navy" align="center" height="30">

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white">id</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white">UserName</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white">Login Date</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white">Login Time</FONT></TD>
                        </TR>
                    </table>
                </div>

                <div align="center"   style=" overflow-y: scroll;  height: 480px;" >
                    <%
                        DecimalFormat formatter = new DecimalFormat("###,###,###");
                        String rd = "";
                        if (request.getParameter("invoicesort") != null) {

                            String value = request.getParameter("fromdate");
                            String d1 = String.valueOf(value);

                            String value2 = request.getParameter("todate");
                            String d2 = String.valueOf(value2);

                            try {
                                SQLconnector sqlcon = new SQLconnector();
                                Connection con = sqlcon.getCon();

                                Statement st = con.createStatement();

                                ResultSet rs = st.executeQuery("SELECT  date(now()) from admin");


                                while (rs.next()) {

                                    rd = rs.getString(1);
                                }
                                con.close();
                            } catch (Exception e) {
                            }

                    %>

                    <table align="center" dir="LTR"  class="Hover" id="income"  frame="border"  width="600" cellpadding="1" cellspacing="1">

                        <TR valign="center" bgcolor="navy" align="center" height="30">

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white">id</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white">UserName</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white">Login Date</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white">Login Time</FONT></TD>
                        </TR>
                        <%
                            try {


                                SQLconnector sqlcon = new SQLconnector();

                                Connection con = sqlcon.getCon();

                                Statement st = con.createStatement();

                                String sql = "SELECT id, username, date,  time from log where date between '" + d1 + "' and '" + d2 + "' order by id desc";

                                //String sql = " SELECT branch, Date,  invoiceid, amtpaid from ourinvoice where amtpaid >0 AND  branch = '"+session.getAttribute("mybranch")+" order by invoiceid desc' UNION ALL SELECT branch, Date, invoiceid, amtpaid  from pickup where amtpaid >0 AND  branch = '"+session.getAttribute("mybranch")+"' order by invoiceid desc ";

                                ResultSet set = st.executeQuery(sql);
                        %>
                        <%
                            while (set.next()) {
                        %>
                        <TR bgcolor="#eeeeee" height="25">

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getInt("id")%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("username")%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("date")%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("time")%></FONT></TD>

                        </TR>
                        <tr>

                        </tr>
                        <%
                                    }
                                    con.close();
                                } catch (SQLException e) {
                                    out.print(e);
                                }
                            }

                        %>

                    </table>
                    <table align="center" dir="LTR"   frame="border"  width="600"  height="30" valign="top">

                        <tr align="left" width="100">
                        <form>
                            <td align="left"> <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                                     ONCLICK="printDiv()" />
                            </td>
                        </form>


                        <td align="right"> <INPUT NAME="export11" TYPE="button" onclick="generateexcel();" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                        </td>
                        </tr>
                    </table>


        </table>
    </div>
</td>

<%--
<p align="center"> <jsp:include page="Movie2.html" flush="true"></jsp:include></p>
--%>

</tbody>

</table>

<jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>