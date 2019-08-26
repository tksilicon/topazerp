<%
            if (session.getAttribute("username") == null) {
                response.sendRedirect("index.jsp");
            }
            session.setAttribute("pageinfo", "Customers Package Records");
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

         <script type="text/javascript">   
            function printDiv()
            {
                var divToPrint=document.getElementById('customer');
                newWin= window.open("");
                newWin.document.write(divToPrint.outerHTML);
                newWin.print();
                newWin.close();
            }
       
            function deleteRecord(id){
                var f=document.form;
                f.method="post";
                f.action='delete.jsp?id='+id;
                f.submit().deleteRow(index);
            }
        </script>
        <script type="text/javascript">
            function generateexcel() {
                var table= document.getElementById('customer');
                var html = table.outerHTML;
                window.open('data:application/vnd.ms-excel,' + encodeURIComponent(html));
            }
        </script>

        <script type="text/javascript">
            function handleSelect(elm)
            {
                window.location = elm.value+".jsp";
            }
        </script>
        
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
        <title>Package</title>
    </head>
    <body>
        <jsp:include flush="true" page="cshead.jsp"></jsp:include>
        <table align="center" bgcolor="white" width="1205" height="600" frame="border">
            <tbody align="left">
            <td>
                <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff; height:  35px;" 
                           ONCLICK="printDiv();" />

                    <INPUT TYPE="button" VALUE="Export to Excel" onclick="generateexcel();" style="background-color:#330099; font-weight:bold; color:#ffffff;  height:  35px;"  />
                    <br>
                    <br>
                <div align="right"    style=" overflow-y: scroll;  border:  scrollbar; width: 1190px; height: 580px;" >
                    <table align="center" class="rowHover"   frame="border"  id="customer" width="1100"  height="100" valign="top" cellspacing="1">
                        <TR valign="center" bgcolor="#333366" align="center" height="30">

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>S/N</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Date</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Cust. no</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Name</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Total Pieces</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Total Cost</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Amount Paid</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Balance</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Update</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Delete</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Payment History</B></FONT></TD>

                        </TR>
                        <%

                                    try {
                                        SQLconnector sqlcon = new SQLconnector();
                                        Connection con = sqlcon.getCon();

                                        Statement st = con.createStatement();

                                        String sql = "select * from custpackage";

                                        ResultSet set = st.executeQuery(sql.toUpperCase());

                                        //session.setAttribute("custno", kw);
%>
                        <%
                                                                while (set.next()) {
                        %>



                        <TR bgcolor="#eeeeee">
                            <TD align="center" height="25"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getInt(1)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(2)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(3)%></FONT></TD>

                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(4)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getInt(5)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B><%=set.getFloat(6)%></B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getFloat(7)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%= set.getFloat(8)%></FONT></TD>

                            <td align="center"><a href="updatecustpack.jsp?updatepack=<%=set.getInt(1)%>"><img src="images/upimg.gif" style="font-weight:bold; font-size: x-small; color:#ffffff;"  ></a></td>

                            <td align="center"><a href="#"><img src="images/delete.gif"  onclick="javascript:return confirm('Are you sure you want to delete this package order ?')" style="font-weight: bold;font-size: x-small; color:#ffffff;" ></a></td>

                            <td align="center"><a href="selectpackpayhist.jsp?paypack=<%=set.getString("name")%>"><input type="button" name="deletepack" value="Payment History"  style="background-color:#ff0000;font-weight: bold;font-size: x-small; color:#ffffff;" ></a></td>


                        </TR>

                        <%
                                        }
                                                                  con.close();
                                    } catch (SQLException e) {
                                        out.print(e);
                                    }


                        %>
                    </table>

                    <table align="center" dir="LTR"   frame="border" width="1100"  height="30" valign="top">

                        <tr align="left" width="100">
                        <form>
                            <td align="left"> <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                                     ONCLICK="printDiv()" />
                            </td>
                        </form>
                        <form>
                            <td align="right"> <INPUT NAME="export" TYPE="button" VALUE="Export to Excel" onclick="generateexcel();" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
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
