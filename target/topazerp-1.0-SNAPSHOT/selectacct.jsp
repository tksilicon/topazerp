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
<%@page  import="java.text.DecimalFormat" %>
<%@page import="java.lang.NullPointerException" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
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

        <table align="center" class="alt1"   frame="border"  id="customer" width="680"  height="100" valign="top" cellspacing="1" >

            <TR valign="center" bgcolor="#333366" align="center" height="30">
               
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Account Code</B></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Account Name</B></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Account Type</B></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Balance(=N=)</B></FONT></TD>
                
                

            </TR>
            <%
 DecimalFormat formatter = new DecimalFormat("###,###,###");
                try {

                    SQLconnector sqlcon = new SQLconnector();
                    Connection con = sqlcon.getCon();

                    Statement st = con.createStatement();

                    String sql = "select * from account order by accounttype asc";

                    ResultSet set = st.executeQuery(sql);

            %>
            <%
                while (set.next()) {
            %>
            
           <tr bgcolor="#eeeeee">
               
               <TD align="center" height="25"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("accountno")%></FONT></TD>
                
                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= set.getString("accountname")%></FONT></TD>
                
                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("accounttype")%></FONT></TD>
                
                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat("balance"))%></FONT></TD>
                
                
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
            
            <form action="mychart.jsp" method="post">
                <td align="left"> <INPUT NAME="account" TYPE="submit" VALUE="Create Bar Chart" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                        />
                </td>
            </form>

            <form action="insert.jsp" method="post">
                <td align="right"> <INPUT NAME="export2" TYPE="submit" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                </td>
            </form>
        </tr>
    </table>



</body>
</html>
