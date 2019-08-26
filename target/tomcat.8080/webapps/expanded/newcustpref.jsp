<%-- 
    Document   : newcustomer
    Created on : Dec 4, 2012, 1:56:19 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Classespack.*" %>
<%@page import="java.sql.*"   %>
<%@page import="java.sql.Statement"   %>
<%@page import="newpackage.*" %>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*" %>
<%@page import="java.lang.NullPointerException" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="icon"  type="image/gif" href="logo.gif">
        <title>Cust. Pref.</title>

        <script type="text/JavaScript">
           
            function MM_jumpMenu(targ,selObj,restore){ //v3.0
                eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
                if (restore) selObj.selectedIndex=0;
            }
            function MM_popupMsg(msg) { //v1.0
                alert(msg);
                
        </script>
    </head>
    <body>

        <table align="center" frame="border" bgcolor="#333399" width="700" height="30" style="background-image:  url(images/acct1.gif);">

            <tr align="center">
                <td align="left"><img src="images/support_smaller.gif" alt="image" /></td>
                <td align="center"><font size="4" color="white"><b>CUSTOMER'S PREFERENCES REGISTRATION FORM </b></font>  </td>
                <td align="right"><img src="images/training_smaller.gif" alt="image" /></td>
            </tr>


        </table>
        <form action="insert.jsp" method="post">
              <%
                    HashMap l = new HashMap();

                    try {

                        SQLconnector SQLcon = new SQLconnector();

                        Connection con = SQLcon.getCon();
                        Statement st = con.createStatement();

                        String sql = "select regno from customers";


                        ResultSet rss = st.executeQuery(sql);



                        while (rss.next()) {


                            l.put(rss.getString("regno"), rss.getString("regno"));
                            session.setAttribute("acctmap", l);

                        }

                %>




            <table align="center" frame="border" bgcolor="#eeeeee" width="700" height="150">


                <tr>
                    
                    <td ><font color="#333399" size="3">Reg. Date:</font> </td>
                    <td ><input type="text" name="date"  value="<%=session.getAttribute("sqldate")%>" size="20">
                    </td>
                    <td ><font color="#333399" size="3">Customer Number: </font> </td>
                    

                    
                    <td ><input type="text" name="customerno"  size="10"> </td>

                           
                </tr>

                <tr>
                    <td ><font color="#333399" size="3">Preference: </font> </td>
                    <td ><input type="text" name="preference"  size="30"> </td>

                    <td ><font color="#333399" size="3">Priority: </font> </td>
                    <td> <select name="priority"   width="30" >
                            <option >  Very High   </option>
                            <option>   High     </option>
                            <option>   Medium    </option>
                            <option>   Low    </option>
                            <option>  Very Low   </option>

                        </select>
                    </td>
                </tr>

            </table>

            <table align="center" frame="border" bgcolor="#663399" width="700" height="45">

                <tr align ="left">
                    <td align ="left"><input type="submit" name="custpref" value="Register" size="20"  style="background-color:red;font-weight:bold;color:#ffffff;" /></td>
                    <td align ="left"><input type="Reset" value="Clear All Records" size="20"  style="background-color:red;font-weight:bold;color:#ffffff;" /> </td>
                   
                    <td align ="left"><input type="button" value="Update Preference" size="20"   style="background-color:red;font-weight:bold;color:#ffffff;" /></td>
                    <td align ="left"><input type="button" value="Delete Preference" size="20"   style="background-color:red;font-weight:bold;color:#ffffff;" /></td>
                </tr>
            </table>

                             <%
                        con.close();
                //response.sendRedirect("regexpenses.jsp");
                    } catch (Exception e) {
                    }
                %>
        </form>
    </body>
</html>
