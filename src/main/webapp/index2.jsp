<%

    

    if (request.getParameter("welcomepage") != null) {
        response.sendRedirect("logout.jsp");
    }



    SalesConnection SQL = new SalesConnection();

    Connection con = SQL.getCon();
    String company = "";
    try {

        Statement st = con.createStatement();

        String sql = "select * from branch limit 1";
        ResultSet rs = st.executeQuery(sql);

        if (rs.next()) {

            company = rs.getString("companyname");
        }
    } catch (Exception e) {
    }

%>

<%-- 
    Document   : index
    Created on : Nov 6, 2012, 6:09:35 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.Date" %>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.topazerp.sales.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*" %>
<%@page import="java.lang.NullPointerException" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="Description" content="<%= company.toUpperCase()%> Enterprise Resource Planning Solution">

               
        <link rel="icon"  type="image/png" href="images/favicon.png" />

        <title><%= company.toUpperCase()%> Enterprise Resource Planning Solution</title>
        
         <script>

            history.forward('1');

        </script>


        <SCRIPT LANGUAGE="JavaScript">
            function isEmpty(str) {
                if (str == null || str == "")
                    return true;
                return false;
            }

            function validate(username, password) {
                if (isEmpty(username)) {
                    alert('You must enter a User Name');
                    return false;
                }
                if (isEmpty(password)) {
                    alert('You must enter a Password');
                    return false;
                }
                return true;
            }
        </SCRIPT>
    </head>
    <body >



        <jsp:include flush="true" page="webheader.jsp" ></jsp:include>
            <table align="center" bgcolor="white" width="1205" height="1" frame="vsides">
                <tr align="center" bgcolor="red" width="1205" height="1">
                    <td>
                    </td>
                </tr>
            </table>

            <table align="center" bgcolor="white" width="1205" height="30" frame="vsides" >
                <tbody>
                    <tr align="center" bgcolor="#ccffoo " width="200" height="25" >

                        <td align="left" width="200"></td>

                        <td align="center"><font face="tahoma" size="4" color="navy"><b> <%= company.toUpperCase()%>  </b> </font>


                    </td>
                    <td align="right" width="200">

                        <%
                            // Set refresh, autoload time as 90 seconds

                            // Get current time
                            Calendar calendar = new GregorianCalendar();
                            String am_pm;
                            int hour = calendar.get(Calendar.HOUR);
                            int minute = calendar.get(Calendar.MINUTE);
                            int second = calendar.get(Calendar.SECOND);
                            if (calendar.get(Calendar.AM_PM) == 0) {
                                am_pm = "AM";
                            } else {
                                am_pm = "PM";
                            }
                            String CT = hour + ":" + minute + ":" + second + " " + am_pm;
                            out.println("<html><font color='blue' size='2'>" + "Date: " + String.format("%tF\n", calendar) + " .....   " + "\n" + "</font>" + "</html>");
                            out.println("<html><font color='blue' size='2'>" + CT + "\n" + "</font>" + "</html>");
                        %>
                    </td>

                </tr>
            </tbody>
        </table>
        <table align="center" width="1205" height="1" frame="vsides">
            <tr align="center" bgcolor="red" width="1205" height="1">
                <td>
                </td>
            </tr>
        </table>

        <table width="1205"  align ="center" frame="vsides">
            <tbody >

            <td width="350"  valign="top">
                <table cellspacing="0" cellpadding="0">


                </table>
            </td>

            <td width="370" style=" border-bottom:  fuchsia; border:  green;" >
                <fieldset style="border-color:  #eeeeee;">
                    <form  action="Login.jsp" method="post"
                           OnSubmit="return validate(this.username.value,
                               this.password.value)" onsubmit="<%
                               session.removeAttribute("custname");
                               session.removeAttribute("phoneno");
                           %>">
                        <table  height ="40"  align ="center" >

                            <tr align="center">
                                <td><font color="RED" face="TAHOMA"  size="3"><U><b> USER  </b></U></font><font color="BLACK" face="TAHOMA"  size="3"><U><b>LOGIN</b></U></font></td>
                            <td><img src="images/SECURITYKEY.gif"> </td>
                            </tr>
                            <tr center>
                                <td colspan="2" align="center"><span style="color:red;font-size: 12px;text-align: center">
                                        <% if (request.getAttribute("strresponse") != null) {
                                                out.println(request.getAttribute("strresponse"));
                                            }%>
                                    </span> </td>
                            </tr>
                        </table>
                        <table  height ="10"  align = "center" >
                            <tr align="center">
                                <td align="center"> 


                                    <select  name="branch" align="center"  style=" background-color: purple;   color:  gold;  font-family: tahoma;" >

                                        <option value="">Pls, Select a Branch</option>

                                        <%

                                            try {

                                                Statement st = con.createStatement();

                                                String sql = "select * from branch";
                                                ResultSet rs = st.executeQuery(sql);

                                                while (rs.next()) {

                                        %>

                                        <option value="<%= rs.getString("branch_name")%>"><%= rs.getString("branch_name")%></option>

                                        <%
                                                }    //response.sendRedirect("regexpenses.jsp");
                                                con.close();
                                            } catch (Exception e) {
                                                out.print(e);
                                            }
                                        %>
                                    </select>
                                </td>
                            </tr>
                        </table>

                        <table  align ="center"  >
                            <td>
                            <tr align="center" >
                                <td><font color="#333333" size="3" face="tahoma"> Username: </font></td>
                            </tr>
                            <tr align="center" >
                                <td> <input type="text" name="username" autocomplete="off" value="" size="45" style=" height: 20px;"  /></td>
                            </tr>
                            <tr align="center" >
                                <td><font color="#333333" size="3" face="tahoma"> Password: </font></td>
                            </tr>
                            <tr align="center" >
                                <td> <input type="password" name="password"   size="45"  style=" height: 20px;"/></td>
                            </tr>
                            <tr align="center" >
                                <td height="30" >  <input type = "submit" value = "Login" name="login"   onclick="
                                                          <% session.removeAttribute("custname");
                                                              session.removeAttribute("phoneno");%>"
                                                          style="background-color:#ff0000;font-weight:bold;color:#ffffff;" />

                                    <input type = "reset" value = "Clear"  style="background-color:#ff0000;font-weight:bold;color:#ffffff;" />
                                </td>
                            </tr>
                            <tr>
                                <td>

                                </td>
                            </tr>
                            </br>
                            <tr align="center" >
                                <td><a href="#" target="_BLANK"><font color="">Forgot Your Password? </font> </a> </td>
                            </tr>
                            <tr align="center" >
                                <td><a href="#"><font color=""> Change Password/Login as Admin?  </font> </a> </td>
                            </tr>
                            <tr align="center" >
                                <td><a href="#" target="_BLANK"><font color="" style=" "> Register new user?  </font> </a> </td>
                            </tr>

                        </table>
                    </form>
                </fieldset>
            </td>

            <td align="right">
                <img src="images/acctani2.gif" alt="">
            </td>
        </tbody>
    </table>
    <table width="1205" height ="120"  align ="center" frame ="border" style=" background-image: url('images/indeximg.jpg');">
        <tr align="center">

        </tr>
    </table>
    <jsp:include flush="true" page="footer_1_1.jsp" ></jsp:include> 
</body>
</html>