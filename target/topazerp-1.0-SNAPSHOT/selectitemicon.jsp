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
        <title>JSP Page</title>


    </head>
    <body>
        <form  action="transaction.jsp"  method="post">
            <table align="center" width="680"  height="100" >


                <%

                    if (request.getParameter("name") != null) {
                        String value = request.getParameter("name");
                        String kw = String.valueOf(value);


                        try {
                            SQLconnector sqlcon = new SQLconnector();
                            Connection con = sqlcon.getCon();

                            Statement st = con.createStatement();

                            String sql = "select * from products where category = '"+kw+"'";

                            ResultSet set = st.executeQuery(sql);

                %>

                <tr bgcolor="#eeeeee">

                    <%

                        int count = 0;
                        while (set.next()) {
                    %>

                    <td> <input type="submit" size="10" value="<%=set.getString("itemname")%>" name="itemname" style="background-color:greenyellow;font-weight:bold;color:blueviolet; height: 40px"> </td>
                        <%
                            count++;
                            if (count % 3 == 0) {
                        %>    
                </tr>
                <tr bgcolor="#eeeeee">
                    <%                    }

                        }
                    %>

                    <%

                              con.close();
                            } catch (SQLException e) {
                                out.print(e);
                            }


                        }

                        response.sendRedirect("transaction.jsp");

                    %>

            </table>
        </form>


    </body>
</html>
