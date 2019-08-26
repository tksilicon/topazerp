<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }
    session.setAttribute("pageinfo2", "Journal Entry");
%>
<%-- 
    Document   : welcome
    Created on : Feb 26, 2012, 6:15:00 AM
    Author     : deji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="Classespack.*" %>
<%@page import="java.sql.*"   %>
<%@page import="java.sql.Statement"   %>
<%@page import="newpackage.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*" %>

<%@page import="java.lang.NullPointerException" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon"  type="image/gif" href="logo.gif">
        <title>Credit Account</title>
    </head>
    <body>

        <jsp:include flush="true" page="webheader.jsp" ></jsp:include>


        <jsp:include flush="true" page="pageheader.jsp" ></jsp:include>


            <table align="center" bgcolor="white" width="1205" height="400" frame="border">



                <tbody align="left">


                <td align="left" valign="top"> <jsp:include page="menu.jsp" flush="true"></jsp:include></td>





                <td align="center" valign="top" width="500"> 
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
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    &nbsp;
                    <table align="center" frame="border" bgcolor="#333399" width="500" height="40">

                        <tr align="center">
                            <td align="left"><img src="support_smaller.gif" alt="image" /></td>
                            <td><font size="4" color="white"><b>JOURNAL ENTRY </b></font>  </td>
                            <td align="right"><img src="images/training_smaller.gif" alt="image" /></td>
                        </tr>

                    </table>
                    <form action="insert.jsp" method="post">
                        <table align="center" frame="border"  width="500" height="200">

                            <tr>
                                <td ><font color="#333399" size="3">Narration: </font> </td>
                                <td><input type="text" name="narate" size="30"></td>
                            </tr>
                            <tr>
                                <td ><font color="#333399" size="3">Select Account to be Debited: </font> </td>
                                    <%

                                        try {

                                            SQLconnector SQLcon = new SQLconnector();

                                            Connection con = SQLcon.getCon();
                                            Statement st = con.createStatement();

                                            String sql = "select * from account ";


                                            ResultSet rss = st.executeQuery(sql);

                                    %>
                            <td>   <select name="expence">

                            <%
                                while (rss.next()) {

                            %>
                            <option value="<%= rss.getString("accountname") %>"><%= rss.getString("accountname") %></option>

                                <%
                                    }
                                %>
                                </select>
                            </td>
                            <%
                                    //response.sendRedirect("regexpenses.jsp");
                                    con.close();
                                } catch (Exception e) {
                                }
                            %>
                            </tr>

                        <tr>
                            <td ><font color="#333399" size="3">Select Account to be Credited: </font> </td>
                                     <%

                                        try {

                                            SQLconnector SQLcon = new SQLconnector();

                                            Connection con = SQLcon.getCon();
                                            Statement st = con.createStatement();

                                            String sql = "select * from account ";


                                            ResultSet rss = st.executeQuery(sql);

                                    %>
                            <td>   <select name="expence2">

                            <%
                                while (rss.next()) {

                            %>
                            <option value="<%= rss.getString("accountname") %>"><%= rss.getString("accountname") %></option>

                                <%
                                    }
                                %>
                                </select>
                            </td>
                            <%
                                    //response.sendRedirect("regexpenses.jsp");
                                    con.close();
                                } catch (Exception e) {
                                }
                            %>
                        </tr>

                        <tr>
                            <td ><font color="#333399" size="3"> Amount: </font> </td>
                            <td>
                                <input  type="text" size="20" name="amount">
                            </td>
                        </tr>
                        <tr bgcolor="#eeeeee" hieght="5">

                            <td align="right">

                            </td>

                            <td align="right" ><input type="submit" name="journalentry" value="Post" style=" background-color: red; font:  large; width: 100px; height: 30px;"> </td>
                            <td align="right" ><a href="displayjournal.jsp"><input type="button"  value="View Previous Journal Entry" style=" background-color: red; font:  large; width: 100px; height: 30px;"></a> </td>
                        </tr>
                    </table>
                </form>

            </td>
            <td width="100">

            </td>
            <td align="right" valign="top" bgcolor="#663399" width="120" >
                <jsp:include page="otherreport.jsp" flush="true"></jsp:include>
                </td>
            </tbody>

        </table>

    <jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>
