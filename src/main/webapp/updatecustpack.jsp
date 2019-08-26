<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }
    session.setAttribute("pageinfo", "Customer's Package Payment and Update");
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
        <title>Customer Package Update</title>
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
            function show_now(){
            var my_day=new Date()
            //var dt = new Date(\"Aug 16, 2005 05:55:00\");


            var month_name=new Array(12);
            month_name[0]="Jan"
            month_name[1]="Feb"
            month_name[2]="March"
            month_name[3]="April"
            month_name[4]="May"
            month_name[5]="June"
            month_name[6]="July"
            month_name[7]="Aug"
            month_name[8]="Sept"
            month_name[9]="Oct"
            month_name[10]="Nov"
            month_name[11]="Dec"

            //alert ("Today Day is  = " + day_name[my_day.getDay()+2]);
            document.getElementById('month').value = month_name[my_day.getMonth()];
            document.getElementById('year').value = my_day.getUTCFullYear();
            }
        </script>

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

                        <a href="index.jsp"  ><input type="button" value="Log Out" style="background-color:#330099;font-weight:bold;color:#ffffff;"  >
                        </a>

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


                    SQLconnector sqlcon = new SQLconnector();
                    Connection con = sqlcon.getCon();

                    if (request.getParameter("search") != null) {
                        String value = request.getParameter("keyword");
                        String kw = String.valueOf(value);

                        try {

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
                            // con.close();
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
                            //con.close();
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

                    <form action="deleting.jsp" method="post">
                        <table align="center"   frame="border"  id="customer" width="1100"  height="100" valign="top"> 
                            <tr width="400" align="left">
                                <%
                                    if (request.getParameter("updatepack") != null) {
                                        String value = request.getParameter("updatepack");
                                        String kw = String.valueOf(value);


                                        try {

                                            Statement st = con.createStatement();
                                            ResultSet rs = st.executeQuery("select * from custpackage where id = '" + kw + "' ");


                                            if (rs.next()) {

                                                session.setAttribute("id", rs.getInt("id"));
                                %>
                            <tr>
                                <td><font  face="arial" size="2" color="purple"> <b> Id: </b> </font> </td><td><input type="text" name="proid" size="2" readonly="readonly" value="<%=rs.getInt("id")%>" ></a> </td> </td>

                                <td><font  face="arial" size="2"  color="purple"> <b>Cust. Name: </b></font> </td><td><input type="text" size="20"  name="pitems"  value="<%=rs.getString("name")%>" > </td>

                                <td><font  face="arial" size="2"  color="purple"> <b>Pieces Balance: </b></font> </td><td><input type="text" size="15" name="pcs"  value="<%=rs.getInt("totalpics")%>" > </td>

                                <td><font  face="arial" size="2"  color="purple"> <b> Total Cost: </b></font> </td><td><input type="text" size="15"  name="total"   value="<%=rs.getFloat("total")%>" > </td>
                                <td><font  face="arial" size="2"  color="purple"> <b>Amt Paid(N): </b></font> </td><td><input type="text" size="15"  name="amtpaid" value="0" onmouseover="show_now();" ></td>

                                <td><font  face="arial" size="2"  color="purple"> <b>Balance(N): </b></font> </td><td><input type="text" size="15" name="balance"  value="<%=rs.getFloat("balance")%>" onmouseover="show_now();" > </td>
                            <input type="hidden" name="month" id="month" >
                            <input type="hidden" name="year" id="year" >
                            <td align="right"><input type="submit" size="20" name="updatepackage"  value="Save" style="background-color:#330099;font-weight:bold;color:#ffffff;" > </td>
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

                    <table align="center"   frame="border"  id="customer" width="1100"  height="100" valign="top">

                        <TR valign="center" bgcolor="#ccccff" align="center" height="7">
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
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Pay History</B></FONT></TD>

                        </TR>
                        <%

                            try {


                                Statement st = con.createStatement();

                                String sql = "select * from custpackage ";

                                ResultSet set = st.executeQuery(sql);

                        %>
                        <%
                            while (set.next()) {
                        %>

                        <TR bgcolor="#eeeeee">

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="grey"><%=set.getInt(1)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="grey"><%=set.getString(2)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="grey"><%=set.getString(3)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="grey"><%=set.getString(4)%></FONT></TD>


                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="grey"><%=set.getInt(5)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B><%=set.getFloat(6)%></B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="grey"><%=set.getFloat(7)%></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="grey"><%= set.getFloat(8)%></FONT></TD>


                            <td align="center"><a href="updatecustpack.jsp?updatepack=<%=set.getInt(1)%>"><img src="images/upimg.gif" style="font-weight:bold; font-size: x-small; color:#ffffff;"  ></a></td>

                            <td align="center"><a href="deleting.jsp?deletecustpack=<%=set.getInt(1)%>"><img src="images/delete.gif"  onclick="javascript:return confirm('Are you sure you want to delete this package order ?')" style="font-weight: bold;font-size: x-small; color:#ffffff;" ></a></td>

                            <td align="center"><a href="selectpackpayhist.jsp?paypack=<%=set.getString("name")%>"><input type="button" name="deletepack" value="Pay History" style="background-color:#ff0000;font-weight: bold;font-size: x-small; color:#ffffff;" ></a></td>

                            <% session.setAttribute("custno", set.getString(3));%>
                        </TR>

                        <%
                                }

                            } catch (SQLException e) {
                                out.print(e);
                            }
                            con.close();
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
                            <td align="right"> <INPUT NAME="export" TYPE="button" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
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
