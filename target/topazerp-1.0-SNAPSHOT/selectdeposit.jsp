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
       
       
        <table align="center"  class="alt1"  frame="border"  id="customer" width="720"  height="100" valign="top" cellpadding="1" cellspacing="1">

            <TR valign="center" bgcolor="#333366" align="center" height="30">
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"> S/N</FONT></TD>
                 <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Date</FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Teller Number</FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Depositor's Name</FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Amount(=N=)</FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Bank</FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">From Account</FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Void</FONT></TD>

            </TR>
            <%

                try {

                    SQLconnector sqlcon = new SQLconnector();
                    Connection con = sqlcon.getCon();

                    Statement st = con.createStatement();

                    String sql = "select * from deposit";

                    ResultSet set = st.executeQuery(sql);

            %>
            <%
                while (set.next()) {
            %>

            <tr bgcolor="#eeeeee">
                <TD align="center" height="25"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getInt("id")%></FONT></TD>
                
                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("date")%></FONT></TD>
               
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= set.getString("tellerno")%></FONT></TD>
               
                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("depositor")%></FONT></TD>
               
                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getFloat("amount")+"0"%></FONT></TD>
                
                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("bank")%></FONT></TD>
               
                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("account")%></FONT></TD>
                
               <td align="center"><a href="deleting.jsp?deletedeposit=<%=set.getInt("id")%>"><input type="button" name="Delete" value="Void" style="background-color:#ff0000;font-weight:bold; font-size: x-small; color:#ffffff;" onclick="javascript:return confirm('Are you sure you want to void this deposit ?')"  ></a></td>

            </tr>
                <%
                        }
                  con.close();
                    } catch (SQLException e) {
                        out.print(e);
                    }


                %>
       </table>

        <table align="center" dir="LTR"   frame="border"  width="720"  height="30" valign="top">

            <tr align="left" width="100">
            <form>
                <td align="left"> <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                         ONCLICK="printDiv()" />
                </td>
            </form>

            <form action="insert.jsp" method="post">
                <td align="right"> <INPUT NAME="export4" TYPE="submit" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                </td>
            </form>
        </tr>
    </table>

</body>
</html>
