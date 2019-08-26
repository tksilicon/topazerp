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
         <style>
            table.rowHover tr:hover{ background-color:  orange; }
           table.rowHover TR:hover{ background-color:  orange; }

        </style>
    </head>
    <body>
        <table align="center" class="alt1" dir="LTR"  id="customer"  frame="border"  width="940"  cellspacing="1">

            <TR valign="center" bgcolor="#333366" align="center" height="30">
                

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">S/N</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Branch</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Expense Date</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">From Account</FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Receiver</FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Address</FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Phone No</FONT></TD>
              
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Total Amt(=N=)</FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Description</FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Amt Paid(=N=)</FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Balance(=N=)</FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Approved By</FONT></TD>

                  <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Expense Type</FONT></TD>
                
               
            </TR>
            <%

                try {

                    SQLconnector sqlcon = new SQLconnector();
                    Connection con = sqlcon.getCon();

                    Statement st = con.createStatement();

                    String sql = "select * from expensesarch";

                    ResultSet set = st.executeQuery(sql);

            %>
            <%
                while (set.next()) {
            %>
            <TR bgcolor="#eeeeee">
                <TD align="center" height="25"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getInt(1)%></FONT></TD>
                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= set.getString(2)%></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><a href=""><%= set.getString(3)%></a></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><a href=""><%=set.getString(4)%></a></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString(5)%></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= set.getString(6)%></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString(7)%></FONT></TD>
                
                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString(8)+"0"%></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString(9)%></FONT></TD>
                
                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString(10)+"0"%></FONT></TD>
                
                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= set.getString(11)+"0" %></FONT></TD>
                
                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString(12)%></FONT></TD>
                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString(13)%></FONT></TD>

               
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

        <table align="center" dir="LTR"  id="customer"  frame="border"  width="940"  height="45" valign="top">

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

</body>
</html>
