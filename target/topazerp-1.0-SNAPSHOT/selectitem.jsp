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
        <style>
            table.rowHover tr:hover{ background-color:  orange; }
            table.rowHover TR:hover{ background-color:  orange; }

        </style>
        <script>
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
                var table= document.getElementById('customer');
                var html = table.outerHTML;
                window.open('data:application/vnd.ms-excel,' + encodeURIComponent(html));
            }
        </script>
    </head>
    <body>

        <table align="center"  class="alt1"  frame="border"  id="customer" width="740"  height="100" valign="top" cellspacing="1">

            <TR valign="center" bgcolor="#333366" align="center" height="30">

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>S/N</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Reg. Date</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Item Id</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Item's Name</B></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Item's Category</B></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Pieces</B></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Price1</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Price2</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Price3</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Package Unit</B></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Update Item</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Delete</B></FONT></TD>

            </TR>
            <%
                int i = 0;
                try {

                    SQLconnector sqlcon = new SQLconnector();
                    Connection con = sqlcon.getCon();

                    Statement st = con.createStatement();

                    String sql = "select * from products";

                    ResultSet set = st.executeQuery(sql);

            %>
            <%
                while (set.next()) {
            %>

            <TR bgcolor="#eeeeee">

                <TD align="center" height="25"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getInt("id")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("regdate")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("itemid")%></FONT></TD>

                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("itemname")%></FONT></TD>

                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%= set.getString("category")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("pieces")%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("price")%></FONT></TD>
                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("price2")%></FONT></TD>
                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("price3")%></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("price4")%></FONT></TD>

                <td align="center"><a href="updateproduct.jsp?updatepro=<%=set.getInt("id")%>"><img src="images/upimg.gif" alt="Update" style="font-weight:  bold;font-size: x-small; color:#ffffff;"  ></a></td>
                <td align="center" ><a href="deleting.jsp?deleteproduct=<%=set.getInt(1)%>" ><img src="images/delete.gif" alt="Delete" onclick="javascript:return confirm('Are you sure you want to delete this Item')"  style="font-weight:  bold;font-size: x-small; color:#ffffff;"  ></a></td>


            </TR>

            <%
                        i++;
                    }
                  con.close();
                } catch (SQLException e) {
                    out.print(e);
                }
               // con.close(); 

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
            <td><font color="blue"> Total Records = <%=i%></font></td>
            <form>
                <td align="right"> <INPUT NAME="export9" TYPE="button" VALUE="Export to Excel" onclick="generateexcel();" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                </td>
            </form>
        </tr>
    </table>



</body>
</html>
