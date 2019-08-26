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



        <form name="submitForm" action="regexpenses.jsp" method="get"  >
          

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

                        String sql = "select accountname, balance from account where accounttype='cash'";


                        ResultSet rss = st.executeQuery(sql);



                        while (rss.next()) {


                            l.put(rss.getString("AccountName"), rss.getFloat("balance"));
                            session.setAttribute("acctmap", l);

                        }

                %>








                    <td ><font color="blue" size="4">Cash Account </font> </td>
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
                       

                    </td>

               
                <%
              // response.sendRedirect("regexpenses.jsp");
                    con.close();
                    } catch (Exception e) {
                    }
                %>
           

        </form>
    </body>
</html>
