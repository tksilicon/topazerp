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
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.util.*" %>

<%@page import="java.lang.NullPointerException" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

      

       
    </head>
    <body>



        <form name="submitForm" action="getextra.jsp" method="get"  >
          

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

                    String sql = "select extra_charge_name, price  from ExtraCharge ";


                    ResultSet rss = st.executeQuery(sql);



                    while (rss.next()) {


                        l.put(rss.getString("extra_charge_name"), rss.getFloat("price"));
                        session.setAttribute("acctmap", l);

                    }

            %>

            
            <table align="center"  bgcolor="#eeeeee" width="900" height="60">

                <tr valign="top">
                    <td>
                        <font face="arial" size="2">   Extra Charge: </font>
                    </td>

                </tr>

                <tr>




                    <td ><font color="blue" size="4">Extra Name: </font> </td>
                        <%

                            Set s = l.keySet();

                            Iterator it = s.iterator();

                        %>


                    <td> <select  name="acctname"   width="30" >

                            <%

                                while (it.hasNext()) {
                                    String v = (String) it.next();


                            %>
                            <option value="<%=v%>"  

                                    <%
                                        String v4 = null;
                                        if (request.getParameter("acctname") != null) {
                                            v4 = request.getParameter("acctname");
                                            
                                            if( v4.equals(v)){%>
                                                
                                                selected
                                          <%  } else{  %>                               
                                         
                                          selected
                                          
                                     <%  }  
                                            }

                                    %>





                                    > <%= v%> </option>
                            <% }%>




                        </select>
                        <input type="button" name="getbal" value="GetPrice" size="20"   style="background-color:red; color:#ffffff;" />


                    </td>

               

                    <td ><font color="blue" size="4">Price: </font> </td>

                    <%
                        String v3 = null;
                        if (request.getParameter("acctname") != null) {
                            v3 = request.getParameter("acctname");
                        }
                        session.setAttribute("acctname", v3);
                        l = (HashMap) session.getAttribute("acctmap");
                    %>



                    <td > <input type="text" value="<%=l.get(v3)%>" name="balance"  size="20"> </td>



                    <td ><font color="blue"  size="4">Quantity: </font> </td>
                    <td> <select name="quantity" id=""   width="5" >
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
                    <td><font color="blue"  size="4">Total: </font> </td>
                    <td><input type="text" name="totalcost" size="20"></td>
                    <td align ="left"><input type="submit" value="Charge" size="5" name="extracahrge"  style="background-color:red;font-weight: normal;color:#ffffff;" /></td>




                </tr>



            </table>

                <%
              response.sendRedirect("transaction.jsp");
              con.close(); 
                    } catch (Exception e) {
                    }
                %>
           

        </form>
    </body>
</html>
