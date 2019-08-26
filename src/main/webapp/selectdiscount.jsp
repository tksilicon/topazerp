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
<%@page  import="java.text.DecimalFormat" %>
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
        <title>Incoming Jobs </title>
    </head>
    <body>

       

        <table align="center"  class="alt1"  frame="border"  id="customer" width="940"  cellspacing="1">
            <TR valign="center" bgcolor="#333366" align="center" height="30">

                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Date</B></FONT></TD>
                
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Invoice No</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Branch</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Cust Name</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Cust. Id</B></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>CustType</B></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Discount</B></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Staff</B></FONT></TD>

            </TR>
            <%
            int i = 0;
                        DecimalFormat formatter = new DecimalFormat("###,###,###");
                        try {

                            SQLconnector sqlcon = new SQLconnector();
                            Connection con = sqlcon.getCon();

                            Statement st = con.createStatement();

                            //ResultSet rs = st.executeQuery("select YEAR(getDate()) from extrainfo ");
                            //String year = "";
                            //if (rs.next()) {
                            //    year = rs.getString(1);
                            //}
                           // out.print("C.R.= " + year);

                            String sql = "select * from ourinvoice where discount > 0";

                            ResultSet set = st.executeQuery(sql);

            %>
            <%
                                                    while (set.next()) {
            %>

            <TR bgcolor="#eeeeee">
              
                <TD align="left" height="25"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("date")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><a href="selectincomeitemwtdt.jsp?invidd=<%=set.getString("invoiceid")%>"><%=set.getString("invoiceid")%></a></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("branch")%></FONT></TD>

                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("custname")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("custid")%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= set.getString("custtype")%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat("discount"))%>.00</FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("staff")%></FONT></TD>

            </TR>
            <%
            i++;
                            }
                                                      con.close();
                        } catch (SQLException e) {
                            out.print(e);
                        }
            %>
        </table>
        <table align="center" dir="LTR"   frame="border"  width="940"  height="30" valign="top">

            <tr align="left" width="100">
            <form>
                <td align="left"> <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;"
                                         ONCLICK="printDiv()" />
                </td>
            </form>
 <td><font color="blue"> Total Records = <%=i%></font></td>
            <form>
                <td align="right"> <INPUT NAME="export" TYPE="button" VALUE="Export to Excel" onclick="generateexcel();" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                </td>
            </form>
        </tr>
    </table>
</body>
</html>
