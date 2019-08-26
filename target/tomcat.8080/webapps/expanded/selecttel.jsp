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
        <script type="text/javascript">
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

        <table align="center"    id="customer" width="250" >


            <%
                       
                        String myw = "";

                        try {

                            SQLconnector sqlcon = new SQLconnector();
                            Connection con = sqlcon.getCon();

                            Statement st = con.createStatement();

                            if (session.getAttribute("mybranch").equals("HEADOFFICE")) {

                                String sql = "select * from tel where id = 1";
                                ResultSet set = st.executeQuery(sql);
                                if (set.next()) {
                                    myw = set.getString("tel");
                                }
                            }
                            if (session.getAttribute("mybranch").equals("HAVILAHGOLD")) {
                                String sql = "select * from tel where id = 2";
                                ResultSet set = st.executeQuery(sql);
                                if (set.next()) {
                                    myw = set.getString("tel");
                                }

                            }
                            if (session.getAttribute("mybranch").equals("KINGSDELIGHT")) {
                               String sql = "select * from tel where id = 3";
                                ResultSet set = st.executeQuery(sql);
                                if (set.next()) {
                                    myw = set.getString("tel");
                                }
                            }
            %>

            <TR align="center">
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="black"><b><%=myw%></b></FONT></TD>
            </TR>

            <%
                            con.close();
                    }
                        
                catch(NullPointerException  e) {
                            out.print(e);
                        }


            %>
        </table>

    </body>
</html>
