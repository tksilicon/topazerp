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
        <title>New Fund Transfer</title>

        <script type="text/JavaScript">
           
            function MM_jumpMenu(targ,selObj,restore){ //v3.0
                eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
                if (restore) selObj.selectedIndex=0;
            }
            function MM_popupMsg(msg) { //v1.0
                alert(msg);
               
            
                function MM_goToURL() { //v3.0
                    var i, args=MM_goToURL.arguments; document.MM_returnValue = false;
                    for (i=0; i<(args.length-1); i+=2) eval(args[i]+".location='"+args[i+1]+"'");
                }
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
                    } if (errors) alert('The Following Fields are Compulsory:\n'+errors);
                    document.MM_returnValue = (errors == '');
                }
               
        </script>
        
         <script type="text/javascript">
            function showEmp2(emp_value){ 
                if(document.getElementById("prevball").value!="-1"){
                    xmlHttp=GetXmlHttpObject()
                    if (xmlHttp==null){
                        alert ("Browser does not support HTTP Request")
                        return
                    }
                    var url="getvalue.jsp"
                    url=url+"?acctfrom="+emp_value
                    xmlHttp.onreadystatechange=stateChanged 
                    xmlHttp.open("GET",url,true)
                    xmlHttp.send(null)
                }
                else{
                    alert("Please Select Employee Id");
                }
            }
            function stateChanged(){ 
                document.getElementById("prevball").value ="";

                if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete") { 
                    var showdata = xmlHttp.responseText; 
                    var strar = showdata.split(":");
                    if(strar.length==1){
                        document.getElementById("prevball").focus();
                        alert("Please Select Employee Id");
  
                        document.getElementById("prevball").value =" ";
                    }
                    else if(strar.length>1) {
                        var strname = strar[1];
                        document.getElementById("prevball").value= strar[1];

                    }
                } 
            }

            function GetXmlHttpObject(){
                var xmlHttp=null;
                try{
                    xmlHttp=new XMLHttpRequest();
                }
                catch (e) {
                    try {
                        xmlHttp=new ActiveXObject("Msxml2.XMLHTTP");
                    }
                    catch (e)  {
                        xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
                    }
                }
                return xmlHttp;
            }
        </script>
    </head>
    <body>

        <table align="center" frame="border" bgcolor="#333399" width="700" height="30" style="background-image:  url(images/acct1.gif);">

            <tr align="center">
                <td align="left"><img src="images/support_smaller.gif" alt="image" /></td>
                <td align="center"><font size="4" color="white"><b>FUND TRANSFER </b></font>  </td>
                <td align="right"><img src="images/training_smaller.gif" alt="image" /></td>
            </tr>


        </table>
        <form action="insert.jsp" method="post">
            <table align="center" frame="border" bgcolor="#eeeeee" width="700" height="220" style="background-image:  url(images/back.gif);">

                <tr>
                    
                    <td ><font color="blue" size="4">Branch: </font> </td>

                    <td> <select  name="branch"   width="30" >
                             <%
                            HashMap lm = new HashMap();
                             SQLconnector SQLcon = new SQLconnector();

                                    Connection con = SQLcon.getCon();

                            try {

                              
                                Statement st = con.createStatement();

                                String sql = "select * from branch where branch_name = '"+session.getAttribute("mybranch")+"'";


                                ResultSet rss = st.executeQuery(sql);



                                while (rss.next()) {


                                    lm.put(rss.getString("branch_name"), rss.getString("branch_name"));
                                    session.setAttribute("acctmap", lm);

                                }



                        %>

                    <%

                        Set s = lm.keySet();

                        Iterator it = s.iterator();

                    %>
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

                        
                        <%
                                //con.close();
                                //response.sendRedirect("regexpenses.jsp");
                            } catch (Exception e) {
                            }
                        %>
                    </td>
                   
                </tr>
                <tr>
                    
                     <td ><font color="blue" size="4">Date: </font> </td>
                   <td><input type="text" size="30" name="date" value="<%=session.getAttribute("mynewdate") %>"</td>
                    <td ><font color="blue" size="4">Account From: </font> </td>
                     <%
                            HashMap l = new HashMap();

                            try {

                                Statement st = con.createStatement();

                                String sql = "select * from account where accounttype = 'cash'";


                                ResultSet rss = st.executeQuery(sql);



                                while (rss.next()) {


                                    l.put(rss.getString("accountname"), rss.getString("accountname"));
                                    session.setAttribute("acctmap", l);

                                }

                        %>

                    <%

                        Set s = l.keySet();

                        Iterator it = s.iterator();

                    %>


                    <td> <select  name="acctfrom"   width="30" onchange="showEmp2(this.value);">
                            <option value="-1">Select</option>
                            <%

                                while (it.hasNext()) {
                                    String v = (String) it.next();


                            %>
                            <option value="<%=v%>"  

                                    <%
                                        String v4 = null;
                                        if (request.getParameter("acctfrom") != null) {
                                            v4 = request.getParameter("acctfrom");

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
                        <%
                                //con.close();
                                //response.sendRedirect("regexpenses.jsp");
                            } catch (Exception e) {
                            }
                        %>
                    </td>
                </tr>

                <tr>


                    <td ><font color="blue" size="4">Previous Balance(=N=): </font> </td>
                    <td> 
                        <input type="text" name="prevbal" id="prevball"  size="30" autocomplete="off">
                    </td>
                    <td ><font color="blue" size="4">Amount to transfer: </font> </td>
                    <td ><input type="text" name="amount" size="30" autocomplete="off"> </td>
                </tr>

                <tr>


                    <td ><font color="blue" size="4">Account To: </font> </td>
                     <%
                            HashMap ll = new HashMap();

                            try {

                                Statement st = con.createStatement();

                                String sql = "select * from account where accounttype = 'cash'";


                                ResultSet rss = st.executeQuery(sql);



                                while (rss.next()) {


                                    ll.put(rss.getString("accountname"), rss.getString("accountname"));
                                    session.setAttribute("acctmap", ll);

                                }

                        %>

                    <%

                        Set s = ll.keySet();

                        Iterator it = s.iterator();

                    %>


                    <td> <select  name="acctto"   width="30" >
                            <option value="-1">Select</option>
                            <%

                                while (it.hasNext()) {
                                    String v = (String) it.next();


                            %>
                            <option value="<%=v%>"  

                                    <%
                                        String v4 = null;
                                        if (request.getParameter("acctto") != null) {
                                            v4 = request.getParameter("acctto");

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
                        <%
                             
                                //response.sendRedirect("regexpenses.jsp");
                            } catch (Exception e) {
                            }
                            con.close(); 
                        %>
                    </td>
                    <td ><font color="blue" size="4">Transfer By: </font> </td>
                    <td ><input type="text" name="transferby" readonly="readonly" value="<%=session.getAttribute("username") %>" size="30"> </td>
                </tr>
            </table>

            <table align="center" frame="border" bgcolor="#663399" width="700" height="45">

                <tr align ="left">
                    <td align ="left"><input type="submit" value="Post" size="20" name="fundtransfer"  style="background-color:red;font-weight:bold;color:#ffffff;" /></td>
                    <td align ="left"><input type="Reset" value="Clear All Records" size="20"  style="background-color:red;font-weight:bold;color:#ffffff;" /> </td>


                    <td align ="left"><a href="displaytfund.jsp"><input type="button" value="View Transfer History" size="20"   style="background-color:red;font-weight:bold;color:#ffffff;" /></a></td>

                    <td align ="left"><input type="button" name="delitem" value="Void Fund Transfer" size="20"   style="background-color:red;font-weight:bold;color:#ffffff;" /></td>


                </tr>
            </table>


        </form>


                </body>
</html

