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

        <form action="selectcustomersearch.jsp" method="post">
            <table width="500" align="center"  >
                <tr>
                    <td>Enter Customer's Name:</td>
                    <td><input type="text" size="40" name="name" value=""</td>
                    <td><input type="submit" name="searchname" value="Search"></td>

                </tr>

            </table>
        </form>


        <table align="center" dir="LTR" class="rowHover"  id="customer"  frame="border"  width="960"  cellspacing="1" cellpadding="1">

            <TR valign="center" bgcolor="#333366" align="center" height="30">
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Branch</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Reg.Date</FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Reg.No</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">SurName</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">FirstName</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Cust. Type</FONT></TD>


                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Address</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">State</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Country</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Birth Day</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Gender</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Phone No</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">E_Mail</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">UP</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">NPO</FONT></TD>
                 <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Disc</FONT></TD>

            </TR>
            <%
                        if (request.getParameter("searchname") != null) {

                            String value = request.getParameter("name");
                            String kw = String.valueOf(value);
                            try {

                                SQLconnector sqlcon = new SQLconnector();
                                Connection con = sqlcon.getCon();

                                Statement st = con.createStatement();

                                String sql = "select * from customers where surname like '"+kw+"%'  AND branch = '" + session.getAttribute("mybranch") + "'";

                                ResultSet set = st.executeQuery(sql);
            %>
            <%                                      
                                            while (set.next()) {
            %>

            <TR bgcolor="#eeeeee">
                <TD align="center" height="25"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("Branch".toUpperCase())%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("RegDate".toUpperCase())%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><a href="selectcccustpref.jsp?name=<%=set.getString("RegNo")%>"><%=set.getString("RegNo".toUpperCase())%></a></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><a href=""><%=set.getString("surname".toUpperCase())%></a></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=  set.getString("firstname")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><a href="selectcustpack.jsp?custno=<%=set.getString("RegNo")%>"><%=set.getString("CustType")%></a></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("address")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("State")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("country")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("day") + "/" + set.getString("month")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("gender")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString("phoneNo")%></FONT></TD>


                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><mailto:><%=set.getString("email")%></mailto:></FONT></TD>



                <td><a href="updatecustomer.jsp?updatecust=<%=set.getString("RegNo")%>" > <img src="images/upimg.gif" style="font-weight: bold;font-size: x-small; color:#ffffff;" ></a></td>

                <td><a href="custpackage.jsp?name=<%=set.getString("RegNo")%>"><input type="button" name="delete" value="NPO" style="background-color:#ff0000;font-weight: bold;font-size: x-small; color:#ffffff;" onclick="deleteRecord(<%=set.getString(1)%>);" ></a></td>
                 <td><a href="custdiscount.jsp?name=<%=set.getString("RegNo")%>" > <input type="button"  value="Disc" style="background-color:#ff0000;font-weight: bold;font-size: x-small; color:#ffffff;"></a></td>

            </TR>
           


            <%
                                                    }
                                                 con.close();
                                            } catch (SQLException e) {
                                                out.print(e);
                                            }

            %>

        </table>
        <table align="center" dir="LTR"   frame="border"  width="960"  height="30" valign="top">

            <tr align="left" width="100">
            <form>
                <td align="left"> <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                         ONCLICK="printDiv()" />
                </td>
            </form>

            <td>
                <font color="blue">   Search Results for.........<i><%= kw.toUpperCase()%></i></font>
            </td>

            <form action="insert.jsp" method="post">
                <td align="right"> <INPUT NAME="export8" TYPE="submit" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                </td>
            </form>
        </tr>

    </table>
    <%
                } else {
                    //  out.print("No Result Found");
                }

    %>
</body>
</html>
