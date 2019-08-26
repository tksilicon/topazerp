
<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }
    session.setAttribute("pageinfo2", "Customer's Records ");
%>

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

<%!
    public int Intconvert(String str) {
        int num = 0;
        if (str == null) {
            str = "0";
        } else if ((str.trim()).equals("null")) {
            str = "0";
        } else if (str.equals("")) {
            str = "0";
        }
        try {
            num = Integer.parseInt(str);
        } catch (Exception e) {
        }
        return num;
    }
%>
<%
    SQLconnector SQLcon = new SQLconnector();

    Connection con = SQLcon.getCon();

    int showRows = 25;
    int totalRecords = 25;
    int totalRows = Intconvert(request.getParameter("totalRows"));
    int totalPages = Intconvert(request.getParameter("totalPages"));
    int PageNo = Intconvert(request.getParameter("PageNo"));
    int curPageNo = Intconvert(request.getParameter("curPageNo"));
    int startResult = 0;
    int endResult = 0;
    if (PageNo == 0) {
        PageNo = 0;
    } else {
        PageNo = Math.abs((PageNo - 1) * showRows);
    }
    String query = "SELECT SQL_CALC_FOUND_ROWS * FROM customers limit " + PageNo + "," + showRows + " ";
    PreparedStatement ps1 = con.prepareStatement(query);
    ResultSet rs1 = ps1.executeQuery();

    String query1 = "SELECT FOUND_ROWS() as cnt";
    PreparedStatement ps2 = con.prepareStatement(query1);
    ResultSet rs2 = ps2.executeQuery();
    if (rs2.next()) {
        totalRows = rs2.getInt("cnt");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon"  type="image/gif" href="echelon1.gif">
        <title>Customer Records</title>
        <script>
            function printDiv()
            {
                var divToPrint = document.getElementById('customer');
                newWin = window.open("");
                newWin.document.write(divToPrint.outerHTML);
                newWin.print();
                newWin.close();
            }
        </script>
        <style>
            table.Hover tr:hover{ background-color:  orange; }
            table.Hover TR:hover{ background-color:  orange; }

        </style>
        <script type="text/javascript">
            function generateexcel() {
                var table = document.getElementById('customer');
                var html = table.outerHTML;
                window.open('data:application/vnd.ms-excel,' + encodeURIComponent(html));
            }
        </script>
    </head>
    <body>

        <jsp:include flush="true" page="webheader.jsp" ></jsp:include>

        <jsp:include flush="true" page="pageheader.jsp" ></jsp:include>

            <table align="center" bgcolor="white" width="1205" height="360" frame="border">
                <tbody align="left">
                <td align="left" width="210"  valign="top"> <jsp:include page="menu.jsp" flush="true"></jsp:include></td>
                <td align="right" width="210"  valign="top"><div align="center"   style=" overflow-y: scroll; width: 960px;  height: 580px; " > 

                        <form action="selectcustomersearch.jsp" method="post">

                            <table width="800" align="center" style=" margin-bottom: 10px; margin-top: 10px;"  >

                                <tr>
                                    <td>

                                        <INPUT NAME="export8" TYPE="button" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff; width: 130px; height: 30px;"  ONCLICK="generateexcel()" />

                                        <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff; width: 130px; height: 30px; margin-right: 30px;" 
                                               ONCLICK="printDiv()" />



                                    </td>
                                    <td>Enter Customer's Name:</td>
                                    <td><input type="text" size="40" name="name" value=""></td>
                                    <td><input type="submit" name="searchname" value="Search"></td>

                                </tr>
                            </table>

                        </form>
                        <form>
                            <input type="hidden" name="PageNo" value="<%=PageNo%>">
                        <input type="hidden" name="curPageNo" value="<%=curPageNo%>">
                        <input type="hidden" name="showRows" value="<%=showRows%>">

                        <table align="center" class="alt1" dir="LTR"  id="customer"  frame="border"  width="940"  height="100" valign="top" cellspacing="1">

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

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">UD</FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Del</FONT></TD>

                            </TR>

                            <% while (rs1.next()) {%>

                            <TR bgcolor="#eeeeee">
                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=rs1.getString("Branch".toUpperCase())%></FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=rs1.getString("RegDate".toUpperCase())%></FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><a href="selectcccustpref.jsp?name=<%=rs1.getString("RegNo")%>"><%=rs1.getString("RegNo".toUpperCase())%></a></FONT></TD>

                                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><a href=""><%=rs1.getString("surname".toUpperCase())%></a></FONT></TD>

                                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=rs1.getString("firstname")%></FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><a href="selectcustpack.jsp?custno=<%=rs1.getString("RegNo")%>"><%=rs1.getString("CustType")%></a></FONT></TD>

                                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=rs1.getString("address")%></FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=rs1.getString("State")%></FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=rs1.getString("country")%></FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=rs1.getString("day") + "/" + rs1.getString("month")%></FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=rs1.getString("gender")%></FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=rs1.getString("phoneNo")%></FONT></TD>


                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><mailto:><%=rs1.getString("email")%></mailto:></FONT></TD>



                                <td><a href="updatecustomer.jsp?updatecust=<%=rs1.getString("RegNo")%>"> <img src="images/upimg.gif" style="font-weight: bold;font-size: x-small; color:#ffffff;" ></a></td>

                                <td><a href="deleting.jsp?delcust=<%=rs1.getString("RegNo")%>"><img src="images/delete.gif" onclick="javascript:return confirm('Are you sure you want to delete this customer')"></a></td>

                            </TR>

                            <%}%>

                            <%try {
                                    if (totalRows < (PageNo + showRows)) {
                                        endResult = totalRows;
                                    } else {
                                        endResult = (PageNo + showRows);
                                    }
                                    startResult = (PageNo + 1);
                                    totalPages = ((int) (Math.ceil((double) totalRows / showRows)));
                                    con.close();

                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            %>
                        </table>
                        <table align="center"   frame="border"  width="940"  height="30">

                            <tr align="center" >

                                <td colspan="3"  height="30" width="960">

                                    <%
                                        int i = 0;
                                        int cPage = 0;
                                        if (totalRows != 0) {
                                            cPage = ((int) (Math.ceil((double) endResult / (totalRecords * showRows))));
                                            int prePageNo = (cPage * totalRecords) - ((totalRecords - 1) + totalRecords);
                                            if ((cPage * totalRecords) - (totalRecords) > 0) {
                                    %>
                                    <a href="displaycustomer.jsp?PageNo=<%=prePageNo%>&curPageNo=<%=prePageNo%>">Previous &nbsp; &nbsp;</a>
                                    <%
                                        }
                                        for (i = ((cPage * totalRecords) - (totalRecords - 1)); i <= (cPage * totalRecords); i++) {
                                            if (i == ((PageNo / showRows) + 1)) {%>
                                    <a href="displaycustomer.jsp?PageNo=<%=i%>" style="cursor:pointer;color: red"><b><%=i%></b>&nbsp; &nbsp;</a>
                                            <%
                                            } else if (i <= totalPages) {
                                            %>
                                    <a href="displaycustomer.jsp?PageNo=<%=i%>"><%=i%>&nbsp; &nbsp;</a>
                                    <%
                                            }
                                        }
                                        if (totalPages > totalRecords && i < totalPages) {
                                    %>
                                    <a href="displaycustomer.jsp?PageNo=<%=i%>&curPageNo=<%=i%>">Next &nbsp; &nbsp;</a>
                                    <%
                                            }
                                        }
                                    %>
                                    <b>Rows <%=startResult%> - <%=endResult%> &nbsp; &nbsp; Total Rows <%=totalRows%> </b>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div> </td>

        </tbody>

    </table>

    <jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>
