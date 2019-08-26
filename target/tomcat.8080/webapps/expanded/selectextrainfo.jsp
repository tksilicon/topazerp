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
            function handleSelect(elm)
            {
                window.location = elm.value+".jsp";
            }
        </script>
        
         <style>
            table.rowHover tr:hover{ background-color:  orange; }
           table.rowHover TR:hover{ background-color:  orange; }

        </style>
        <title>Invoice Generation</title>
    </head>
    <body>

 <table align="center" bgcolor="white" width="1205" height="1" frame="vsides">
            <tr align="center" bgcolor="red" width="1205" height="1"><td>
                </td></tr>
        </table>
        <table align="center" bgcolor="white" width="1205" height="30" frame="vsides">


            <tbody>


                <tr align="center" bgcolor="#333399" cellpad="5" width="200" height="30">
                    <td align="left" ONCLICK="history.go(-1)"><input type="button" value="Back" style="background-color:#330099;font-weight:bold;color:#ffffff;"  >
                    </td>


                    <td align="center" valign="bottom"><font color="white" size="2" face="tahoma">
                            Welcome &nbsp; <%= session.getAttribute("username")%> 
                        </font> </td>

                    <td align="center" valign="bottom"><font color="white" size="2" face="tahoma">
                            Branch: &nbsp; <%= session.getAttribute("mybranch")%> 
                        </font>
                    </td>

                    <td align="right"><font color="#cccccc" face="tahoma" size="2"><b>Invoice Generation/Drop Off</b></font>


                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp; &nbsp;

                        <a href="index.jsp" >
                            <input type="button" value="log Out" style="background-color:#330099;font-weight:bold;color:#ffffff;"  >   </a>

                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp; &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp;
                        &nbsp; &nbsp;
                        <%

                            //response.setIntHeader("Refresh", 150);

                            Calendar calendar = new GregorianCalendar();
                            String am_pm;
                            int hour = calendar.get(Calendar.HOUR);
                            int minute = calendar.get(Calendar.MINUTE);
                            int second = calendar.get(Calendar.SECOND);
                            if (calendar.get(Calendar.AM_PM) == 0) {
                                am_pm = "AM";
                            } else {
                                am_pm = "PM";
                            }
                            String CT = hour + ":" + minute + ":" + second + " " + am_pm;
                            out.println("<html><font color='whitesmoke' size='2'>" + "Current Date and Time: " + String.format("%tF\n", calendar) + " .....   " + "\n" + "</font>" + "</html>");
                            out.println("<html><font color='whitesmoke' size='2'>" + CT + "\n" + "</font>" + "</html>");
                            session.setAttribute("date", String.format("%tF\n", calendar));
                        %>
                    </td>

                </tr>


            </tbody>
        </table>
        <table align="center" width="1205" height="1" frame="vsides">
            <tr align="center" bgcolor="red" width="1205" height="1"><td>
                </td></tr>
        </table>
        <form  action="transaction.jsp" method="post">
            <table align="center" bgcolor="#ccccff" width="1205" height="105" frame="vsides">

                <tr width="700">
                    <td align="left">
                        <font color="black" face="arial" size="3"><b>Customer:</b></font>
                        <input type="text" name="keyword" size="15" />
                        <input type="submit" name="search" value="Search" style="background-color:#ff0000;font-weight:  bold;font-size: small; color:#ffffff;" >
                    </td>


                    <td align="right" >

                        <div align="left"   style=" overflow-y: scroll;  width: 340px; height: 80px;" > <jsp:include flush="true" page="selecttable.jsp"></jsp:include></div>
                        </td>
                        <td align="right">

                        <jsp:include flush="true" page="branch.jsp"></jsp:include>
                        </td>

                        <td align="right">

                        <jsp:include flush="true" page="custcare.jsp"></jsp:include>
                        </td>

                    </tr>

                <%



                    if (request.getParameter("search") != null) {
                        String value = request.getParameter("keyword");
                        String kw = String.valueOf(value);

                        try {
                            SQLconnector sqlcon = new SQLconnector();
                            Connection con = sqlcon.getCon();

                            Statement st = con.createStatement();

                            ResultSet rs = st.executeQuery("select * from customers where surname like '%" + kw.trim() + "%' OR firstname like '%" + kw.trim() + "%'  OR  phoneno like '%" + kw.trim() + "%' AND branch = '" + session.getAttribute("mybranch") + "' ");


                %>
                <%
                    while (rs.next()) {
                %>


                 <%rs.getString("branch");%>

                <%rs.getString("RegNo");%>

                <%rs.getString("Surname");%>

                <%rs.getString("Firstname");%>
                <%rs.getString("CustType");%>




                <%
                            }
                      con.close();
                        } catch (Exception e) {
                            out.println(e);
                        }
                    } else {
                    }
                    // response.sendRedirect("transaction.jsp");

                %>

                <tr>
            </table>
            <table align="center" bgcolor="#ccccff" width="1205" height="5" frame="vsides">
                <tr align="left" >

                    <td align="left"> <INPUT NAME="refresh" TYPE="button" VALUE="Refresh" style="background-color:red;font-weight:bold;color:#ffffff;" onClick="window.location.reload()" /> 
                    </td>
                    <td align="right"><jsp:include flush="true" page="CCreport.jsp"></jsp:include></td>
                    </tr>
                </table>

            </form>
        <table align="center" bgcolor="blue" width="1205" height="20" frame="border">

            <tr width="400" align="left">
                <%
                    if (request.getParameter("custid") != null) {
                        String value = request.getParameter("custid");
                        String kw = String.valueOf(value);
                        SQLconnector SQLcon = new SQLconnector();

                        try {

                            Connection con = SQLcon.getCon();
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery("select * from customers where RegNo = '" + kw + "' ");
                            if (rs.next()) {
                %>
                <td><font color="white" face="arial" size="2"> <b> Cust Reg. No: </b> </font> </td><td><a href="index.jsp"><input type="text" name="regno" size="7" value="<%=rs.getString("RegNo")%>" ></a> </td> </td>
                <td><font color="white" face="arial" size="2"> <b>Cust. Name: </b></font> </td><td><input type="text" size="20"  name="custname" value="<%=rs.getString("Surname") + " " + rs.getString("firstname")%>" > </td>
                <td><font color="white" face="arial" size="2"> <b> Address:</b></font> </td><td><input type="text" size="20"  name="address"  value="<%=rs.getString("Address")%>" > </td>
                <td><font color="white" face="arial" size="2"> <b>Cust. Type: </b></font> </td><td><input type="text" size="10" name="custtype"  value="<%=rs.getString("CustType")%>" > </td>
                    <%
                        session.setAttribute("custname", rs.getString("Surname") + " " + rs.getString("firstname"));
                        session.setAttribute("custname", rs.getString("Surname"));
                        session.setAttribute("regno", rs.getString("RegNo"));
                        session.setAttribute("address", rs.getString("address"));

                    %>    

                <%
                            }
                              con.close();
                        } catch (Exception e) {
                            out.println(e);
                        }
                    } else {
                    }

                    //response.sendRedirect("transation.jsp");
                %>

                <td> <font color="white" face="arial" size="2"> <b>
                            Invoice Number </b></font>
                </td>

                <td>
                    <input type="text" name="idd" size="7" value="<%=session.getAttribute("id")%>"> 
                </td>
            </tr>
        </table>





        <table align="center" bgcolor="white" width="1205" height="500" frame="border">
            <tbody align="left">
            <td>

                <div align="right"    style=" overflow-y: scroll;  border:  scrollbar; width: 1190px; height: 480px;" >


                    <table align="center"  class="rowHover"  frame="border"  id="customer" width="1100"   cellspacing="1">
                        <TR valign="center" bgcolor="#333366" align="center" height="30">
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>S/N</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Invoice No</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Extra Charge Name</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Quantity</B></FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Price</B></FONT></TD>
                            

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Total</B></FONT></TD>
                            



                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Delete</B></FONT></TD>
                            

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Update Item</B></FONT></TD>




                        </TR>
                        <%

                            try {

                                SQLconnector sqlcon = new SQLconnector();
                                Connection con = sqlcon.getCon();

                                Statement st = con.createStatement();

                                String sql = "select * from extrainfo";

                                ResultSet set = st.executeQuery(sql);

                        %>
                        <%
                            while (set.next()) {
                        %>



                        <TR bgcolor="#eeeeee">
                            <TD align="center" height="25"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getInt(1)%></FONT></TD>
                           
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray" ><%=set.getInt(2)%> </FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(3)%></FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getInt(4)%></FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getFloat(5)%></FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%= set.getFloat(6)%></FONT></TD>
                           
                            <td align="center"><a href="deleting.jsp?deleteextra=<%=set.getInt(1)%>"><input type="button"  value="Delete" style="background-color:#ff0000;font-weight:  bold;font-size: x-small; color:#ffffff;"  ></a></td>

                            <td align="center"><input type="button" name="" value="Update Item" style="background-color:#ff0000;font-weight:  bold;font-size: x-small; color:#ffffff;"  ></td>


                        </TR>

                        <%
                                }
                              con.close();
                            } catch (SQLException e) {
                                out.print(e);
                            }


                        %>
                    </table>

                    <table align="center" dir="LTR"   frame="border"  width="1100"  height="30" valign="top">

                        <tr align="left" width="100">
                       
                            <td align="left"> <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                                     ONCLICK="printDiv()" />
                            </td>
                       
                            <td align="right"> <INPUT NAME="export" TYPE="button" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
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
