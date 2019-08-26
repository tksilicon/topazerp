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
<%@page  import="java.text.DecimalFormat" %>
<%@page import="java.lang.NullPointerException" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Invoice</title>

        <script type="text/javascript">
            function handleSelect(elm)
            {
                window.location = elm.value+".jsp";
            }
        </script>
    </head>
    <body>

        <table align="left"    width="300" >


            <%
            DecimalFormat formatter = new DecimalFormat("###,###,###");
            float pick = 0;
                try {

                    SQLconnector sqlcon = new SQLconnector();
                    Connection con = sqlcon.getCon();

                    Statement st = con.createStatement();

                    String sql = "select * from ourinvoice where invoiceid = '" + session.getAttribute("myid") + "'  ";
                    
                    String sq = "select sum(amtpaid) from pickup where invoiceid = '" + session.getAttribute("myid") + "'  ";

                     ResultSet set2 = st.executeQuery(sq);
                     if(set2.next()){
                         pick = set2.getFloat(1);
                     }
                    ResultSet set = st.executeQuery(sql);

            %>
            <%
                while (set.next()) {
            %>


 <tr align="left" valign="top" width="300">
                <td width="100"><font face="arial" size="3" color="black">Total Pcs: </font> </td> <TD align="center"><FONT FACE="tahoma" SIZE="5" ><b><%=set.getInt("totalqty")%></b></FONT></TD>

            </tr> 
           
            <tr align="right">
                <td><font face="arial" size="3" color="black">Total: </font></td><TD align="right"><FONT FACE="tahoma" SIZE="3" ><%=formatter.format(set.getFloat("grandtotal"))%>.00</FONT></TD>

            </tr> 
             <tr align="right">

                <td><font face="arial" size="3" color="black">Discount: </font> </td><TD align="right"><FONT FACE="tahoma" SIZE="3" ><%= formatter.format(set.getFloat("discount"))%>.00</FONT></TD>

            </tr>
            <tr align="right">
                <td><font face="arial" size="3" color="black">Deposit: </font> </td><TD align="right"><FONT FACE="tahoma" SIZE="3" ><%= formatter.format(set.getFloat("amtpaid"))%>.00</FONT></TD>
            </tr>
            <tr align="right">
              
                <td><font face="arial" size="3" color="black">Pick Up: </font> </td><TD align="right"><FONT FACE="tahoma" SIZE="3" ><%= formatter.format(pick)%>.00</FONT></TD>
            </tr>
            <tr align="right">
                <td><font face="arial" size="4" color="black">Balance: </font> </td><TD align="right"><FONT FACE="tahoma" SIZE="5"><b><%=formatter.format(set.getFloat("balance"))%>.00</b></FONT></TD>
            </tr>  
            <tr align="center">
                <td><font face="arial" size="4"><b>Tag No:</b></font> </td><TD align="center"><FONT FACE="tahoma" SIZE="5"> <b><%=set.getString("TagNo")%></b></FONT></TD>
            </tr>  

        

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
