<%
if(session.getAttribute("username") == null){
 response.sendRedirect("index.jsp");
 }
session.setAttribute("pageinfo2", "Bank Statements Sorting");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="newpackage.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*" %>
<%@page import="java.lang.NullPointerException" %>
<%@page  import="java.text.DecimalFormat" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="icon"  type="image/gif" href="echelon1.gif">
        <title>Bank Statements</title>
        <script>
            function printDiv()
            {
                var divToPrint=document.getElementById('customer');
                newWin= window.open("");
                newWin.document.write(divToPrint.outerHTML);
                newWin.print();
                newWin.close();
            }
       
        </script>
        
         <script type="text/javascript">
            function generateexcel() {
                var table= document.getElementById('customer');
                var html = table.outerHTML;
                window.open('data:application/vnd.ms-excel,' + encodeURIComponent(html));
            }
        </script>

         <style>
            table.rowHover tr:hover{ background-color:  orange; }
            table.rowonClick tr:select{background-color: inherit;}

        </style>
    </head>
    <body>

        <jsp:include flush="true" page="webheader.jsp" ></jsp:include>

            <jsp:include flush="true" page="pageheader.jsp" ></jsp:include>
            <table align="center" bgcolor="white" width="1205" height="360" frame="border" cellpadding="1" cellspacing="1">



            <tbody align="left">


            <td align="left" width="180" valign="top"> <jsp:include page="menu.jsp" flush="true"></jsp:include></td>
           
            <td align="right" width="300"  valign="top"><div align="center"   style=" overflow-y: scroll;  height: 580px;" > 
                     <form action="displaybanksort.jsp" method="post">
                            <table width="350" align="center"  style=" margin-bottom: 10px; margin-top: 10px;" >
                                <tr>
                                    <td>From:</td>
                                    <td><input type="date" size="15" name="fromdate" value="<%=session.getAttribute("mynewdate")%>"></td>
                                <td width="20"></td>
                                <td>To:</td>
                                <td><input type="date" size="15" name="todate" value="<%=session.getAttribute("mynewdate")%>"></td>
                                <td><input type="submit" name="invoicesort" value="View"></td>
                            </tr>
                        </table>
                    </form>

                <table align="center"  class="rowHover"  frame="border"  id="customer" width="820" cellpadding="1" cellspacing="1"  >

            <TR  bgcolor="#333366" align="center" height="30">
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>S/N</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Branch</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Date</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Tran Id</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Tran Description</B></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Debit Amt(=N=)</B></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Credit Amt(=N=)</B></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Balance(=N=)</B></FONT></TD>
               
            </TR>
            
            <% 
                
             DecimalFormat formatter = new DecimalFormat("###,###,###");
              if (request.getParameter("invoicesort") != null) {

                                String value = request.getParameter("fromdate");
                                String d1 = String.valueOf(value);

                                String value2 = request.getParameter("todate");
                                String d2 = String.valueOf(value2);
                try {

                    SQLconnector sqlcon = new SQLconnector();
                    Connection con = sqlcon.getCon();

                    Statement st = con.createStatement();

                    String sql = "select * from bankstatement where date between '" + d1 + "' and '" + d2 + "'";

                    ResultSet set = st.executeQuery(sql);

            %>
            <%
                while (set.next()) {
            %>

            <TR bgcolor="#eeeeee" height="25">
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getInt(1)%></FONT></TD>
                
                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(2)%></FONT></TD>
                
                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(3)%></FONT></TD>
                
                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(4)%></FONT></TD>
                
                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(5)%></FONT></TD>
                
                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat(6)) %></FONT></TD>
                
                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat(7)) %></FONT></TD>
                
                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat(8)) %></FONT></TD>
  
            </TR>

            <%
                    }
                con.close();
                } catch (SQLException e) {
                    out.print(e);
                }
              }

            %>
        </table>

        <table align="center" dir="LTR"   frame="border"  width="820"  height="30" valign="top">

            <tr align="left" width="100">
            <form>
                <td align="left"> <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                         ONCLICK="printDiv()" />
                </td>
            </form>
             <form action="mychart.jsp" method="post">
                <td align="left"> <INPUT NAME="cashflow" TYPE="submit" VALUE="Create Bar Chart" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                        />
                </td>
            </form>
            <form action="insert.jsp" method="post">
                <td align="right"><INPUT NAME="export" TYPE="button" VALUE="Export to Excel" onclick="generateexcel();" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                </td>
            </form>
        </tr>
    </table>
            </div> 
        </td>

        </tbody>

    </table>

    <jsp:include page="footer.jsp" flush="true"></jsp:include>
</body>
</html>
