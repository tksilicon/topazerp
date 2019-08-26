<%
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.jsp");
    }
    session.setAttribute("pageinfo", "All Items Reports");
%>
<%-- 
    Document   : newcustomer
    Created on : Dec 4, 2012, 1:56:19 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="newpackage.*" %>
<%@page import="java.sql.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*" %>
<%@page import="java.lang.NullPointerException" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon"  type="image/gif" href="logo.gif">
        <title>Items</title>

        <script type="text/JavaScript">
            <!--
            function MM_jumpMenu(targ,selObj,restore){ //v3.0
            eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
            if (restore) selObj.selectedIndex=0;
            }
            function MM_popupMsg(msg) { //v1.0
            alert(msg);
            //-->

            function MM_goToURL() { //v3.0
            var i, args=MM_goToURL.arguments; document.MM_returnValue = false;
            for (i=0; i<(args.length-1); i+=2) eval(args[i]+".location='"+args[i+1]+"'");
            }
        </script>
        <style>
            table.rowHover tr:hover{ background-color:  orange; }
            table.rowHover TR:hover{ background-color:  orange; }

        </style>
        <script type="text/javascript">
            function generateexcel() {
                var table = document.getElementById('customer');
                var html = table.outerHTML;
                window.open('data:application/vnd.ms-excel,' + encodeURIComponent(html));
            }
        </script>
        <script>
            function printDiv()
            {
                var divToPrint = document.getElementById('items');
                newWin = window.open("");
                newWin.document.write(divToPrint.outerHTML);
                newWin.print();
                newWin.close();
            }

        </script>
        <script type="text/JavaScript">
            <!--
            function MM_findObj(n, d) { //v4.01
            var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
            d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
            if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
            for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
            if(!x && d.getElementById) x=d.getElementById(n); return x;
            }

            function MM_validateForm() { //v4.0
            var i,p,q,nm,test,num,min,max,errors='',args=MM_validateForm.arguments;
            for (i=0; i<(args.length-2); i+=3) { test=args[i+2]; val=MM_findObj(args[i]);
            if (val) { nm=val.name; if ((val=val.value)!="") {
            if (test.indexOf('isEmail')!=-1) { p=val.indexOf('@');
            if (p<1 || p==(val.length-1)) errors+='- '+nm+' must contain an e-mail address.\n';
            } else if (test!='R') { num = parseFloat(val);
            if (isNaN(val)) errors+='- '+nm+' must contain a number.\n';
            if (test.indexOf('inRange') != -1) { p=test.indexOf(':');
            min=test.substring(8,p); max=test.substring(p+1);
            if (num<min || max<num) errors+='- '+nm+' must contain a number between '+min+' and '+max+'.\n';
            } } } else if (test.charAt(0) == 'R') errors += '- '+nm+' is required.\n'; }
            } if (errors) alert('The Following Fields are Compulsory:\n'+errors);
            document.MM_returnValue = (errors == '');
            }
            //-->
        </script>
    </head>
    <body>  
        <jsp:include page="cshead.jsp"></jsp:include>
            <table align="center" bgcolor="white"  id="items" width="1205" height="600" frame="border">
                <tbody align="left">
                <td>
                    <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff; height:  35px;" 
                           ONCLICK="printDiv();" />

                    <INPUT TYPE="button" VALUE="Export to Excel" onclick="generateexcel();" style="background-color:#330099; font-weight:bold; color:#ffffff;  height:  35px;"  />
                    <br>
                    <br>
                    <div align="right"    style=" overflow-y: scroll;  border:  scrollbar; width: 1190px; height: 580px;">

                        <table align="center" class="alt1"  frame="border"  id="customer" width="760" cellspacing="1">

                            <TR valign="center" bgcolor="navy" align="center" height="25">

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>S/N</B></FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>Reg. Date</B></FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>Item Id</B></FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>Item's Name</B></FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>Item's Category</B></FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>Pieces</B></FONT></TD>

                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>HO Price</B></FONT></TD>
                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>BA Price</B></FONT></TD>
                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>BB Price3</B></FONT></TD>
                                <TD align="center"><FONT FACE="tahoma" SIZE="2" color="white"><B>Package Unit</B></FONT></TD>

                            </TR>
                        <%
                            int i = 0;
                            try {

                                SQLconnector sqlcon = new SQLconnector();
                                Connection con = sqlcon.getCon();

                                Statement st = con.createStatement();

                                String sql = "select * from products";

                                ResultSet set = st.executeQuery(sql);

                        %>
                        <%
                            while (set.next()) {
                        %>

                        <TR bgcolor="#eeeeee" height="25">

                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getInt("id")%></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="1" color="#444444"><%=set.getString("regdate")%></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("itemid")%></FONT></TD>
                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("itemname")%></FONT></TD>
                            <TD align="left"><FONT FACE="tahoma" SIZE="2" color="#444444"><%= set.getString("category")%></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("pieces")%></FONT></TD>
                            <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("price")%></FONT></TD>
                            <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("price2")%></FONT></TD>
                            <TD align="right"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("price3")%></FONT></TD>
                            <TD align="center"><FONT FACE="tahoma" SIZE="2" color="#444444"><%=set.getString("price4")%></FONT></TD>

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

                    <table align="center" dir="LTR"   frame="border"  width="760"  height="30" valign="top">

                        <tr align="left" width="100">
                        <form>
                            <td align="left"> <INPUT NAME="print" TYPE="button" VALUE="Print this Document" style="background-color:#330099;font-weight:bold;color:#ffffff;"
                                                     ONCLICK="printDiv()" />
                            </td>
                        </form>
                        <td><font color="blue"> Total Records = <%=i%></font></td>
                        <form action="insert.jsp" method="post">
                            <td align="right"> <INPUT NAME="export9" TYPE="submit" VALUE="Export to Excel" style="background-color:#330099;font-weight:bold;color:#ffffff;" />
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

