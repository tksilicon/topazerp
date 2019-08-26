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
         <style>
            table.rowHover tr:hover{ background-color:  orange; }
           table.rowHover TR:hover{ background-color:  orange; }

        </style>
    </head>
    <body>

        <table align="center" class="rowHover"   frame="border"  id="customer" width="740"   cellspacing="1">

            <TR valign="center" bgcolor="#333366" align="center" height="30">

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>S/N</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Date</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Staff</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Amount</B></FONT></TD>
                
               
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Payment Term</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Delete</B></FONT></TD>




            </TR>
            <%

                try {

                    SQLconnector sqlcon = new SQLconnector();
                    Connection con = sqlcon.getCon();

                    Statement st = con.createStatement();

                    String sql = "select * from loan";

                    ResultSet set = st.executeQuery(sql);

            %>
            <%
                while (set.next()) {
            %>



            <TR bgcolor="#eeeeee">
                <TD align="center" height="25"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getInt(1)%></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(2)%></FONT></TD>
                
                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(3)%></FONT></TD>
                
                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(4)%></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(5)%></FONT></TD>
                <td align="center" ><a href="deleting.jsp?deleteloan=<%=set.getInt(1)%>" ><input type="button" name="delete" value="Delete" onclick="javascript:return confirm('Are you sure you want to delete loan')"  style="background-color:#ff0000;font-weight:  bold;font-size: x-small; color:#ffffff;"  ></a></td>


            </TR>

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
            
            <form action="mychart" method="get">
                <td align="left"> <INPUT NAME="products" TYPE="submit" VALUE="Create Bar Chart" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                        />
                </td>
            </form>

            <form>
                <td align="right"> <INPUT NAME="export9" TYPE="submit" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                </td>
            </form>
        </tr>
    </table>



</body>
</html>
