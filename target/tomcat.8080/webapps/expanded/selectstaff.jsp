
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
                    String staffno = "";
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


        <table align="center" dir="LTR"  class="alt1"  frame="border"  id="customer" width="940"  cellpadding="1" cellspacing="1">

            <TR valign="center" bgcolor="#333366" align="center" height="30">
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Branch</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Reg.Date </FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Staff Id </FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">SurName </FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">FirstName  </FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">otherName </FONT></TD>


                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Phone No </FONT></TD>


                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Address </FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">State </FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Country </FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">DoB </FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Empl. Type </FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">User Name </FONT></TD>


                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Dept. </FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Level </FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Status </FONT></TD>

              
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">UD </FONT></TD>

            </TR>
            <%

                        try {

                            SQLconnector sqlcon = new SQLconnector();
                            Connection con = sqlcon.getCon();

                            Statement st = con.createStatement();

                            String sql = "select * from admin";

                            ResultSet set = st.executeQuery(sql);

            %>
            <%
                                while (set.next()) {
            %>

            <TR bgcolor="#eeeeee">
                <TD align="center" height="25"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= dt = set.getString("branch")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= dt = set.getString("Date")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= staffno = set.getString("staffno")%></FONT></TD>

                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><a href=""><%= categoryid = set.getString("surname".toUpperCase())%></a></FONT></TD>

                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= name = set.getString("firstname")%></FONT></TD>

                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= description = set.getString("othername")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= description = set.getString("phoneno")%></FONT></TD>

                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= price = set.getString("address")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= state = set.getString("State")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= country = set.getString("country")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= dob = set.getString("dob")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= dob = set.getString("Emptype")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= description = set.getString("username")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= dob = set.getString("department")%></FONT></TD>
                 <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= dob = set.getString("level")%></FONT></TD>
                <TD align="center" onclick="javascript:return confirm('Are you sure you want to Activate or Deactivate this Staff')"><FONT FACE="tahoma" SIZE="2" color="gray"><a href="deleting.jsp?activatestaff=<%=set.getString("staffno")%> " title="Click to Activate or Deactivate Staff"><%= dob = set.getString("Status")%></a></FONT></TD>

                <td align="center"><a href="displaystaffupdate.jsp?updatestaff=<%=set.getString("staffno")%>"><input type="button" name="delete" value="UD" style="background-color:#ff0000;font-weight: bold;font-size: x-small; color:#ffffff;"></a></td>

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
              <td align="center"><a href="deleting.jsp?actstaff=<%=staffno%>"><input type="button" name="delete" value="Activate All Staff" style="background-color:#ff0000;font-weight: bold;font-size: x-small; color:#ffffff;"></a></td>
                <td align="center"><a href="deleting.jsp?actastaff=<%=staffno%>"><input type="button" name="delete" value="De-activate All Staff" style="background-color:#ff0000;font-weight: bold;font-size: x-small; color:#ffffff;"></a></td>

            <form action="insert.jsp" method="post">
                <td align="right"> <INPUT NAME="export10" TYPE="submit" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                </td>
            </form>
        </tr>
    </table>

</body>
</html>
