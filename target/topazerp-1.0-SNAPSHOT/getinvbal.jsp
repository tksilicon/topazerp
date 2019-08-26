<%-- 
    Document   : newcustomer
    Created on : Dec 4, 2012, 1:56:19 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page  import="Classespack.*" %>
<%@page   import="java.sql.*"   %>
<%@page   import="newpackage.*"   %>
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

 <%
            if(request.getParameter("getbal")  != null){
                String value = request.getParameter("invoiceid");
                String kw = String.valueOf(value);
                             try {
                                 String bal = "";

                        SQLconnector SQLcon = new SQLconnector();

                        Connection con = SQLcon.getCon();
                        Statement st = con.createStatement();

                        String sql = "select balance from ourinvoice where invoiceid =  '"+kw+"'";


                        ResultSet rss = st.executeQuery(sql);



                        while (rss.next()) {

                        bal = rss.getString("balance");



                %>

        <form  action="getinvbal.jsp" method="get"  >
            <table>

           

                    <tr>
                                <td >

                                    <font color="blue" size="4">Invoice id: </font> </td>
                                <td> <input type="text" name="invoiceid"   width="30" id="invoiceid" >

                                </td>

                                <td ><font color="blue" size="4">Previous Bal. </font> </td>
                                
                  <%
                }
                        con.close();
                }
                              
                             catch(Exception e){

                                 }
                                    }
                                    else{
                                    }

                %>

                                <td>
                        <input type="submit" name="getbal" value="GetBal" size="20"   style="background-color:red; color:#ffffff;" />


                    </td>

               

                    


                </tr>

              


            </table>
        </form>

   
    </body>
</html>
