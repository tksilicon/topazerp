<%-- 
    Document   : newcustomer
    Created on : Dec 4, 2012, 1:56:19 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="Classespack.*" %>
<%@page  import="java.sql.*"   %>
<%@page  import="java.sql.Statement"   %>
<%@page  import="newpackage.*" %>
<%@page  import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon"  type="image/gif" href="logo.gif">
        <title>New Staff</title>

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
            SQLconnector SQL = new SQLconnector();

            Connection con = SQL.getCon();
            String initial = "";
            try {

                Statement st = con.createStatement();

                String sql = "select * from branch limit 1";
                ResultSet rs = st.executeQuery(sql);

                if (rs.next()) {

                    initial = rs.getString("initial");
                }
            } catch (Exception e) {
            }

        %>
        <table align="center" frame="border" bgcolor="#333399" width="700" height="30" style="background-image:  url(images/acct1.gif);"

               <tr align="center">
                <td align="left"><img src="images/support_smaller.gif" alt="image" /></td>
                <td align="center"><font size="4" color="white"><b>STAFF REGISTRATION FORM</b></font>  </td>
                <td align="right"><img src="images/training_smaller.gif" alt="image" /></td>
            </tr>


        </table>
        <form action="insert.jsp" method="post" onsubmit="MM_validateForm('staffno', '', 'R', 'surname', '', 'R', 'fname', '', 'R', 'phone', '', 'RisNum', 'address', '', 'R', 'dob', '', 'R', 'username', '', 'R');
                return document.MM_returnValue">

            <table align="center" frame="border" bgcolor="#eeeeee" width="700" height="360" style="background-image:  url(images/back.gif);">
                <tr>


                    <td ><font color="#333399" size="3">Branch: </font> </td>
                        <%
                            HashMap l = new HashMap();

                            try {

                                Statement st = con.createStatement();

                                String sql = "select * from branch";

                                ResultSet rss = st.executeQuery(sql);

                                while (rss.next()) {

                                    l.put(rss.getString("branch_name"), rss.getString("branch_name"));
                                    session.setAttribute("acctmap", l);

                                }

                        %>

                    <%

                        Set s = l.keySet();

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
                        <%

                                //response.sendRedirect("regexpenses.jsp");
                            } catch (Exception e) {
                            }
                        %>
                    </td>
                </tr>

                <tr>
                    <td ><font color="#333399" size="3">Reg. Date: </font> </td>
                    <td><input type="text" size="30" name="date" value="<%=session.getAttribute("mynewdate")%>" readonly="readonly"></td>

                    <td ><font color="#333399" size="3">Staff's No: </font> </td>
                        <%

                            try {

                                Statement st = con.createStatement();
                                String sql = "select count(*)+ 2 from admin";
                                ResultSet rss = st.executeQuery(sql);

                                if (rss.next()) {

                        %>
                    <td ><input type="text" value="<%=initial.toUpperCase() + rss.getInt(1)%>" name="staffno" size="30"> </td>

                    <%
                            }
                        } catch (Exception e) {
                        }
                        con.close();
                    %>
                </tr>

                <tr>
                    <td ><font color="#333399" size="3">SurName: </font> </td>
                    <td ><input type="text" name="surname"  size="30"> </td>

                    <td ><font color="#333399" size="3">First Name: </font> </td>
                    <td ><input type="text" name="fname" size="30"> </td>
                </tr>

                <tr>
                    <td ><font color="#333399" size="3">Other Names: </font> </td>
                    <td ><input type="text" name="oname"  size="30"> </td>

                    <td ><font color="#333399" size="3">Phone Number: </font> </td>
                    <td ><input type="text" name="phone" size="30"> </td>
                </tr>

                <tr>
                    <td ><font color="#333399" size="3">Address: </font> </td>
                    <td ><input type="text" name="address"  size="30"> </td>

                    <td><font color="#333399" size="3"> State </font> </td>
                    <td ><select name="state"   width="30" >
                            <OPTION value='' >Select</OPTION>  
                            <OPTION value=Abia>Abia</OPTION> 
                            <OPTION value=Abuja>Abuja</OPTION>  
                            <OPTION value=Adamawa>Adamawa</OPTION>  
                            <OPTION value='Akwa Ibom'>Akwa Ibom</OPTION> 
                            <OPTION value=Anambra>Anambra</OPTION>  
                            <OPTION value=Bauchi>Bauchi</OPTION>  
                            <OPTION value=Bayelsa>Bayelsa</OPTION>  
                            <OPTION value=Benue>Benue</OPTION>  
                            <OPTION value='Cross River'>Cross River</OPTION>  
                            <OPTION value=Delta>Delta</OPTION> 
                            <OPTION value=Ebonyi>Ebonyi</OPTION>  
                            <OPTION value=Edo>Edo</OPTION> 
                            <OPTION value=Ekiti>Ekiti</OPTION>  
                            <OPTION value=Enugu>Enugu</OPTION> 
                            <OPTION value=Gombe>Gombe</OPTION>  
                            <OPTION value=Imo>Imo</OPTION> 
                            <OPTION value=Jigawa>Jigawa</OPTION>              
                            <OPTION value=Kaduna>Kaduna</OPTION>  
                            <OPTION value=Kano>Kano</OPTION>  
                            <OPTION value=Katsina>Katsina</OPTION> 
                            <OPTION value=Kebbi>Kebbi</OPTION>  
                            <OPTION value=Kogi>Kogi</OPTION>  
                            <OPTION value=Kwara>Kwara</OPTION> 
                            <OPTION value=Lagos>Lagos</OPTION>  
                            <OPTION value=Nassarawa>Nassarawa</OPTION> 
                            <OPTION value=Niger>Niger</OPTION>  
                            <OPTION value=Ogun>Ogun</OPTION>  
                            <OPTION value=Ondo>Ondo</OPTION> 
                            <OPTION value=Osun>Osun</OPTION>  
                            <OPTION value=Oyo>Oyo</OPTION> 
                            <OPTION value=Plateau>Plateau</OPTION>  
                            <OPTION value=Rivers>Rivers</OPTION>  
                            <OPTION value=Sokoto>Sokoto</OPTION>  
                            <OPTION value=Taraba>Taraba</OPTION>  
                            <OPTION value=Yobe>Yobe</OPTION>  
                            <OPTION value=Zamfara>Zamfara</OPTION>

                        </select>

                    </td>
                </tr>
                <tr>
                    <td ><font color="#333399" size="3">Country: </font> </td>
                    <td ><input type="text" name="country" size="30"> </td>

                    <td><font color="#333399" size="3"> DOB (yyyy-mm-dd) </font> </td>
                    <td ><input type="text" name="dob" size="30"> </td>



                </tr>
                <tr>

                    <td ><font color="#333399" size="3">Employee Type </font> </td>
                    <td> <select name="emptype"   width="30" >
                            <option >   Full Time   </option>
                            <option>   Freelance     </option>
                            <option>   Casual Worker   </option>
                            <option>   Part Time     </option>


                        </select>
                    </td>

                    <td ><font color="#333399" size="3">UserName:</font> </td>
                    <td ><input type="text" name="username"  size="30"> </td>
                </tr>
                <tr>
                    <td ><font color="#333399" size="3">Password:</font> </td>
                    <td ><input type="password" name="password" size="30"> </td>

                    <td ><font color="#333399" size="3">Department:</font> </td>
                    <td> <select name="dept"   width="30" >
                            <option>   Select  </option>
                            <option>   Admin   </option>
                            <option>   Sales   </option>         
                        </select>
                        Level:
                        <select name="level">
                            <option> Select </option>
                            <option>  1  </option>
                            <option>  2  </option>
                            <option>  3  </option>
                            <option>  4  </option>
                            <option>  5  </option>
                        </select>
                    </td>
                </tr>
            </table>

            <table align="center" frame="border" bgcolor="#663399" width="700" height="45">

                <tr align ="left">
                    <td align ="left"><input type="submit" value="Register" name="staff" size="20"  style="background-color:red;font-weight:bold;color:#ffffff;" /></td>
                    <td align ="left"><input type="Reset" value="Clear All Records" size="20"  style="background-color:red;font-weight:bold;color:#ffffff;" /> </td>
                    <td align ="left"><a href="displaystaff.jsp"><input type="button" value="View Employees" size="20"   style="background-color:red;font-weight:bold;color:#ffffff;" /></a></td>
                    <td align ="left"><input type="button" value="Update Employees" size="20"   style="background-color:red;font-weight:bold;color:#ffffff;" /></td>
                    <td align ="left"><input type="button" value="Delete Employee" size="20"   style="background-color:red;font-weight:bold;color:#ffffff;" /></td>
                </tr>
            </table>

        </form>
    </body>
</html>
