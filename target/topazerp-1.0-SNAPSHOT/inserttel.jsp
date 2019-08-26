<%-- 
    Document   : newcustomer
    Created on : Dec 4, 2012, 1:56:19 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page  import="Classespack.*" %>
<%@page  import="newpackage.*" %>
<%@page  import="java.sql.*" %>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.util.*" %>

<%@page import="java.lang.NullPointerException" %>

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
    </head>
    <body>
        <%
        %>
        <table align="center" frame="border" bgcolor="#333399" width="590" height="45" style="background-image:  url(images/acct1.gif);" >

            <tr align="center">
                <td align="left"><img src="images/support_smaller.gif" alt="image" /></td>
                <td align="center"><font size="4" color="white"><b>EDIT PHONE NUMBER AND ADDRESS </b></font>  </td>
                <td align="right"><img src="images/training_smaller.gif" alt="image" /></td>
            </tr>

        </table>
       
            <table align="center" frame="border" bgcolor="#333399" width="590" height="45" style="background-image:  url(images/back.gif);">

                <%

                            try {

                                SQLconnector sqlcon = new SQLconnector();
                                Connection con = sqlcon.getCon();

                                Statement st = con.createStatement();
                                
                                String branch = (String) session.getAttribute("mybranch");

                                String sql = "select * from tel";

                                ResultSet set = st.executeQuery(sql); 

                %>
                <%
                                    while (set.next()) {
                %>
                <tr>
                    <td align ="center"  ><textarea name="tel" cols="50" readonly="readonly"   rows="5" ><%=set.getString("tel")%></textarea> </td>
                    <td bgcolor="white" width="10"><a href="regtel2.jsp?tel=<%=set.getString("id")%>"><input type="button" value="Edit"></a></td>
                </tr> 
                <%
                                }
                                    con.close();
                            } catch (SQLException e) {
                                out.print(e);
                            }


                %>


            </table>

            
    </body>
</html>
