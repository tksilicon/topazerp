<%-- 
    Document   : insert
    Created on : Aug 10, 2012, 11:06:27 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="newpackage.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*" %>
<%@page import="java.lang.NullPointerException" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            table.rowHover tr:hover{ background-color:  orange; }
            table.rowonClick tr:select{background-color: inherit;}

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
        </script>

    </head>
    <body>
        
        <table style=" " align="center" dir="LTR"  id="customer"  class="rowHover" frame="border"  width="740"  height="100" valign="top">

            <TR valign="center" bgcolor="#333366" align="center" height="30">

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">S/N</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Date</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Gov. Agent</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Description</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Total Amt Due</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Amount Paid</FONT></TD>
                 <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Balance</FONT></TD>

                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Delete</FONT></TD>
            </TR>
            <%

              

                    try {

                        SQLconnector sqlcon = new SQLconnector();
                        Connection con = sqlcon.getCon();

                        Statement st = con.createStatement();

                        String sql = "select * from paytax ";

                        ResultSet set = st.executeQuery(sql);

            %>
            <%
                while (set.next()) {
            %>
            <TR bgcolor="#eeeeee">
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getInt(1)%></FONT></TD>
                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(2)%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><a href=""><%=set.getString(3)%></a></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><a href=""><%= set.getString(4)%></a></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%= set.getString(5)%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%= set.getString(6)%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(7)%></FONT></TD>

             

                <td align="center"><a href="deleting.jsp?deletetax=<%=set.getInt("id")%>"><input type="button" name="Delete" value="Void" onclick="javascript:return confirm('You are about to delete this expenses')" style="background-color:#ff0000;font-weight:bold; font-size: x-small; color:#ffffff;"  ></a></td>

            </TR>
            <tr>

            </tr>
            <%

                        }
                con.close();
                    } catch (SQLException e) {
                        out.print(e);
                    }
              
            %>

        </table>
        <table align="center" dir="LTR"   frame="border"  width="740"  height="30" valign="top">

            <tr align="left" width="100">
            <form>
                <td align="left"> <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                         ONCLICK="printDiv()" />
                </td>
            </form>

            <form >
                <td align="right"> <INPUT NAME="export3" TYPE="submit" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                </td>
            </form>
        </tr>
    </table>
</body>
</html>
