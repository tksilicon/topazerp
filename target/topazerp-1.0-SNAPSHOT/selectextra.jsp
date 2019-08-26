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

        <table align="center" class="rowHover"   frame="border"  id="customer" width="750"   cellspacing="1">

            <TR valign="center" bgcolor="#333366" align="center" height="30">

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">S/N </FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Reg. Date </FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Extra_Charge_Name </FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Description </FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Price </FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Update </FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Delete </FONT></TD>
               

            </TR>
            <%

                try {

                    SQLconnector sqlcon = new SQLconnector();
                    Connection con = sqlcon.getCon();

                    Statement st = con.createStatement();

                    String sql = "select * from extracharge";

                    ResultSet set = st.executeQuery(sql.toUpperCase());

            %>
            <%
                while (set.next()) {
            %>

            <TR bgcolor="#eeeeee">
                <TD align="center" height="25"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("id".toUpperCase())%></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("regdate".toUpperCase())%></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%= set.getString("extra_charge_name".toUpperCase())%></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("description")%></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getFloat("price")%></FONT></TD>
                
                <td align="center"><input type="button" name="delete" value="Update" style="background-color:#ff0000;font-weight:  bold;font-size: x-small; color:#ffffff;" onclick="deleteRecord(<%=set.getString(1)%>);" ></td>
                <td align="center"><input type="button" name="delete" value="Delete" style="background-color:#ff0000;font-weight:  bold;font-size: x-small; color:#ffffff;" onclick="deleteRecord(<%=set.getString(1)%>);" ></td>

                <%
                        }
                  con.close();
                    } catch (SQLException e) {
                        out.print(e);
                    }


                %>

        </table>

        <table align="center" dir="LTR"   frame="border"  width="750"  height="30" valign="top">

            <tr align="left" width="100">
           
                <td align="left"> <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                         ONCLICK="printDiv()" />
                </td>
            
                <td align="right"> <INPUT NAME="export" TYPE="button" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                </td>
           
        </tr>
    </table>
</body>
</html>
