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
         <link rel="icon"  type="image/gif" href="logo.gif">
        <title>New Withdraw</title>

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

          <script type="text/javascript">
                function show_now(){
                    var my_day=new Date()
                    //var dt = new Date(\"Aug 16, 2005 05:55:00\");


                    var month_name=new Array(12);
                    month_name[0]="Jan"
                    month_name[1]="Feb"
                    month_name[2]="March"
                    month_name[3]="April"
                    month_name[4]="May"
                    month_name[5]="June"
                    month_name[6]="July"
                    month_name[7]="Aug"
                    month_name[8]="Sept"
                    month_name[9]="Oct"
                    month_name[10]="Nov"
                    month_name[11]="Dec"

                    //alert ("Today Day is  = " + day_name[my_day.getDay()+2]);
                    document.getElementById('month').value = month_name[my_day.getMonth()];
                    document.getElementById('year').value = my_day.getUTCFullYear();
                }
        </script>
    </head>
    <body>

        <table align="center" frame="border" bgcolor="#333399" width="700" height="30" style="background-image:  url(images/acct1.gif);">

            <tr align="center">
                <td align="left"><img src="images/support_smaller.gif" alt="image" /></td>
                <td align="center"><font size="4" color="white"><b>NEW WITHDRAWAL FORM </b></font>  </td>
                <td align="right"><img src="images/training_smaller.gif" alt="image" /></td>
            </tr>
        </table>
        <form action="insert.jsp" method="post"  onsubmit="MM_validateForm('date','','R','acctno','','R','acctname','','R','balance','','RisNum');return document.MM_returnValue" >


            <table align="center" frame="border" bgcolor="#eeeeee" width="700" height="200" style="background-image:  url(images/back.gif);">

                <tr>


                    <td ><font color="#333399" size="3">Branch: </font> </td>
                        <%
                            HashMap lm = new HashMap();
                             SQLconnector SQLcon = new SQLconnector();

                                    Connection con = SQLcon.getCon();
                            try {

                                Statement st1 = con.createStatement();

                                String sql1 = "select * from branch where branch_name = '"+session.getAttribute("mybranch")+"'";


                                ResultSet rss1 = st1.executeQuery(sql1);



                                while (rss1.next()) {


                                    lm.put(rss1.getString("branch_name"), rss1.getString("branch_name"));
                                    session.setAttribute("acctmap", lm);

                                }

                        %>

                    <%

                        Set s = lm.keySet();

                        Iterator it = s.iterator();

                    %>


                    <td> <select  name="branch"   width="30" >

                            <%

                                while (it.hasNext()) {
                                    String v = (String) it.next();


                            %>
                            <option value="<%=v%>"  

                                    <%
                                        String v4 = null;
                                        if (request.getParameter("branch") != null) {
                                            v4 = request.getParameter("branch");

                                            if (v4.equals(v)) {%>

                                    selected
                                    <%  } else {%>                               

                                    selected

                                    <%  }
                                        }

                                    %>
                                    > <%= v%> </option>
                            <% }%>
                        </select>
                    </td>
                    <%
                                //con1.close();
                            //response.sendRedirect("regexpenses.jsp");
                        } catch (Exception e) {
                        }
                    %>
                </tr>

                <tr>
                    <td ><font color="#333399" size="3">Date: </font> </td>
                 <td><input type="text" size="30" name="date" value="<%=session.getAttribute("mynewdate") %>"></td>

                    <td ><font color="#333399" size="3">Cheque No: </font> </td>
                    <td ><input type="text" name="cheque" size="30"> </td>
                </tr>

                <tr>

                    <td><font color="#333399" size="3">Withdrawal: </font> </td>
                    <td><input type="text" name="withdrawal" size="30"> </td>
                    <td><font color="#333399" size="3">Amount: </font> </td>
                    <td><input type="text" name="amount" value="" autocomplete="off"  size="30" onmouseover="show_now();"> </td>

                </tr>

         
<tr>
                    <td ><font color="#333399" size="3">Sales Account</font> </td>
                    
                        <%
                            
                            try {

                                Statement st = con.createStatement();

                                String sql = "select * from account where accounttype = 'cash'";


                                ResultSet rss = st.executeQuery(sql);

                        %>


                   

                    <td> <select  name="sales"   width="30" >

                            <%
                                 while (rss.next()) {


                                %>
                                <option value="<%= rss.getString("accountname")  %>" ><%= rss.getString("accountname")  %></option>
                                    <%
                                 }
                                     %>
                                  
                     </select>
                        <%
                               // con.close();
                                // response.sendRedirect("regpayment.jsp");
                            } catch (Exception e) {
                            }
                        %>

                        
                    </td>

                    <td ><font color="#333399" size="3">Bank Account </font> </td>
                       
                        <%
                            
                            try {
 
                                Statement st = con.createStatement();

                                String sql = "select * from account where accounttype = 'Bank'";


                                ResultSet rss = st.executeQuery(sql);



                               

                        %>
               <td> <select  name="acctname"   >
                            <option value="-1">Select a Bank Account</option>

                            <%
                                 while (rss.next()) {


                                %>
                                <option value="<%= rss.getString("accountname")  %>" ><%= rss.getString("accountname")  %></option>
                                    <%
                                 }
                                     %>
                                  
                     </select>
                        <%
                                //con.close();
                                // response.sendRedirect("regpayment.jsp");
                            } catch (Exception e) {
                            }
                            con.close(); 
                        %>


                    </td>
                </tr>

            </table>
            <input type="hidden" name="month"  id="month">
                <input type="hidden" name="year"  id="year">
            <table align="center" frame="border" bgcolor="#663399" width="700" height="45">

                <tr align ="left">
                    <td align ="left"><input type="submit" value="Post" name="withdrawal" size="20"  style="background-color:red;font-weight:bold;color:#ffffff;" /></td>
                    <td align ="left"><input type="Reset" value="Clear All Records" size="20"  style="background-color:red;font-weight:bold;color:#ffffff;" /> </td>
                    <td align ="left"><a href="displaywithdrawal.jsp"><input type="button" value="View Withdrawal" size="20"   style="background-color:red;font-weight:bold;color:#ffffff;" /></a></td>

                    <td align ="left"><input type="buttton" value="void deposit" size="20"   style="background-color:red;font-weight:bold;color:#ffffff;" /></td>
                </tr>
            </table>

        </form>
    </body>
</html>