<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }
    session.setAttribute("pageinfo2", "Update Product");
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
        <title>Product Update</title>

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
    </head>
    <body>
        <jsp:include flush="true" page="webheader.jsp" ></jsp:include>


        <jsp:include flush="true" page="pageheader.jsp" ></jsp:include>
            <table align="center" bgcolor="white" width="1195" height="500" frame="border">
                <tbody align="left">
                <td>

                    <div align="center"   style=" overflow-y: scroll;  width: 1195px; height: 550px;" >
                        <form action="deleting.jsp" method="post">
                            <table align="center" width="400" bgcolor="#eeeeee" height="50" frame="border">

                                <tr width="400" align="left">
                                <%
                                    
                                SQLconnector sqlcon = new SQLconnector();
                                Connection con = sqlcon.getCon();

                                    if (request.getParameter("updatepro") != null) {
                                        String value = request.getParameter("updatepro");
                                        String kw = String.valueOf(value);

                                        try {

                                            Statement st = con.createStatement();
                                            ResultSet rs = st.executeQuery("select * from products where id = '" + kw + "' ");


                                            if (rs.next()) {

                                                session.setAttribute("id", rs.getInt("id"));
                                %>
                            <tr>
                                <td><font  face="arial" size="2"> <b>Item Id: </b> </font> </td><td><input type="text" name="proid" readonly="readonly" size="2" value="<%=rs.getInt("id")%>" ></td>

                                <td><font  face="arial" size="2"> <b>Item's Name </b></font> </td><td><input type="text" size="20"  name="pitems" value="<%=rs.getString("itemname")%>" > </td>

                                <td><font  face="arial" size="2"> <b>Category </b></font> </td><td><input type="text" readonly="readonly" size="10"  name="cat" value="<%=rs.getString("category")%>" > </td>

                                <td><font  face="arial" size="2"> <b>Pieces </b></font> </td><td><input type="text" size="10" name="pcs"  value="<%=rs.getInt("pieces")%>" > </td>

                                <td><font  face="arial" size="2"> <b> H.O.</b></font> </td><td><input type="text" size="10"  name="price"   value="<%=rs.getFloat("price")%>" > </td>
                                <td><font  face="arial" size="2"> <b> B.A.</b></font> </td><td><input type="text" size="10"  name="price2"   value="<%=rs.getFloat("price2")%>" > </td>
                                <td><font  face="arial" size="2"> <b> B.B.</b></font> </td><td><input type="text" size="10"  name="price3"   value="<%=rs.getFloat("price3")%>" > </td>
                                <td><font  face="arial" size="2"> <b> Pkg Unit</b></font> </td><td><input type="text" size="10"  name="price4"   value="<%=rs.getFloat("price4")%>" > </td>

                                <td align="right"><input type="submit" size="20" name="updateproduct"  value="Save" style="background-color:#330099;font-weight:bold;color:#ffffff;" > </td>
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

                    <table align="center" class="rowHover"   frame="border"  id="customer" width="800"  height="100" cellspacing="1">

                        <TR valign="center" bgcolor="#ccccff" align="center" height="30">
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>S/N</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>Reg. Date</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>Item Id</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>Item's Name</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>Item's Category</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>Pieces</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>HO Price</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>BA Price</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>BB Price</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>Package Unit</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>Update Item</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>Delete</B></FONT></TD>

                        </TR>
                        <%

                            try {

                                Statement st = con.createStatement();

                                String sql = "select * from products";

                                ResultSet set = st.executeQuery(sql);

                        %>
                        <%
                            while (set.next()) {
                        %>



                        <TR bgcolor="#eeeeee">
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getInt("id")%></FONT></TD>

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
                                }
                           
                            } catch (SQLException e) {
                                out.print(e);
                            }

                             con.close();
                        %>
                    </table>

                    <table align="center" dir="LTR"   frame="border"  width="800"  height="30" valign="top">

                        <tr align="left" width="100">
                        <form>
                            <td align="left"> <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                                     ONCLICK="printDiv()" />
                            </td>
                        </form>

                        <form action="insert.jsp" method="post">
                            <td align="right"> <INPUT NAME="export9" TYPE="submit" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                            </td>
                        </form>
                        </tr>
                    </table>

                </div>
            </td>
        </tbody>
    </table>
    <jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>
