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

        <table align="center"  class="rowHover"  frame="border"  id="customer" width="680"  height="100" valign="top">

            <TR valign="center" bgcolor="#333366" align="center" height="30">

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">S/N</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Branch</FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Date</FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Account From</FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Previous Balance</FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Amount</FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Account To</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Transfer By</FONT></TD>
               
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Void</FONT></TD>



            </TR>
            <%

                try {

                    SQLconnector sqlcon = new SQLconnector();
                    Connection con = sqlcon.getCon();

                    Statement st = con.createStatement();

                    String sql = "select * from fundtransfer";

                    ResultSet set = st.executeQuery(sql);

            %>
            <%
                while (set.next()) {
            %>



            <tr bgcolor="#eeeeee">
                <TD align="center" height="25"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getInt(1)%></FONT></TD>
               
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(2)%></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%= set.getString(3)%></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(4)%></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%="N"+set.getString(5)%></FONT></TD>
                
                 <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%="N"+set.getString(6)%></FONT></TD>
                
                 <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%= set.getString(7)%></FONT></TD>
                
                 <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%= set.getString(8)%></FONT></TD>
                
                
                <td align="center"><a href="deleting.jsp?deletefund=<%=set.getInt("id") %>"><input type="button" name="delete" value="Void" style="background-color:#ff0000;font-weight:  bold;font-size: x-small; color:#ffffff;"  ></a></td>


            </tr>

                <%
                        }
                  con.close();
                    } catch (SQLException e) {
                        out.print(e);
                    }


                %>



        </table>

        <table align="center" dir="LTR"   frame="border"  width="680"  height="30" valign="top">

            <tr align="left" width="100">
           
                <td align="left"> <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                         ONCLICK="printDiv()" />
                </td>
           

            <form action="insert.jsp" method="post">
                <td align="right"> <INPUT NAME="export2" TYPE="submit" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                </td>
            </form>
        </tr>
    </table>



</body>
</html>
