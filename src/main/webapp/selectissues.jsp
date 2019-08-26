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
           table.rowHover TR:hover{ background-color:  orange; }

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
    </head>
    <body>

        <table align="center"  class="rowHover"  frame="border"  id="customer" width="940"  cellspacing="1">
           
            <TR valign="center" bgcolor="#333366" align="center" height="30">
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>S/N</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Date</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Name</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Quantity</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Unit Price</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Total</B></FONT></TD>
            </TR>
            <%
             DecimalFormat formatter = new DecimalFormat("###,###,###");
                try {
                    SQLconnector sqlcon = new SQLconnector();
                    Connection con = sqlcon.getCon();
                    Statement st = con.createStatement();
                    String sql = "select * from issues ";
                    ResultSet set = st.executeQuery(sql);
            %>
            <%
                while (set.next()) {
            %>

            <TR bgcolor="#eeeeee"  height="25">
                <TD align="center" height="25"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getInt(1)%></FONT></TD>

                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(2)%></FONT></TD>

                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(3)%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(4)%></FONT></TD>

                 <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat(5)) %></FONT></TD>

                 <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat(6)) %></FONT></TD>

            </TR>
        <%
                }
                  con.close();
            } catch (SQLException e) {
                out.print(e);
            }
        %>
    </table>
    <table align="center" dir="LTR"   frame="border"  width="940"  height="30" valign="top">
        <tr align="left" width="100">
        <form>
            <td align="left"> <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                     ONCLICK="printDiv()" />
            </td>
        </form>
        <form action="displayissues.jsp" method="get">
            <td align="left"> <INPUT NAME="products" TYPE="submit" VALUE="Issues Reports" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                     />
            </td>
        </form>
        <form action="displaypurchase.jsp" method="get">
            <td align="left"> <INPUT NAME="products" TYPE="submit" VALUE="Purchase Reports" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                     />
            </td>
        </form>

        <form >
            <td align="right"> <INPUT NAME="export9" TYPE="submit" VALUE="Export to Excel" onclick="generateexcel();" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
            </td>
        </form>
    </tr>
</table>
</body>
</html>
