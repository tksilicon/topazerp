<%-- 
    Document   : selectsortpayroll
    Created on : Jul 2, 2013, 6:14:04 AM
    Author     : deji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="newpackage.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*" %>
<%@page  import="java.text.DecimalFormat" %>
<%@page import="java.lang.NullPointerException" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <table width="940" align="center" bgcolor="#f7f7f7">
            <tr>
                <td>
                    <form action="displaypaymonth.jsp" method="post">
                    <table align="left"  width="380"  height="50" valign="top">
                        <tr>
                            <td><font color="black" face="arial" size="2"> <b>Period: Month: </b></font> <select name="month">
                                    <option>Jan</option>
                                    <option>Feb</option>
                                    <option>March</option>
                                    <option>April</option>
                                    <option>May</option>
                                    <option>June</option>
                                    <option>July</option>
                                    <option>Aug</option>
                                    <option>Sept</option>
                                    <option>Oct</option>
                                    <option>Nov</option>
                                    <option>Dec</option>
                                </select> </td>
                            <td>
                                And
                            </td>
                            <td><font color="black" face="arial" size="2"> <b>Year: </b></font> <select name="year">

                                    <option>2013</option>
                                    <option>2014</option>
                                    <option>2015</option>
                                    <option>2016</option>
                                    <option>2017</option>
                                    <option>2018</option>
                                    <option>2019</option>
                                    <option>2020</option>
                                    <option>2021</option>
                                    <option>2022</option>
                                    <option>2023</option>
                                    <option>2024</option>
                                    <option>2025</option>
                                    <option>2026</option>
                                    <option>2027</option>
                                    <option>2028</option>
                                    <option>2029</option>
                                    <option>2030</option>
                                </select> </td>

                            <td align="center"><input type= "submit" size="20" name = "paymonth"  value="View"  style="background-color:#330099;font-weight:bold;color:#ffffff;" > </td>

                        </tr>
                    </table>
                    </form>

                    <form action="displaypayyear.jsp" method="post">
                        <table align="left"   width="230"  height="50" valign="top">
                            <tr>

                                <td width=""><font color="black" face="arial" size="2"> <b>Period: Year: </b></font>
                                    <select name="year">

                                        <option>2013</option>
                                        <option>2014</option>
                                        <option>2015</option>
                                        <option>2016</option>
                                        <option>2017</option>
                                        <option>2018</option>
                                        <option>2019</option>
                                        <option>2020</option>
                                        <option>2021</option>
                                        <option>2022</option>
                                        <option>2023</option>
                                        <option>2024</option>
                                        <option>2025</option>
                                        <option>2026</option>
                                        <option>2027</option>
                                        <option>2028</option>
                                        <option>2029</option>
                                        <option>2030</option>
                                    </select> </td>

                                <td align="center"><input type= "submit" size="20" name = "payyear"  value="View"  style="background-color:#330099;font-weight:bold;color:#ffffff;" > </td>

                            </tr>
                        </table>
                    </form>
                    <form action="displaypaystaff.jsp" method="post">
                        <table align="left"     width="290"  height="50" valign="top">
                            <tr>
                                <td width="150" align="left"><font color="black" face="arial" size="2"> <b>Year: </b></font>
                                    <select name="year">

                                        <option>2013</option>
                                        <option>2014</option>
                                        <option>2015</option>
                                        <option>2016</option>
                                        <option>2017</option>
                                        <option>2018</option>
                                        <option>2019</option>
                                        <option>2020</option>
                                        <option>2021</option>
                                        <option>2022</option>
                                        <option>2023</option>
                                        <option>2024</option>
                                        <option>2025</option>
                                        <option>2026</option>
                                        <option>2027</option>
                                        <option>2028</option>
                                        <option>2029</option>
                                        <option>2030</option>
                                    </select> </td>

                                <td ><font color="black" face="arial" size="2">Staff: </font> </td>

                                <td> <select  name="staffname"   width="30" >

                                        <%
                                                    try {

                                                        SQLconnector SQLcon = new SQLconnector();
                                                        Connection con = SQLcon.getCon();
                                                        Statement st = con.createStatement();
                                                        String sql = "select * from payrecords";
                                                        ResultSet rss = st.executeQuery(sql);
                                                        while (rss.next()) {
                                        %>

                                        <%

                                        %>
                                        <option value="<%= rss.getString("names")%>">  <%= rss.getString("names")%> </option>

                                        <%
                                                                                                }
                                        %>

                                    </select>

                                    <%
                                                    //response.sendRedirect("regexpenses.jsp");
                                                        con.close();
                                                } catch (Exception e) {
                                                }
                                    %>
                                </td>

                                <td align="center"><input type= "submit" size="20" name = "paystaff"  value="View"  style="background-color:#330099;font-weight:bold;color:#ffffff;" > </td>

                            </tr>
                        </table>
                    </form>
                </td>
            </tr>
        </table>

    </body>
</html>
