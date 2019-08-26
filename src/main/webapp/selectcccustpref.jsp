<%
            if (session.getAttribute("username") == null) {
                response.sendRedirect("index.jsp");
            }
            session.setAttribute("pageinfo", "Customer's Preferences");
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
<%@ page  import="Classespack.*" %>
<%@page import="java.lang.NullPointerException" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon"  type="image/gif" href="logo.gif">
        <script>
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
            function handleSelect(elm)
            {
                window.location = elm.value+".jsp";
            }
        </script>

        <style>
            table.rowHover tr:hover{ background-color:  orange; }
            table.rowHover TR:hover{ background-color:  orange; }

        </style>
        <script language="text/javascript">   
            function signout()
            {
          
                window.location.href="signout.jsp";
            }
        </script>
        <title>Preferences</title>
    </head>
    <body>

        <jsp:include flush="true" page="cshead.jsp"></jsp:include>

        <table align="center" bgcolor="white" width="1205" height="500" frame="border">
            <tbody align="left">
            <td>

                <div align="right"    style=" overflow-y: scroll;  border:  scrollbar; width: 1190px; height: 480px;" >
                    <table align="center" class="rowHover"   frame="border"  id="customer" width="950"  height="100" valign="top">

                        <TR valign="center" bgcolor="#333366" align="center" height="30">
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">S/N</FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Reg. Date</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Customer Number</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Preference</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Priority</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Update</FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Delete</FONT></TD>


                        </TR>
                        <%

                                    try {

                                        if (request.getParameter("name") != null) {
                                            String value = request.getParameter("name");
                                            String kw = String.valueOf(value);


                                            SQLconnector sqlcon = new SQLconnector();
                                            Connection con = sqlcon.getCon();

                                            Statement st = con.createStatement();

                                            String sql = "select * from custpref where customerno = '" + kw + "'";

                                            ResultSet set = st.executeQuery(sql.toUpperCase());

                        %>
                        <%
                                                            while (set.next()) {
                        %>

                        <TR bgcolor="#eeeeee">
                            <TD align="center" height="25"><FONT FACE="tahoma" SIZE="2" color="grey"><%=set.getString(1)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="grey"><%=set.getString(2)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="grey"><%=set.getString(3)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="grey"><%=set.getString(4)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="grey"><%=set.getString(5)%></FONT></TD>

                            <td align="center"><input type="button" name="delete" value="Update" style="background-color:#ff0000;font-weight:  bold;font-size: x-small; color:#ffffff;"  ></a></td>
                            <td align="center"><a href="regitem.jsp"><input type="button" name="delete" value="Delete" style="background-color:#ff0000;font-weight:  bold;font-size: x-small; color:#ffffff;"  ></a></td>

                        </TR>

                        <%
                                            }
                                                              con.close();
                                        }
                                          
                                    } catch (SQLException e) {
                                        out.print(e);
                                    }


                        %>
                    </table>

                    <table align="center" dir="LTR"   frame="border" width="950"  height="30" valign="top">

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
