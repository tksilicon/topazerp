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
        <title>New C.O.A.</title>

        <script type="text/JavaScript">
            <!--
            function MM_jumpMenu(targ,selObj,restore){ //v3.0
                eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
                if (restore) selObj.selectedIndex=0;
            }
            function MM_popupMsg(msg) { //v1.0
                alert(msg);
                //-->
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
                    } if (errors) alert('The following error(s) occurred:\n'+errors);
                    document.MM_returnValue = (errors == '');
                }
                //-->
        </script>
    </head>
    <body>

        <table align="center" frame="border" bgcolor="#333399" width="700" height="40">

            <tr align="center">
                <td align="left"><img src="support_smaller.gif" alt="image" /></td>
                <td><font size="4" color="white"><b>LOAN APPLICATION FORM </b></font>  </td>
                <td align="right"><img src="training_smaller.gif" alt="image" /></td>
            </tr>
        </table>
        <form action="insert.jsp" method="post"  onsubmit="MM_validateForm('date','','R','acctno','','R','acctname','','R','balance','','RisNum');return document.MM_returnValue" >
            <table align="center" frame="border" bgcolor="#eeeeee" width="700" height="170">

                <tr>
                    <td><font color="blue" size="3">Cash Account:</font></td>
                    <td><select    width="30" >
                            <option>Cash-at-hand(Sales)</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td ><font color="blue" size="3">Reg. Date: </font> </td>
                    <td><input type="text" size="30" name="date" value="<%=session.getAttribute("mynewdate")%>"></td>

                    <td ><font color="blue" size="3">Staff's Name: </font> </td>
                    <%
                                HashMap l = new HashMap();


                                try {

                                    SQLconnector SQLcon = new SQLconnector();

                                    Connection con = SQLcon.getCon();
                                    Statement st = con.createStatement();

                                    String sql = "select * from ADMIN ";


                                    ResultSet rss = st.executeQuery(sql);

                    %>

                   
                    <td> <select  name="staffname" >
                            <%
                           while (rss.next()) {

                    %>
                    <option value="<%=rss.getString("surname")+" "+ rss.getString("firstname")%>"><%=rss.getString("surname")+" "+ rss.getString("firstname")%></option>
                                    
                                    <% }%>
                        </select>

                        <%
                                        //response.sendRedirect("regexpenses.jsp");
                           con.close();
                                    } catch (Exception e) {
                                    }
                        %>
                    </td>
                </tr>

                <tr>
                    <td ><font color="blue" size="3">Amount: </font> </td>
                    <td ><input type="text" name="amount"  size="30"> </td>

                    <td ><font color="blue" size="3">Pay Term (%) </font> </td>
                    <td ><input type="text" name="term"  size="30"> </td>
                </tr>

            </table>

            <table align="center" frame="border" bgcolor="#663399" width="700" height="45">

                <tr align ="left">

                    <td align ="center"><input type="submit" value="Post" name="loan" size="20"  style="background-color:red;font-weight:bold;color:#ffffff;" /></td>
                    <td align ="center"><input type="Reset" value="Clear All Records" size="20"  style="background-color:red;font-weight:bold;color:#ffffff;" /> </td>
                    <td align ="center"><a href="displayloan.jsp"><input type="button" value="Open Loan Reports" size="20"   style="background-color:red;font-weight:bold;color:#ffffff;" /></a></td>

                </tr>
            </table>

        </form>
    </body>
</html>
