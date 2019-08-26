<%-- 
    Document   : search
    Created on : Dec 11, 2012, 10:15:56 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.Date" %>
<%@page import="newpackage.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.sql.SQLException"%>

<%@ page  import="Classespack.*" %>

<%@page import="java.lang.NullPointerException" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>JSP Page</title>
    </head>
    <body>

        <form>
            <table>
                <%
                    if (request.getParameter("search") != null) {
                        String value = request.getParameter("keyword");
                        String kw = String.valueOf(value);
                        SQLconnector SQLcon = new SQLconnector();
                        String userid = "";
                        try {

                            Connection con = SQLcon.getCon();
                            Statement st = con.createStatement();
                            ResultSet rs = st.executeQuery("select * from customers where surname like '%" + kw.trim() + "%' OR firstname like '%" + kw.trim() + "%'  OR  phoneno like '%" + kw.trim() + "%' AND branch = '" + session.getAttribute("mybranch") + "'");
                            if (rs.next()) {
                %>
                <tr><td>Name: </td><td><input type="text" value="<%=rs.getString("branch")%>" > </td></tr>
                <tr><td>Name: </td><td><input type="text" value="<%=rs.getString("RegNo")%>" > </td></tr>
                <tr><td>Address: </td><td><input type="text" value="<%=rs.getString("Surname")%>" > </td></tr>
                <tr><td>Contact No: </td><td><input type="text" value="<%=rs.getString("Firstname")%>" > </td></tr>
                <tr><td>Email: </td><td><input type="text" value="<%=rs.getString("CustType")%>" > </td></tr>
                        <%
                                    }
                                } catch (Exception e) {
                                    out.println(e);
                                }
                            } else {
                            }

                            //response.sendRedirect("transation.jsp");
                        %>
            </table>
        </form>

    </body>
</html>
