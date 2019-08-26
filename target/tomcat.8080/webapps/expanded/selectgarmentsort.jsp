<%
if(session.getAttribute("username") == null){
 response.sendRedirect("index.jsp");
 }
%>
<%-- 
    Document   : welcome
    Created on : Feb 26, 2012, 6:15:00 AM
    Author     : deji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*" %>
<%@page import="java.sql.Date" %>
<%@page import="newpackage.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page  import="Classespack.*" %>
<%@page import="java.lang.NullPointerException" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="icon"  type="image/gif" href="logo.gif">
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
        <script type="text/javascript">
            function handleSelect(elm)
            {
                window.location = elm.value+".jsp";
            }
        </script>
        
          <style>
            table.rowHover tr:hover{ background-color:  orange; }
           table.rowHover TR:hover{ background-color:  orange; }

        </style>
        <title>Invoice Generation</title>
    </head>
    <body>
        <jsp:include page="ophead.jsp" flush="true"></jsp:include>
        <table align="center" bgcolor="white" width="1205" height="500" frame="border">
            <tbody align="left">
            <td>

                <div align="right"    style=" overflow-y: scroll;  border:  scrollbar; width: 1190px; height: 480px;" >
                   
                     <form action="selectgarmentsort.jsp" method="post">
                                <table width="350" align="center"  style=" margin-bottom: 10px; margin-top: 10px;" >
                                    <tr>
                                        <td>From:</td>
                                        <td><input type="text" size="15" name="fromdate" value="<%=session.getAttribute("mynewdate")%>"></td>
                                    <td width="20"></td>
                                    <td>To:</td>
                                    <td><input type="text" size="15" name="todate" value="<%=session.getAttribute("mynewdate")%>"></td>
                                    <td><input type="submit" name="invoicesort" value="View"></td>
                                </tr>
                            </table>
                        </form>
                    

                    <table height="10">

                    </table>
                        <table align="center" class="rowHover"  border="1"  id="customer" width="1100"  height="80" valign="top">


                        <tr valign="center" bgcolor="#333366" align="center" height="30">

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Branch</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>From</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>To</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Suit pc</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Shirt</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Native pc</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Casuals</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Bedding</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Curtains</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Total</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Total DC</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Total LD</B></FONT></TD>

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Total PO</B></FONT></TD>

                        </tr>

                        <%
                            int sq1 = 0;
                            int sq2 = 0;
                            int sq3 = 0;
                            int sq4 = 0;
                            int sq5 = 0;
                            int sq6 = 0;
                            int sq7 = 0;
                            String dat = "";
                            try {
                                 if (request.getParameter("invoicesort") != null) {

                                    String value = request.getParameter("fromdate");
                                    String d1 = String.valueOf(value);

                                    String value2 = request.getParameter("todate");
                                    String d2 = String.valueOf(value2);

                                    SQLconnector sqlcon = new SQLconnector();
                                    Connection con = sqlcon.getCon();

                                    Statement st = con.createStatement();

                                    //  out.print(dat);

                                    String sql = "select  * from initialinsp where tdate between '"+d1+"' and '"+d2+"'";
                                    String sql1 = "select count(*) from initialinsp where  tdate between '"+d1+"' and '"+d2+"' AND itemtype = 'Suits'  ";
                                    String sql2 = "select count(*) from initialinsp where  tdate between '"+d1+"' and '"+d2+"' AND itemtype = 'Shirts'";
                                    String sql3 = "select count(*) from initialinsp where  tdate between '"+d1+"' and '"+d2+"' AND itemtype ='Natives'";
                                    String sql4 = "select count(*) from initialinsp where  tdate between '"+d1+"' and '"+d2+"' AND itemtype ='Casuals'";
                                    String sql5 = "select count(*) from initialinsp where  tdate between '"+d1+"' and '"+d2+"' AND itemtype ='Beddings'";
                                    String sql6 = "select count(*) from initialinsp where  tdate between '"+d1+"' and '"+d2+"' AND itemtype ='Curtains'";
                                    String sql7 = "select count(*) from initialinsp where  tdate between '"+d1+"' and '"+d2+"' AND indexcode ='D'";
                                    String sql8 = "select count(*) from initialinsp where  tdate between '"+d1+"' and '"+d2+"' AND indexcode ='L'";
                                    String sql9 = "select count(*) from initialinsp where  tdate between '"+d1+"' and '"+d2+"' AND indexcode ='P'";
                        %>




                        <tr bgcolor="#eeeeee">
                            <%
                                ResultSet set7 = st.executeQuery(sql);
                                if (set7.next()) {
                            %>
                            <td align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set7.getString("branch")%></FONT></td>
                            <td align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=d1%></FONT></td>
                            <td align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=d2%></FONT></td>
                            <% }%>
                            <%
                                ResultSet set = st.executeQuery(sql1);
                                if (set.next()) {
                            %>
                            <td align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=sq1 = set.getInt(1)%></FONT></td>

                            <% }%>
                            <%
                                ResultSet set1 = st.executeQuery(sql2);
                                if (set1.next()) {
                            %>
                            <td align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=sq2 = set1.getInt(1)%></FONT></td>
                            <% }%>
                            <%
                                ResultSet set2 = st.executeQuery(sql3);
                                if (set2.next()) {
                            %>
                            <td align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=sq3 = set2.getInt(1)%></FONT></td>
                            <% }%>
                            <%
                                ResultSet set3 = st.executeQuery(sql4);
                                if (set3.next()) {
                            %>
                            <td align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=sq4 = set3.getInt(1)%></FONT></td>
                            <% }%>
                            <%
                                ResultSet set4 = st.executeQuery(sql5);
                                if (set4.next()) {
                            %>
                            <td align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=sq5 = set4.getInt(1)%></FONT></td>

                            <% }%>
                            <%
                                ResultSet set5 = st.executeQuery(sql6);
                                if (set5.next()) {
                            %>
                            <td align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=sq6 = set5.getInt(1)%></FONT></td>
                            <% }%>
                            <%
                                int sum = sq1 + sq2 + sq3 + sq4 + sq5 + sq6;
                            %>
                            <td align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=sum%></FONT></td>

                            <%
                                ResultSet n1set = st.executeQuery(sql7);
                                if (n1set.next()) {
                            %>
                            <td align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=n1set.getInt(1)%></FONT></td>
                            <% }%>

                            <%
                                ResultSet n2set = st.executeQuery(sql8);
                                if (n2set.next()) {
                            %>
                            <td align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=n2set.getInt(1)%></FONT></td>
                            <% }%>
                            <%
                                ResultSet n3set = st.executeQuery(sql9);
                                if (n3set.next()) {
                            %>
                            <td align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=n3set.getInt(1)%></FONT></td>
                            <% }%>
                        </tr>

                        <%
                                  con.close();
                                }
                                 
                            } catch (SQLException e) {
                                out.print(e);
                            }


                        %>
                    </table>

                    <table align="center" dir="LTR"   frame="border"  width="1100"  height="30" valign="top">

                        <tr align="left" width="100">
                        
                            <td align="left"> <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                                     ONCLICK="printDiv()" />
                            </td>
                        
                            <td align="right"> <INPUT NAME="export" TYPE="button" VALUE="Export to Excel" onclick= "generateexcel();" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                            </td>
                        
                        </tr>
                    </table>

                </div>

            </td>
        </tbody>
    </table>

    <jsp:include page="footer_1.jsp" flush="true"></jsp:include>
</body>
</html>
