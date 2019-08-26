<%-- 
    Document   : newcustomer
    Created on : Dec 4, 2012, 1:56:19 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page  import="Classespack.*" %>
<%@page   import="java.sql.*"   %>
<%@page   import="java.sql.Statement"   %>
<%@page  import="newpackage.*" %>
<%@page  import="java.util.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon"  type="image/gif" href="logo.gif">
        <title>New Customer</title>

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
        <table align="center" frame="border" bgcolor="#333399" width="741" height="30" style="background-image:  url(images/acct1.gif);">


            <tr align="center">
                <td align="left"><img src="images/support_smaller.gif" alt="image" /></td>
                <td align="center"><font size="4" color="white"><b>CUSTOMERS REGISTRATION FORM </b></font>  </td>
                <td align="right"><img src="images/training_smaller.gif" alt="image" /></td>
            </tr>

        </table>
        <%
            String nrd = "";

            try {

                Statement st = con.createStatement();

                ResultSet rs = st.executeQuery("SELECT  date(now()) from admin ");


                while (rs.next()) {

                    nrd = rs.getString(1);

                }

                session.setAttribute("mynewdate", nrd);
                //out.println("<html><td valign='middle'><font color='blue' size='2'>" + "Date: " + nrd + "\n" + "</font></td></html>");

            } catch (Exception e) {
                out.println(e);
            }
        %>
        <form action="insert.jsp" method="post" onsubmit="MM_validateForm('custno', '', 'R', 'surname', '', 'R', 'fname', '', 'R', 'phone', '', 'RisNum', 'email', '', 'RisEmail');
                return document.MM_returnValue">
            <table align="center" frame="border" bgcolor="#eeeeee" width="741" height="350" style="background-image:  url(images/back.gif);">


                <tr>


                    <td ><font color="#333399" size="3">Branch: </font> </td>
                        <%

                            try {


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

                                //response.sendRedirect("regexpenses.jsp");
                            } catch (Exception e) {
                            }
                        %>
                    </td>

                </tr>
                <tr>
                    <td ><font color="#333399" size="3">Reg. Date:</font> </td>
                    <td ><input type="text" name="date"  value="<%=session.getAttribute("mynewdate")%>" size="30" readonly="readonly">
                    </td>

                    <td ><font color="#333399" size="3">Custormer's No: </font> </td>
                        <%

                            try {

                                Statement st = con.createStatement();
                                String sql = "select count(*) +2 from customers ";
                                ResultSet rss = st.executeQuery(sql);

                                if (rss.next()) {

                        %>

                    <td ><input type="text" value="<%= initial.toUpperCase() + rss.getInt(1)%>" name="custno" size="30"> </td>

                    <%
                            }
                        } catch (Exception e) {
                        }
                        con.close();
                    %>
                </tr>

                <tr>
                    <td ><font color="#333399" size="3">Customer's Name: </font> </td>
                    <td ><input type="text" name="surname"  size="30"> </td>

                    <td ><font color="#333399" size="3">First Name: </font> </td>
                    <td ><input type="text" name="fname" value="null"  size="30"> </td>
                </tr>

                <tr>
                    <td ><font color="#333399" size="3">Types of Cust. </font> </td>
                    <td> <select name="oname" >
                            <option >   Regular   </option>
                            <option>   Package    </option>
                            <option>   Staff    </option>
                            <option>   Complementary    </option>


                        </select>
                    </td>

                    <td ><font color="#333399" size="3">Address: </font> </td>
                    <td ><input type="text" name="address" size="30"> </td>
                </tr>

                <tr>
                    <td ><font color="#333399" size="3">State: </font> </td>

                    <td ><select name="state"  >
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

                    <td><font color="#333399" size="3"> Country </font> </td>
                    <td ><input type="text" name="country" size="30"> </td>
                </tr>
                <tr>
                    <td ><font color="#333399" size="3">Birth Day:(D/M) </font> </td>
                    <td ><select name="dob1"  >
                            <option >   Select   </option>
                            <option >   1   </option>
                            <option>   2     </option>
                            <option>   3     </option>
                            <option>   4     </option>
                            <option>   5     </option>
                            <option>   6     </option>
                            <option>   7     </option>
                            <option>   8     </option>
                            <option>   9     </option>
                            <option>   10     </option>
                            <option>   11     </option>
                            <option>   12     </option>

                            <option >   13   </option>
                            <option>   14     </option>
                            <option>   15    </option>
                            <option>   16    </option>
                            <option>   17    </option>
                            <option>   18    </option>
                            <option>   19    </option>
                            <option>   20   </option>
                            <option>   21    </option>
                            <option>   22     </option>
                            <option>   23     </option>
                            <option>   24     </option>
                            <option>   25     </option>
                            <option >  26   </option>
                            <option>   27     </option>
                            <option>   28    </option>
                            <option>   29     </option>
                            <option>   30     </option>
                            <option>   31    </option>

                        </select> 

                        <select name="dob2"  >
                            <option >   Select   </option>
                            <option >   1   </option>
                            <option>   2     </option>
                            <option>   3     </option>
                            <option>   4     </option>
                            <option>   5     </option>
                            <option>   6     </option>
                            <option>   7     </option>
                            <option>   8     </option>
                            <option>   9     </option>
                            <option>   10     </option>
                            <option>   11     </option>
                            <option>   12     </option>

                        </select>

                    </td>

                    <td ><font color="#333399" size="3">Gender </font> </td>
                    <td> <select name="gender" >
                            <option >   Select   </option>
                            <option >   Female   </option>
                            <option>   Male     </option>


                        </select>
                    </td>


                </tr>
                <tr>
                    <td ><font color="#333399" size="3">Phone Number:</font> </td>
                    <td ><input type="text" name="phone"  size="30"> </td>

                    <td ><font color="#333399" size="3">E-mail address:</font> </td>
                    <td ><input type="text" name="email" value="you@yourdomain.com" size="30"> </td>
                </tr>
            </table>

            <table align="center" frame="border" bgcolor="#663399" width="741" height="45">

                <tr align ="left">

                    <td align ="left"><input type="submit" value="Register" name="customer" size="20"  style="background-color:red;font-weight:bold;color:#ffffff;" /></td>
                    <td align ="left"><a href="regccnewcustpref.jsp"><input type="button" value="Cust.Pref." size="20"   style="background-color:red;font-weight:bold;color:#ffffff;" /></a></td>

                    <td align ="left"><input type="Reset" value="Clear Records" size="20"  style="background-color:red;font-weight:bold;color:#ffffff;" /> </td>

                    <td align ="left"><input type="button" value="Update Customers" size="20"   style="background-color:red;font-weight:bold;color:#ffffff;" /></td>


                </tr>


            </table>

        </form>
    </body>
</html>
