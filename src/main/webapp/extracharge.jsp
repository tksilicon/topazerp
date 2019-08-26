<%
if(session.getAttribute("username") == null){
 response.sendRedirect("index.jsp");
 }
%>
<%-- 
    Document   : extracharge
    Created on : Dec 17, 2012, 11:25:41 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="Classespack.*" %>
<%@page   import="java.sql.*"   %>
<%@page   import="java.sql.Statement"   %>
<%@page  import="newpackage.*" %>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.util.*" %>

<%@page import="java.lang.NullPointerException" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
          <%
                HashMap l = new HashMap();

                Account a = null;
                AdminRes admin = new AdminRes();
                String name = "cash-at-hand";
                //String acct = admin.checkBalance("cash-at-hand");
                try {

                    SQLconnector SQLcon = new SQLconnector();

                    Connection con = SQLcon.getCon();
                    Statement st = con.createStatement();

                    String sql = "select extra_charge_name  from ExtraCharge ";


                    ResultSet rss = st.executeQuery(sql);



                    while (rss.next()) {


                        l.put(rss.getString("extra_charge_name"), rss.getFloat("balance"));
                        session.setAttribute("acctmap", l);

                    }

            %>

       <form action="insert.jsp" method="post">
          

            <table align="center"  border="frame" bgcolor="#eeeeee" width="910" height="60">

                <tr valign="top">
                    <td>
                        <font face="arial" size="2">   Extra Charge: </font>
                    </td>

                </tr>

                <tr valign="top">
                    <td>
                        <font face="arial" size="2">   Name: </font>
                    </td>

                    <%

                        Set s = l.keySet();

                        Iterator it = s.iterator();

                    %>


                    <td> <select  name="extraname" >

                            <%

                                while (it.hasNext()) {
                                    String v = (String) it.next();


                            %>
                            <option value="<%=v%>"  

                                    <%
                                        String v4 = null;
                                        if (request.getParameter("extraname") != null) {
                                            v4 = request.getParameter("extraname");

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
                    <td>
                        Price
                    </td>
                    <td><input type="text" name="cost" size="20"></td>
                    <td ><font color="blue"  size="2">Qty </font> </td>
                    <td> <select name="quantiry"  >
                            <option >   1   </option>
                            <option>   2     </option>
                            <option>   3    </option>
                            <option>   4    </option>
                            <option>   5  </option>
                            <option>   6     </option>
                            <option >  7   </option>
                            <option>   8     </option>
                            <option>   9    </option>
                            <option>   10    </option>
                            <option>   11  </option>
                            <option>   12    </option>
                            <option >  13   </option>
                            <option>   14     </option>
                            <option>   15    </option>
                            <option>   15    </option>
                            <option>   16  </option>
                            <option>   17     </option>
                            <option >  18   </option>
                            <option>   19    </option>
                            <option>   20    </option>
                            <option>   21    </option>
                            <option>   22  </option>
                            <option>   23    </option>
                            <option >  24   </option>
                            <option>   25     </option>
                            <option>   26    </option>
                            <option>   27    </option>
                            <option>   28  </option>
                            <option>   29     </option>
                            <option >  30   </option>
                            <option>   31     </option>
                            <option>   32    </option>
                            <option>   33    </option>
                            <option>   35  </option>
                            <option>   36     </option>


                        </select>
                    </td>
                    <td>Total</td>
                    <td><input type="text" name="totalcost" size="20"></td>
                    <td align ="left"><input type="submit" value="Charge" size="5" name="extracahrge"  style="background-color:red;font-weight: normal;color:#ffffff;" /></td>

                </tr>
            </table>
            <%
                    // response.sendRedirect("regpayment.jsp");
                 con.close(); 
                } catch (Exception e) {
                }
            %>
        </form>
    </body>
</html>
