<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }
    session.setAttribute("pageinfo2", "Pension Info.");
%>

<%-- 
    Document   : welcome
    Created on : Feb 26, 2012, 6:15:00 AM
    Author     : deji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="newpackage.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*" %>
<%@page  import="java.text.DecimalFormat" %>
<%@page import="java.lang.NullPointerException" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon"  type="image/gif" href="echelon1.gif">
        <title>Pension Reports</title>
        <script>
            function printDiv()
            {
                var divToPrint=document.getElementById('customer');
                newWin= window.open("");
                newWin.document.write(divToPrint.outerHTML);
                newWin.print();
                newWin.close();
            }
        </script>
    </head>
    <body>

        <jsp:include flush="true" page="webheader.jsp" ></jsp:include>


        <jsp:include flush="true" page="pageheader.jsp" ></jsp:include>



            <table align="center" bgcolor="white" width="1205" height="400" frame="border">

                <tbody align="left">

                <td align="left" width="150"  valign="top"> <jsp:include page="menu.jsp" flush="true"></jsp:include>  </td>
                <td align="left" width="210" valign="top">
                    <div align="center"   style=" overflow-y: scroll;  height: 580px;" > 
                        <table align="center" class="rowHover"   frame="border"  id="customer" width="680"  height="100" valign="top" cellspacing="1" >

                            <TR valign="center" bgcolor="#333366" align="center" height="30">

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>Id</B></FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>Employee</B></FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>Month</B></FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>Year</B></FONT></TD>
                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>Amount</B></FONT></TD>

                            </TR>
                        <%
                            DecimalFormat formatter = new DecimalFormat("###,###,###");
                            try {

                                SQLconnector sqlcon = new SQLconnector();
                                Connection con = sqlcon.getCon();

                                Statement st = con.createStatement();

                                String sql = "select * from pension order by employee asc";

                                ResultSet set = st.executeQuery(sql);

                        %>
                        <%
                            while (set.next()) {
                        %>

                        <tr bgcolor="#eeeeee">

                            <TD align="center" height="25"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("id")%></FONT></TD>

                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%= set.getString("employee")%></FONT></TD>

                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("month")%></FONT></TD>

                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("year")%></FONT></TD>


                            <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat("amount"))%></FONT></TD>

                        </tr>

                        <%
                                }
                            } catch (SQLException e) {
                                out.print(e);
                            }
                        %>

                    </table>

                    <table align="center" dir="LTR"   frame="border"  width="680"  height="30" valign="top">

                        <tr align="left" width="100">
                        <form>
                            <td align="left"> <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                                     ONCLICK="printDiv()" />
                            </td>
                        </form>

                        
                            <td align="left"> <INPUT NAME="account" TYPE="submit" VALUE="Create Bar Chart" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                                     />
                            </td>
                     

                        <form action="insert.jsp" method="post">
                            <td align="right"> <INPUT NAME="export2" TYPE="submit" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                            </td>
                        </form>
                        </tr>
                    </table>
                </div>  
            </td>

            <td align="right" valign="top" bgcolor="#663399" width="120" >
                <jsp:include page="otherreport.jsp" flush="true"></jsp:include>
                </td>
            </tbody>

        </table>

    <jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>
