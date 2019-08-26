
<%@page import="newpackage.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*" %>
<%@page import="java.lang.NullPointerException" %>

<style>
    table.rowHover tr:hover{ background-color:  orange; }
    table.rowHover TR:hover{ background-color:  orange; }

</style>

<%
    String pref = "";
    String res = "";
    int bal = 0;
%>

<form action="transaction.jsp" method="post">
    <table align="center"  class="alt1"  width="300" cellspacing="1" cellpadding="1"  height="80" valign="top"  >

        <TR valign="center" bgcolor="black" align="center" height="7">
            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="green"><b>Branch</b></FONT></TD>

            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="green"><b>SurName</b></FONT></TD>

            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="green"><b>FirstName</b></FONT></TD>

            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="green"><b>CustType</b></FONT></TD>

            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="green"><b>Select</b></FONT></TD>

        </TR>
        <%
            if (request.getParameter("search") != null) {
                String value = request.getParameter("keyword");
                String kw = String.valueOf(value);

                try {
                    SQLconnector sqlcon = new SQLconnector();
                    Connection con = sqlcon.getCon();

                    Statement st = con.createStatement();
                    String branch = (String) session.getAttribute("mybranch");
                    //out.print(branch);
                    ResultSet rs = st.executeQuery("select * from customers where surname like '"+kw+"%' OR firstname like '"+kw+"%' ");


                    String custid = "";
        %>
        <%
            while (rs.next()) {
        %>

        <tr valign="top" bgcolor="#eeeeee">
            <TD align="left" height="25"><FONT FACE="tahoma" SIZE="2" color="black"><%=rs.getString("branch")%></FONT></TD>

            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="black"><%=rs.getString("Surname")%></FONT></TD>

            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="black"><%=rs.getString("Firstname")%></FONT></TD>

            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="black"><a href="custpackage.jsp?name=<%=rs.getString("RegNo")%>"><%=rs.getString("CustType")%></a></FONT></TD>

            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="black"><input type="submit" size="10" value="<%= res = rs.getString("RegNo")%>" name="custid"  style="background-color:yellowgreen;font-weight:bold;color:#ffffff;" /></FONT></TD>

        </tr>

        <%
            }

        %>


        <%
                    con.close();
                } catch (Exception e) {
                    //out.println(e);
                }
            } else {
            }
            // response.sendRedirect("transaction.jsp");

        %>

    </table>

</form>

