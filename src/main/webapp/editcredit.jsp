<%-- 
    Document   : editcredit
    Created on : Jan 31, 2015, 3:31:58 AM
    Author     : THANKGOD
--%>

<%@page import="com.topazerp.sales.CustomerCredit"%>
<%@page import="com.topazerp.sales.SalesOperations"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
         String regno = request.getParameter("regno");
         String customerbalance = request.getParameter("customerbalance");
        
         
         double bal = Double.parseDouble(customerbalance);
         
         SalesOperations salesOpx = new SalesOperations();
         CustomerCredit cust =  salesOpx.getCreditBalance(regno);
         
         cust.setRegno(regno);
         cust.setCustomerbal2014(bal);       
         
         cust.setCustomerBalance(0.0);
         double mainBal = cust.getCustomerBalance()- cust.getCustomerbal2014();
         
         cust.setCustomerBalance(mainBal);
         
         salesOpx.updateCustomerBal(cust);
         
         response.sendRedirect("editbal.jsp");
         
         
         

        %>
    </body>
</html>
