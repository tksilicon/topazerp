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
        </script>
 <style>
            table.rowHover tr:hover{ background-color:  orange; }
           table.rowHover TR:hover{ background-color:  orange; }

        </style>
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


        <table align="center" dir="LTR" class="alt1"  id="customer"  frame="border"  width="900"  height="100" valign="top" cellspacing="1">

            <TR valign="center" bgcolor="#333366" align="center" height="30">
               
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Reg.Date</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Reg.No</FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Name</FONT></TD>
             
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Address</FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">State</FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Country</FONT></TD>
                                             
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Gender</FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Phone No</FONT></TD>
                       
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">E_Mail</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Type</FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Del</FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">UD</FONT></TD>

            </TR>
            <%

                try {

                    SQLconnector sqlcon = new SQLconnector();

                    Connection con = sqlcon.getCon();

                    Statement st = con.createStatement();

                    String sql = "select * from vendor";

                    ResultSet set = st.executeQuery(sql);

            %>
            <%
                while (set.next()) {
            %>

            <TR bgcolor="#eeeeee">
               
                <TD align="center" height="25"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("Date")%></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><a href="selectcccustpref.jsp?vname=<%=set.getString("vendorid")%>"><%= regno = set.getString("vendorid")%></a></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><a href=""><%= set.getString("name".toUpperCase())%></a></FONT></TD>
                             
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("address")%></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("State")%></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("country")%></FONT></TD>
                               
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("gender")%></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("phoneNo")%></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= dob = set.getString("email")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= dob = set.getString("type")%></FONT></TD>

                <td><a href="deleting.jsp?deletevendor=<%=set.getString("vendorid")%>" > <img src="images/delete.gif" onclick="javascript:return confirm('Are you sure you want to delete this vendor')" style="font-weight:bold; font-size: x-small; color:#ffffff;"  ></a></td>

                <td><a href="displayvendor.jsp?updatevendor=<%=set.getString("vendorid")%>" > <img src="images/upimg.gif" style="font-weight: bold;font-size: x-small; color:#ffffff;" ></a></td>

            </TR>
           
            <%
                    }
                con.close();
                } catch (SQLException e) {
                    out.print(e);
                }

            %>

        </table>
        <table align="center" dir="LTR"   frame="border"  width="900"  height="30" valign="top">

            <tr align="left" width="100">
            <form>
                <td align="left"> <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                         ONCLICK="printDiv()" />
                </td>
            </form>
          
            <form action="insert.jsp" method="post">
                <td align="right"> <INPUT NAME="export8" TYPE="submit" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                </td>
            </form>
        </tr>
    </table>
</body>
</html>
