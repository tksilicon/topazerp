
<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }
    session.setAttribute("pageinfo", "Search Results");
%>
<%-- 
    Document   : searchresult
    Created on : Apr 3, 2013, 12:51:29 PM
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
<%@page  import="java.text.DecimalFormat"%>
<%@ page  import="Classespack.*" %>
<%@page import="java.lang.NullPointerException" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <jsp:include flush="true" page="cshead.jsp"></jsp:include>
            <table align="center" bgcolor="white" width="1205" height="600" frame="border">
                <tbody align="left">
                <td>

                    <div align="right"    style=" overflow-y: scroll;  border:  scrollbar; width: 900px; height: 580px;" >

                        <table align="left" bgcolor="white" width="700" height="500" frame="border" cellspacing="1">
                        <%
                            DecimalFormat formatter = new DecimalFormat("###,###,###");
                            if (request.getParameter("search") != null) {
                                String value = request.getParameter("sch");
                                String kw = String.valueOf(value);
                                try {
                                    SQLconnector sqlcon = new SQLconnector();
                                    Connection con = sqlcon.getCon();

                                    Statement st = con.createStatement();

                                    String sql = "select  * from ourinvoice where custname like '%" + kw + "%' AND branch = '" + session.getAttribute("mybranch") + "'  ORDER BY date DESC";
                                    String sql2 = "select count(*) from ourinvoice where custname like '%" + kw + "%' AND branch = '" + session.getAttribute("mybranch") + "'   ";

                                    ResultSet set2 = st.executeQuery(sql2);
                        %>

                        <%
                            if (set2.next()) {
                        %>
                        <tr>
                            <td height="60">
                                <font color="blue" face="tahoma" size="3"><i><u> Search Results.... for <%=kw%>. Total Results =<%=set2.getInt(1)%> </u></i></font>
                            </td>
                        </tr>
                        <%
                            }
                            String date = "";
                            ResultSet set = st.executeQuery(sql);
                        %>
                        <%
                            while (set.next()) {
                        %>

                        <tr>
                            <td>
                                Customer's Name: &nbsp; <font color="blue" face="tahoma" size="3"> <%=set.getString("custname")%></font> <br />
                                Invoice Date:&nbsp;&nbsp;<font color="blue" face="tahoma" size="3"> <%=date = set.getString("date")%></font>  <br />
                                Invoice Id:&nbsp;&nbsp;<font color="blue" face="tahoma" size="2"><a href="selectincomeitemwtdt.jsp?invidd=<%=set.getString("invoiceid")%>"> <%=set.getString("invoiceid")%> (Click here to view this invoice) </a></font> <br />
                                Total:&nbsp;&nbsp;&nbsp;<font color="blue" face="tahoma" size="3">  N<%=formatter.format(set.getFloat("grandtotal"))%>.00</font> <br />
                                Current Balance:&nbsp;<font color="blue" face="tahoma" size="3">  N<%=formatter.format(set.getFloat("balance"))%>.00</font> <br />
                                Ready:&nbsp;&nbsp;&nbsp;<font color="blue" face="tahoma" size="3">  <%=set.getString("ready")%></font> <br />

                                <a href="invoice_2.jsp?invidd=<%=set.getString("invoiceid")%>"> <INPUT NAME="export" TYPE="button" VALUE="Re-Print this invoice"  style="background-color: red;font-weight:bold;color:#ffffff;" /></a><br />

                                ----------------------------------------------------------------------------------------------------  <br />
                            </td>

                        </tr>

                        <%                                            }
                        %>

                        <tr>
                            <td height="60">
                                <font color="blue" face="tahoma" size="3"><i><u>End of Search Results.... for <%=kw%>.</u></i></font>
                            </td>
                        </tr>

                        <%
                                } catch (Exception e) {
                                    out.print(e);
                                }
                            } else {
                            }
                        %>

                    </table>
                </div>
            </td>
            <td>
                <img src="images/anigifnew.gif" width="150" height="110" ><BR>
                <img src="images/anicloth.gif"  width="150" height="110"><BR>
                <img src="images/anigifnew.gif"  width="150" height="110"><BR>
                <img src="images/anicloth.gif"  width="150" height="110"><BR>
                <img src="images/anigifnew.gif"  width="150" height="110"><BR>
            </td>
        </tbody>
    </table>
    <jsp:include flush="true" page="footer_1.jsp"></jsp:include>
</body>
</html>
