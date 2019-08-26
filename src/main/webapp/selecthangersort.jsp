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
        <table align="center" bgcolor="white" width="1205" height="600" frame="border">
            <tbody align="left">
            <td>

                <div align="right"    style=" overflow-y: scroll;  border:  scrollbar; width: 1190px; height: 600px;" >

                     <form action="selecthangersort.jsp" method="post">
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

                    <table align="center"  class="rowHover"  frame="border"  id="customer" width="1100"  height="100" valign="top">

                        <TR valign="center" bgcolor="#333366" align="center" height="30">

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>S/N</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Branch</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Date</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Invoice no</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Tag No</B></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Hung Packs</B></FONT></TD>
                           
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Folded</B></FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>No. Hangers</B></FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Presser</B></FONT></TD>
                          
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Collated By</B></FONT></TD>
                           
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Delete</B></FONT></TD>
                          
                        </TR>
                        <%
                                if (request.getParameter("invoicesort") != null) {

                                    String value = request.getParameter("fromdate");
                                    String d1 = String.valueOf(value);

                                    String value2 = request.getParameter("todate");
                                    String d2 = String.valueOf(value2);
                            try {

                                SQLconnector sqlcon = new SQLconnector();
                                Connection con = sqlcon.getCon();

                                Statement st = con.createStatement();

                                String sql = "select id, branch,  date, invoiceno, tagnumber, hungpacks, folded, nohangers, presser, collatedby from hangeranalysis where date between '"+d1+"' and '"+d2+"' ";

                                ResultSet set = st.executeQuery(sql);

                        %>
                        <%
                            while (set.next()) {
                        %>



                        <TR bgcolor="#eeeeee">
                            <TD align="center" height="25"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getInt(1)%></FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray" > <%=set.getString(2)%></FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(3)%></FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(4)%></FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(5)%></FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%= set.getInt(6)%></FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getInt(7)%></FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getInt(8)%></FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(9)%></FONT></TD>
                            
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=set.getString(10)%></FONT></TD>
                           
                            <td align="center"><a href="deleting.jsp?deletehanger=<%=set.getInt(1)%>"><img src="delete.gif"  onclick="javascript:return confirm('You are about to delete this item')" ></a></td>



                        </TR>

                        <%
                                
                                }
                              con.close();
                            } catch (SQLException e) {
                                out.print(e);
                            }


                        %>

                        
                    </table>
                          <%
                                                    } else {
                                                    }
                    %>

                    <table align="center" dir="LTR"   frame="border"  width="1100"  height="30" valign="top">

                        <tr align="left" width="100">
                        <form>
                            <td align="left"> <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;" 
                                                     ONCLICK="printDiv()" />
                            </td>
                        </form>

                        <form>
                            <td align="right"> <INPUT NAME="export" TYPE="button" VALUE="Export to Excel" onclick="generateexcel();" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                            </td>
                        </form>
                        </tr>
                    </table>

                </div>

            </td>
        </tbody>
    </table>
    <jsp:include page="footer_1.jsp" flush="true"></jsp:include>
</body>
</html>
