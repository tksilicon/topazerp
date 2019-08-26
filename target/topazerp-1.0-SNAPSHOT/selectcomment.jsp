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
            function generateexcel() {
                var table= document.getElementById('customer');
                var html = table.outerHTML;
                window.open('data:application/vnd.ms-excel,' + encodeURIComponent(html));
            }
        </script>
    </head>
    <body>

        <table align="center"    id="customer" width="260"  height="100" valign="top">

       
        <%
            try {
                SQLconnector sqlcon = new SQLconnector();
                Connection con = sqlcon.getCon();
                Statement st = con.createStatement();
                String sql = "select * from comment";
                ResultSet set = st.executeQuery(sql);
        %>
        <%
            if(set.next()) {
        %>
        <TR align="center">
            <TD align="center" width="260"><FONT FACE="tahoma" SIZE="2" color="black"><%=set.getString("des")%></FONT></TD>
        </TR>
        <%
                }
              con.close();
              st.close();
            } catch (SQLException e) {
                out.print(e);
            }
        %>
    </table>

</body>
</html>
