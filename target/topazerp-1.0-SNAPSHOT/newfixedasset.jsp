<%-- 
    Document   : newcustomer
    Created on : Dec 4, 2012, 1:56:19 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="Classespack.*" %>
<%@page   import="java.sql.*"   %>
<%@page   import="java.sql.Statement"   %>
<%@page  import="newpackage.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*" %>

<%@page import="java.lang.NullPointerException" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <script type="text/JavaScript">
           
            function MM_jumpMenu(targ,selObj,restore){ //v3.0
                eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
                if (restore) selObj.selectedIndex=0;
            }
            function MM_popupMsg(msg) { //v1.0
                alert(msg);
              
        </script>

        <script type="text/JavaScript">
               
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
     
        </script>
        <script>
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
    </head>
    <body>

        <table align="center" frame="border" bgcolor="#333399" width="700" height="30" style="background-image:  url(images/acct1.gif);">

            <tr align="center">
                <td align="left"><img src="images/support_smaller.gif" alt="image" /></td>
                <td align="center"><font size="4" color="white"><b>FIXED ASSET REGISTRATION FORM </b></font>  </td>
                <td align="right"><img src="images/training_smaller.gif" alt="image" /></td>
            </tr>
        </table>
        <form action="insert.jsp" method="post"  onsubmit="MM_validateForm('date','','R','acctno','','R','acctname','','R','balance','','RisNum');return document.MM_returnValue" >



            <table align="center" frame="border" id="customer" bgcolor="#eeeeee" width="700" height="260" style="background-image:  url(images/back.gif);">
                <tr>


                    <td ><font color="#333399" size="3">Branch: </font> </td>
                        <%
                                
                                try {

                                    SQLconnector SQLcon = new SQLconnector();

                                    Connection con = SQLcon.getCon();
                                    Statement st = con.createStatement();

                                    String sql = "select * from branch where branch_name = '" + session.getAttribute("mybranch") + "'";


                                    ResultSet rss = st.executeQuery(sql);    

                    %>

                   

                    <td> <select  name="branch"  >
                            <%
                                    while (rss.next()) {


                    %>

                           
                            <option value="<%=rss.getString("branch_name")%>"><%=rss.getString("branch_name")%></option>  

                                  
                            <% }%>
                        </select>
                        <%
                                    con.close();
                                        //response.sendRedirect("regexpenses.jsp");
                                    } catch (Exception e) {
                                    }
                        %>
                    <td ><font color="#333399" size="3">Purchase Date: </font> </td>
                   <td><input type="text" size="30" name="date" value="<%=session.getAttribute("mynewdate") %>" readonly="readonly"></td>
                <tr>
                    <td ><font color="#333399" size="3">Fixed Asset Name: </font> </td>
                    <td ><input type="text" name="fixedname" size="30"> </td>
                    <td ><font color="#333399" size="3">Description: </font> </td>
                    <td ><input type="text" name="description" size="30"> </td>
                </tr>

                <tr>

                    <td ><font color="#333399" size="3">Cost: </font> </td>
                    <td ><input type="text" name="cost" size="30" autocomplete="off"> </td>
                    <td ><font color="#333399" size="3">Location: </font> </td>
                    <td ><input type="text" name="location"  size="30"> </td>



                </tr>

                <tr>
                    <td ><font color="#333399" size="3">Depreciation(%): </font> </td>
                    <td ><input type="text" name="depre"  size="30"> </td>
                    <td ><font color="#333399" size="3">NBV: </font> </td>
                    <td ><input type="text" name="nbv"  size="30"> </td>
                </tr>
                <tr>
                    <td ><font color="#333399" size="3">Fixed Asset Type </font> </td>
                        
                    <td> <select  name="acctname"   width="30" >
                            <option>Land</option>
                             <option>Office Equipments</option>
                             <option>Furniture and Fixtures</option>
                             <option>Motor Vehicle</option>
                             <option>Buildings</option>
                             <option>Plant and Machinery</option>
                        </select>
                    </td>
                </tr>

            </table>

            <table align="center" frame="border" bgcolor="#663399" width="700" height="45">

                <tr align ="left">
                    <td align ="left"><input type="submit" value="Post" name="fixedasset"   style="background-color:red;font-weight:bold;color:#ffffff;" /></td>
                    <td align ="left"><input type="Reset" value="Clear All Records"  style="background-color:red;font-weight:bold;color:#ffffff;" /> </td>
                    <td align ="left"><a href="displayfixedasset.jsp"><input type="button" value="Open Fixed Assets"   style="background-color:red;font-weight:bold;color:#ffffff;" /></a></td>
                    <td align ="left"><input type="buttton" value="Print" size="20"    style="background-color:red;font-weight:bold;color:#ffffff;" ONCLICK="printDiv();" /></td>
                </tr>
            </table>

        </form>
    </body>
</html>
