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
         <link rel="icon"  type="image/gif" href="logo.gif">
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

        <%
            String dt = "";
            String regno = "";
            String categoryid = "";
            String name = "";
            String description = "";
            String price = "";
            String state = "";
            String country = "";
            String dob = "";
            String gender = "";
            String phone = "";
        %>


        <table align="center" class="rowHover" dir="LTR"  id="customer"  frame="border"  width="940"  height="100" valign="top">

            <TR valign="center" bgcolor="#333366" align="center" height="30">

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">S/N</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Branch</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Expense Date</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Receiver</FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Address</FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Total Amount(=N=)</FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Balance(=N=)</FONT></TD>
                

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Delete</FONT></TD>


            </TR>
            <%
            int i =0;
                try {

                    SQLconnector sqlcon = new SQLconnector();
                    Connection con = sqlcon.getCon();

                    Statement st = con.createStatement();

                    String sql = "select * from expenses where balance >0";

                    ResultSet set = st.executeQuery(sql);

            %>
            <%
                while (set.next()) {
            %>

            <TR bgcolor="#eeeeee">
                
                <TD align="center" height="25"><FONT FACE="tahoma" SIZE="2" color="grey"><a href=""><%= set.getInt("id")%></a></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="grey"><%=set.getString("branch")%></FONT></TD>
                
                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="grey"><%=set.getString("Expense_Date")%></FONT></TD>
                
                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="grey"><a href=""><%= set.getString("receiver")%></a></FONT></TD>
                
                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="grey"><a href=""><%= set.getString("address")%></a></FONT></TD>
                
                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="grey"><%=set.getFloat("total_amount")+"0"%></FONT></TD>
                
                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="grey"><%=set.getFloat("balance")+"0"%></FONT></TD>
                


                <td align="center"><input type="button" name="Delete" value="Delete" style="background-color:#ff0000;font-weight:bold; font-size: x-small; color:#ffffff;" onclick="deleteRecord(<%=set.getString(1)%>);" ></td>


            </TR>
            <tr>

            </tr>
            <%
            i++;
                    }
                } catch (SQLException e) {
                    out.print(e);
                }


            %>



        </table>
        <table align="center" dir="LTR" frame="border"  width="940"  height="30" valign="top">

            <tr align="left" width="100">
            <form>
                <td align="left"> <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                         ONCLICK="printDiv()" />
                </td>
            </form>
             <form action="mychart.jsp" method="post">
                <td align="left"> <INPUT NAME="accountpay" TYPE="submit" VALUE="Create Bar Chart" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                        />
                </td>
            </form>
             <td><font color="blue"> Total Records = <%=i%></font></td>
            <form action="insert.jsp" method="post">
                <td align="right"> <INPUT NAME="export6" TYPE="submit" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                </td>
            </form>
        </tr>
    </table>
</body>
</html>
