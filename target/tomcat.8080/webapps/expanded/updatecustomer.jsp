<%
            if (session.getAttribute("username") == null) {
                response.sendRedirect("index.jsp");
            }
            session.setAttribute("pageinfo", "Customer's Update");
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

        <title>Customer Update</title>

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

        <jsp:include flush="true" page="cshead.jsp" ></jsp:include>
        <table align="center" bgcolor="white" width="1195" height="500" frame="border">
            <tbody align="left">
            <td>
                <div align="center"   style=" overflow-y: scroll;  width: 1195px; height: 550px;" >
                    &nbsp;
                    &nbsp;
                    <table align="center" width="1000" bgcolor="#333399" height="40" frame="border">
                        <tr align="center">
                            <td>
                                <font color="white" face="tohoma" size="5">Customer's   Update</font>
                            </td>
                        </tr>
                    </table>
                    <form action="deleting.jsp" method="post">
                        <table align="center" width="1000" bgcolor="#eeeeee" height="100" frame="border">

                            <tr width="400" align="left">
                                <%
                                            if (request.getParameter("updatecust") != null) {
                                                String value = request.getParameter("updatecust");
                                                String kw = String.valueOf(value);

                                                SQLconnector SQLcon = new SQLconnector();

                                                try {

                                                    Connection con = SQLcon.getCon();
                                                    Statement st = con.createStatement();
                                                    ResultSet rs = st.executeQuery("select * from customers where regno = '" + kw + "' ");
                                                    if (rs.next()) {

                                                        // session.setAttribute("id", rs.getInt("id"));
                                %>
                            <tr>
                                <td><font  face="arial" size="2" color="purple"> Reg.No:  </font> </td><td><input type="text" name="regno" size="4" readonly="readonly" value="<%=rs.getString("regno")%>" ></a> </td> </td>

                                <td><font  face="arial" size="2"  color="purple">  SurName: </font> </td><td><input type="text" size="16"  name="surname" value="<%=rs.getString("surname")%>" > </td>

                                <td><font  face="arial" size="2"  color="purple"> <b>FirstName: </font> </td><td><input type="text" size="15"  name="firstname" value="<%=rs.getString("firstname")%>" > </td>

                                <td><font  face="arial" size="2"  color="purple"> Cust.Type: </font> </td>
                                <td><input type="text" size="15"  name="custtype" value="<%=rs.getString("custtype")%>"> </td>

                                <td><font  face="arial" size="2"  color="purple"> Address: </font> </td><td><input type="text" size="20" name="address"  value="<%=rs.getString("address")%>" > </td>
                            </tr>
                            <tr>
                                <td><font  face="arial" size="2"  color="purple"> Birth(Day): </font> </td>

                                <td><input type="text" size="5"  name="day" value="<%=rs.getString("day")%>"> </td>

                                <td><font  face="arial" size="2"  color="purple"> Birth(Month): </font> </td>

                                <td><input type="text" size="5"  name="month" value="<%=rs.getString("month")%>"> </td>

                                <td><font  face="arial" size="2"  color="purple"> phone No: </font> </td><td><input type="text" size="15" name="phoneno"  value="<%=rs.getString("phoneno")%>" > </td>

                                <td><font  face="arial" size="2"  color="purple">  E-mail: </font> </td><td><input type="text" size="25"  name="email"   value="<%=rs.getString("email")%>" > </td>
                                <td><font  face="arial" size="2"  color="purple">  Gender: </font> </td><td><input type="text" size="25"  name="gender"   value="<%=rs.getString("gender")%>" > </td>
                            
                            </tr>
                        </table>
                                <table>
                            <tr align="center">
                                <td align="center"><input type="submit" size="20" name="updatecustomer"  value="Save" style="background-color:#330099;font-weight:bold;color:#ffffff; height: 30px; width: 80px;" > </td>
                                    <%
                                                                                            session.getAttribute("message");
                                    %>
                            </tr>
                            <%
                                                }
                                                    con.close();
                                            } catch (Exception e) {
                                                out.println(e);
                                            }
                                        } else {
                                        }

                            %>

                        </table>
                    </form>

                    <table align="center" width="1000" bgcolor="#cccccc" height="40" frame="border">
                        <tr align="center">
                            <td>
                                <font color="green" face="tohoma" size="3">Make  all neccessary changes, click on SAVE button to update customer</font>
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tbody>
    </table>
    <jsp:include page="footer_1.jsp" flush="true"></jsp:include>
</body>
</html>
