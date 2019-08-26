<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }
    session.setAttribute("pageinfo2", "Update Staff");
%>
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
        <form action="deleting.jsp" method="post">
            <table align="center" width="900" bgcolor="#eeeeee" height="50" frame="border">

                <tr width="400" align="left">
                    <%
                        SQLconnector sqlcon = new SQLconnector();
                        Connection con = sqlcon.getCon();
                        if (request.getParameter("updatestaff") != null) {
                            String value = request.getParameter("updatestaff");
                            String kw = String.valueOf(value);


                            try {

                                Statement st = con.createStatement();
                                ResultSet rs = st.executeQuery("select * from admin where staffno = '" + kw + "' ");
                                if (rs.next()) {

                                    // session.setAttribute("id", rs.getInt("id"));
                    %>
                <tr>
                    <td><font  face="arial" size="2" color="purple"> Reg.No:  </font> </td><td><input type="text" name="regno" size="4" readonly="readonly" value="<%=rs.getString("staffno")%>" > </td>

                    <td><font  face="arial" size="2"  color="purple">  SurName: </font> </td><td><input type="text" size="15"  name="surname" value="<%=rs.getString("surname")%>" > </td>

                    <td><font  face="arial" size="2"  color="purple"> FirstName: </font> </td><td><input type="text" size="15"  name="firstname" value="<%=rs.getString("firstname")%>" > </td>

                    <td><font  face="arial" size="2"  color="purple"> Department: </font> </td> <td><input type="text" size="15"  name="custtype" value="<%=rs.getString("department")%>" > </td>

                </tr>
                <tr>
                    <td><font  face="arial" size="2"  color="purple"> Address: </font> </td><td><input type="text" size="20" name="address"  value="<%=rs.getString("address")%>" > </td>
                    <td><font  face="arial" size="2"  color="purple"> phone No: </font> </td><td><input type="text" size="15" name="phoneno"  value="<%=rs.getString("phoneno")%>" > </td>

                    <td><font  face="arial" size="2"  color="purple">  UserName: </font> </td><td><input type="text" size="15"  name="username"   value="<%=rs.getString("username")%>" > </td>
                    <td><font  face="arial" size="2"  color="purple"> Password: </font> </td><td><input type="password" size="15"  name="password"   value="<%=rs.getString("password")%>" > </td>

                    <td align="right"><input type="submit" size="20" name="updatestaff"  value="Save" style="background-color: red; font-weight:bold;color:#ffffff;" > </td>
                </tr>
                <%
                            }
                            // con.close();
                        } catch (Exception e) {
                            out.println(e);
                        }
                    } else {
                    }

                    //response.sendRedirect("transation.jsp");
%>



            </table>
        </form>

        <table align="center" dir="LTR"  class="rowHover"  frame="border"  id="customer" width="900"  height="100" valign="top">

            <TR valign="center" bgcolor="#333366" align="center" height="30">
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Branch</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Reg.Date</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Staff Id</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">SurName</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">FirstName</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">otherName</FONT></TD>


                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Phone No</FONT></TD>


                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Address</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">State</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Country</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">DoB</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Empl. Type</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">User Name</FONT></TD>


                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Department</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Del</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">UD</FONT></TD>

            </TR>
            <%

                try {

                    Statement st = con.createStatement();

                    String sql = "select * from admin";

                    ResultSet set = st.executeQuery(sql);

            %>
            <%
                while (set.next()) {
            %>

            <TR bgcolor="#eeeeee">
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%= dt = set.getString("branch")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%= dt = set.getString("Date")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%= dt = set.getString("staffno")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><a href=""><%= categoryid = set.getString("surname".toUpperCase())%></a></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%= name = set.getString("firstname")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%= description = set.getString("othername")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%= description = set.getString("phoneno")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%= price = set.getString("address")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%= state = set.getString("State")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%= country = set.getString("country")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%= dob = set.getString("dob")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%= dob = set.getString("Emptype")%></FONT></TD>


                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%= description = set.getString("username")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%= dob = set.getString("department")%></FONT></TD>



                <td align="center"><a href="deleting.jsp?deletestaff=<%=set.getString("staffno")%>"><input type="button" name="delete" value="Del" onclick="javascript:return confirm('Are you sure you want to delete this employee')" style="background-color:#ff0000;font-weight:bold; font-size: x-small; color:#ffffff;" ></a></td>

                <td align="center"><a href="displaystaffupdate.jsp?updatestaff=<%=set.getString("staffno")%>"><input type="button" name="delete" value="UD" style="background-color:#ff0000;font-weight: bold;font-size: x-small; color:#ffffff;"></a></td>

            </TR>
            <%
                    }

                } catch (SQLException e) {
                    out.print(e);
                }

                con.close();
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
                <td align="right"> <INPUT NAME="export10" TYPE="submit" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                </td>
            </form>
        </tr>
    </table>

</body>
</html>
