<%-- 
    Document   : welcome
    Created on : Feb 26, 2012, 6:15:00 AM
    Author     : deji
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="newpackage.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*" %>
<%@page  import="java.text.DecimalFormat" %>
<%@page import="Classespack.*" %>
<%@page import="java.lang.NullPointerException" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
         <script type="text/javascript">   
            function signout()
            {
          
                window.location.href="signout.jsp";
            }
        </script>
         <style>
            table.rowHover tr:hover{ background-color:  orange; }
           table.rowHover TR:hover{ background-color:  orange; }

        </style>
        <title>Invoice Generation</title>
    </head>
    <body>



        <table align="center" class="alt1"   frame="border"  id="customer" width="900"  height="100" valign="top" cellspacing="1">
            <TR valign="center" bgcolor="#333366" align="center" height="30">

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>S/N</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Branch</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Purchase Date</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Fixed Asset NAme</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Description</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Cost</B></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Location</B></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Depre.%</B></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>NBV</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Type</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Last Depre</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Delete</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Depre</B></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="blue"><B>Diff.</B></FONT></TD>




            </TR>
            <%

            DecimalFormat formatter = new DecimalFormat("###,###,###");
                        try {

                            SQLconnector sqlcon = new SQLconnector();
                            Connection con = sqlcon.getCon();

                            Statement st = con.createStatement();

                            String sql = "select * from fixedasset";

                            ResultSet set = st.executeQuery(sql);

            %>
            <%
                                        while (set.next()) {
                                            
                                            
            %>



            <TR bgcolor="#eeeeee">
                <TD align="center" height="25"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getInt(1)%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444" > <%=set.getString(2)%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString(3)%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString(4)%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString(5)%></FONT></TD>

                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat(6))%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= set.getString(7)%></FONT></TD>

                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getInt(8)%></FONT></TD>
                <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=formatter.format(set.getFloat(9))%></FONT></TD>
                <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><a href="displayfixedassettype.jsp?type=<%=set.getString("account")%>"><%=set.getString(10)%></a></FONT></TD>
                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString(11)%></FONT></TD>
               


                <td align="center"><a href="deleting.jsp?deletefixed=<%=set.getInt(1)%>"> <img src="images/delete.gif" alt="delete" onclick="javascript:return confirm('Are you sure you want to delete this Asset')" ></a></td>

                <td align="center"><a href="insert.jsp?deprename=<%=set.getInt(1)%>"><input type="button" name="update" value="Depre"  onclick="javascript:return confirm('You are about to depreciate this asset')" style="background-color:#ff0000;font-weight:  bold;font-size: x-small; color:#ffffff;"  ></a></td>
                 <TD align="center"><FONT FACE="tahoma" SIZE="2" color="gray"><%=formatter.format(set.getFloat(6)-set.getFloat(9))%></FONT></TD>

            </TR>

            <%
                            }
                        } catch (SQLException e) {
                            out.print(e);
                        }


            %>
        </table>

        <table align="center" dir="LTR"   frame="border"  width="900"  height="30" valign="top">

            <tr align="left" width = "100">
            
                <td align="left"> <INPUT NAME = "print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;"
                                         ONCLICK="printDiv()" />
                </td>
            
                <td align="right"><INPUT NAME = "export" TYPE="button" VALUE="Export to Excel" onclick="generateexcel();" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                </td>
            

            <form action="displayfixedasset.jsp" method="post">
                <td align="right"> <INPUT NAME="export" TYPE="submit" VALUE="View All Fixed Asset" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
                </td>
            </form>
        </tr>
    </table>

    <table align="left" dir="LTR" width="600"  height="50" valign="top">
        <tr

    </tr>
</table>
<table align="left" dir="LTR"      width="600"  height="100" valign="top">


    <%
                
                AcctBal ab = new AcctBal();

                double total = ab.totalassetcost();
                double nbv = ab.totalassetnbv();
                double depre = ab.totalassetcost() - ab.totalassetnbv();




    %>

    <tr>
        <td><font size="3" face="arial" color="blue"><U>FIXED ASSET SUMMARY</U></font></td>
    </tr>

    <tr>
        <td></td>
    </tr>

    <tr>
        <td><font size="3" face="arial" color="blue">Total Fixed Asset:............................................ N<%out.print(formatter.format(total));%>.00</font></td>
    </tr>

    <tr>
        <td><font size="3" face="arial" color="blue">Total Depreciation:............................. .............N<%out.print(formatter.format(depre));%>.00</font></td>
    </tr>

    <tr>
        <td><font size="3" face="arial" color="blue">Total NBV:..........................................................N<%out.print(formatter.format(nbv));%>.00</font></td>
    </tr>


</table>

</body>
</html>
