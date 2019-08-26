<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }

    session.setAttribute("pageinfo", "Items Update");
%>

<%-- 
    Document   : welcome
    Created on : Feb 26, 2012, 6:15:00 AM
    Author     : deji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*" %>
<%@page import="java.sql.Date" %>
<%@page import="newpackage.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page  import="Classespack.*" %>
<%@page import="java.lang.NullPointerException" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
            function Maths()
            {
                // Capture the entered values of two input boxes
                var input11 = document.getElementById('input11').value;
                var input22 = document.getElementById('input22').value;

                // Add them together and display
                var sum = parseFloat(input11) * parseInt(input22);
                document.getElementById('mytotal').value = parseFloat(sum);
            }
        </script>
        <script type="text/javascript">
            function handleSelect(elm)
            {
                window.location = elm.value + ".jsp";
            }
        </script>
        <script type="text/javascript">
            function signout()
            {

                window.location.href = "signout.jsp";
            }
        </script>
        <title>Update Items</title>
    </head>
    <body>
        <jsp:include flush="true" page="cshead.jsp"></jsp:include>
            <table align="center" bgcolor="white" width="1205" height="500" frame="border">
                <tbody align="left">
                <td>
                    <div align="right" style="overflow-y: scroll;  border:  scrollbar; width: 1190px; height: 480px;" >

                        <form action="deleting.jsp" method="post">
                            <table align="center"   frame="border"  id="customer" width="1100"  height="50" valign="top"> 
                                <tr width="400" align="left">
                                <%
                                    
                                SQLconnector sqlcon = new SQLconnector();
                                Connection con = sqlcon.getCon();

                                    if (request.getParameter("updateitem") != null) {
                                        String value = request.getParameter("updateitem");
                                        String kw = String.valueOf(value);
                                       
                                        try {

                                            Statement st = con.createStatement();
                                            ResultSet rs = st.executeQuery("select * from invoicebody where itemid = '" + kw + "' ");


                                            if (rs.next()) {

                                                session.setAttribute("itemid", rs.getInt("itemid"));
                                %>
                            <tr>
                                <td><font color="gray"  face="arial" size="2"> <b> Item Id: </b> </font> </td><td><input type="text" name="itemid" size="2" readonly="readonly" value="<%=rs.getInt("itemid")%>" ></a> </td> </td>

                                <td><font color="gray" face="arial" size="2"> <b>Item's Name </b></font> </td><td><input type="text" size="20"  name="items" value="<%=rs.getString("items")%>" > </td>

                                <td><font color="gray" face="arial" size="2"> <b> Price</b></font> </td><td><input type="text" size="6"  name="price" id="input11" readonly="readonly"  value="<%=rs.getFloat("price")%>" > </td>

                                <td><font color="gray" face="arial" size="2"> <b>Qty </b></font> </td><td><input type="text" size="5" name="qty" id="input22" value="<%=rs.getInt("qty")%>" > </td>

                                <td><font color="gray" face="arial" size="2"> <b>Color: </b></font> </td><td><input type="text" size="20" name="color"  value="<%=rs.getString("color")%>" > </td>

                                <td><font color="gray" face="arial" size="2"> <b>Desc: </b></font> </td><td><input type="text" size="20" name="des"  value="<%=rs.getString("des")%>" > </td>

                                <td><font color="gray" face="arial" size="2"> <b>Total </b></font> </td><td><input type="text" size="6" name="total" id="mytotal" readonly="readonly"  value="<%=rs.getFloat("total")%>"  onclick="Maths();"> </td>

                                <td><input type="submit" size="20" name="updateitem"  value="Save" style="background-color:#330099;font-weight:bold;color:#ffffff;" > </td>
                            </tr>
                            <%
                                        }
                                            //con.close();
                                    } catch (Exception e) {
                                        out.println(e);
                                    }
                                } else {
                                }

                                //response.sendRedirect("transation.jsp");
                            %>

                        </table>
                    </form>

                    <table align="center"   frame="border"  id="customer" width="1165"  height="100" valign="top" cellspacing="1">
                        <TR valign="center" bgcolor="#ccccff" align="center" height="30">
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Item Id</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Branch</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Date</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Cust. Id</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Invoice No</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Item</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Price</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Quantity</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Pieces</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Total Pcs</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Description</B></FONT></TD>


                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Color</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Total</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Delete</B></FONT></TD>


                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Update Item</B></FONT></TD>
                        </TR>
                        <%

                            try {

                                Statement st = con.createStatement();

                                String sql = "select * from invoicebody where branch = '" + session.getAttribute("mybranch") + "' limit 100";

                                ResultSet set = st.executeQuery(sql);

                        %>
                        <%
                            while (set.next()) {
                        %>



                        <TR bgcolor="#eeeeee">
                            <TD align="center" ><FONT FACE="tahoma" SIZE="2" color="gray" > <a href="deleting.jsp?deleteitem=<%=set.getInt(1)%>"><%=set.getInt(1)%></a></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(2)%></FONT></TD>

                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(3)%></FONT></TD>


                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(4)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(5)%></FONT></TD>

                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(6)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getFloat(7)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%= set.getInt(8)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getInt(9)%></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getInt(10)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(11)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(12)%></FONT></TD>


                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getFloat(13)%></FONT></TD>



                            <td align="center"><a href="deleting.jsp?deleteitem=<%=set.getInt(1)%>"><img src="images/delete.gif" alt="delete" onclick="javascript:return confirm('You are about to delete this item')" style="font-weight:  bold;font-size: x-small; color:#ffffff;"  ></a></td>

                            <td align="center"><a href="updateitem.jsp?updateitem=<%=set.getInt(1)%>"><img src="images/upimg.gif" alt="Update" style="font-weight:  bold;font-size: x-small; color:#ffffff;"  ></a></td>


                        </TR>

                        <%
                                }
                           
                            } catch (SQLException e) {
                                out.print(e);
                            }
                             con.close();

                        %>
                    </table>

                    <table align="center" dir="LTR"   frame="border"  width="1150"  height="30" valign="top">

                        <tr align="left" width="100">
                        <form>
                            <td align="left"> <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                                     ONCLICK="printDiv()" />
                            </td>
                        </form>

                        <form>
                            <td align="right"> <INPUT NAME="export" TYPE="button" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                            </td>
                        </form>
                        </tr>
                    </table>

                </div>
            </td>
        </tbody>
    </table>

    <jsp:include page="footer_1.jsp" flush="true"></jsp:include>
</body>
</html>
