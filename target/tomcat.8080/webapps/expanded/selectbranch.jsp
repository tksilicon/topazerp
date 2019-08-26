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
        <style>
            table.rowHover tr:hover{ background-color:  orange; }
            table.rowonClick tr:select{background-color: inherit;}

        </style>
    </head>
    <body>

        <table align="center" class="rowHover"   frame="border"  width="780"  cellspacing="1">

            <TR valign="center" bgcolor="#333366" align="center" height="30">
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Branch Id</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Branch Name</B></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Address</B></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Branch_Manager</B></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Date Commission</B></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Update</B></FONT></TD>
                
                 <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue">Delete</B></FONT></TD>
                





            </TR>
            <%

                try {

                    SQLconnector sqlcon = new SQLconnector();
                    Connection con = sqlcon.getCon();

                    Statement st = con.createStatement();

                    String sql = "select * from branch";

                    ResultSet set = st.executeQuery(sql);

            %>
            <%
                while (set.next()) {
            %>



            <TR>
                <TD align="center" height="25"><FONT FACE="tahoma" SIZE="2" color="grey"><%=set.getString("id".toUpperCase())%></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="grey"><%=set.getString("branch_name".toUpperCase())%></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="grey"><%= set.getString("address".toUpperCase())%></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="grey"><%=set.getString("Branch_Manager")%></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="grey"><%=set.getString("commissioned_date")%></FONT></TD>
                
                <td align="center"><input type="button" name="delete" value="Update" style="background-color:#ff0000;font-weight:  bold;font-size: x-small; color:#ffffff;" onclick="deleteRecord(<%=set.getString(1)%>);" ></td>
                <td align="center"><input type="button" name="delete" value="Delete" style="background-color:#ff0000;font-weight:  bold;font-size: x-small; color:#ffffff;" onclick="deleteRecord(<%=set.getString(1)%>);" ></td>



                <%
                        }
                con.close(); 
                    } catch (SQLException e) {
                        out.print(e);
                    }


                %>



        </table>





    </body>
</html>
