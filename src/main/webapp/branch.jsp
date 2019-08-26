<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page  import="Classespack.*" %>
<%@page   import="java.sql.*"   %>
<%@page   import="java.sql.Statement"   %>
<%@page  import="newpackage.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*" %>
<%@page import="java.lang.NullPointerException" %>

<script type="text/javascript">
    function handleSelect(elm)
    {
        window.location = elm.value + ".jsp";
    }
</script>

<%

    try {

        SQLconnector SQLcon = new SQLconnector();

        Connection con = SQLcon.getCon();
        Statement st = con.createStatement();

        String sql = "select * from branch where branch_name = '" + session.getAttribute("mybranch") + "'";

        ResultSet rss = st.executeQuery(sql);
%>

<table align="center" frame="border" width="240" height="80">

    <tr align="left">

        <td  align="right"><font color="green" size="3">Branch: </font> </td>                      

        <td> <select  name="branch"   style=" background-color: purple;   color:  gold;  font-family: tahoma;" >
                <%
                    while (rss.next()) {
                        //l.put(rss.getString("branch_name"), rss.getString("branch_name"));

                %>
                <option value="<%=rss.getString("branch_name")%>"> <%=rss.getString("branch_name")%> </option>
                <% }%>
            </select>
        </td>
    </tr>

</table>

<%
        //response.sendRedirect("regexpenses.jsp");
    } catch (Exception e) {
    }
%>

