<%
if(session.getAttribute("username") == null){
 response.sendRedirect("index.jsp");
 }
session.setAttribute("pageinfo", "Customer's Ledger");
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
        <script type="text/javascript">   
            function signout()
            {
          
                window.location.href="signout.jsp";
            }
        </script>
         <style>
            table.rowHover tr:hover{ background-color:  orange; }
           table.rowHover TR:hover{ background-color:  orange; }

        </style>
        <title>Customer Ledger</title>
    </head>
    <body>


 <jsp:include flush="true" page="cshead.jsp"></jsp:include>

        <table align="center" bgcolor="white" width="1205" height="600" frame="border" valign="top">
            <tbody align="left">
            <td>

                <div align="right"    style=" overflow-y: scroll;  border:  scrollbar; width: 1190px; height: 580px;" >
                    <table align="center"  class="alt1"  frame="border"  id="customer" width="1100"  height="100" cellpadding="1" cellspacing="1" valign="top">

                        <TR valign="center" bgcolor="#333366" align="center" height="30">
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Reg.Date</FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Reg.No</FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">SurName </FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">FirstName </FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Cust. Type </FONT></TD>

                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Address </FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">State </FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Country </FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Birth Day </FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Gender </FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Phone No </FONT></TD>
                               
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">E_Mail </FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">History </FONT></TD>
                            
                           

                        </TR>
                        <%

                            try {
                                 if (request.getParameter("custsearch") != null) {
                                String value = request.getParameter("custname");
                                String kw = String.valueOf(value);

                                SQLconnector sqlcon = new SQLconnector();
                                Connection con = sqlcon.getCon();

                                Statement st = con.createStatement();

                                String sql = "select * from customers where surname LIKE '"+kw+"%' OR firstname LIKE '"+kw+"%'";

                                ResultSet set = st.executeQuery(sql);

                        %>
                        <%
                            while (set.next()) {
                        %>



                        <TR bgcolor="#eeeeee">
                            <TD align="center" height="25"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= set.getString("RegDate") %></FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><a href="selectcustledger2.jsp?name=<%=set.getString("RegNo")%>"><%= set.getString("RegNo".toUpperCase())%></a></FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><a href=""><%= set.getString("surname")%></a></FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=  set.getString("firstname")%></FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= set.getString("CustType")%></FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("address")%></FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("State")%></FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= set.getString("country")%></FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("day") +"/"+ set.getString("month")%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= set.getString("gender")%></FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("phoneNo")%></FONT></TD>
                            

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><mailto:><%= set.getString("email")%></mailto:></FONT></TD>
                            

                            <td><a href="selectcustledger2.jsp?name=<%=set.getString("RegNo")%>"><input type="button" name="delete" value="History" style="background-color:#ff0000;font-weight:bold; font-size: x-small; color:#ffffff;"> </a> </td>

                            
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
                    <table align="center" dir="LTR"   frame="border"  width="1100"  height="30" valign="top">

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
