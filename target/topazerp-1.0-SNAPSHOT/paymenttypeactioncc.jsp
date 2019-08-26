<%-- 
    Document   : paymenttypeaction
    Created on : Dec 15, 2014, 10:54:03 AM
    Author     : THANKGOD
--%>

<%@page import="com.topazerp.sales.Sale"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%

            Sale sale = null;
            if (session.getAttribute("sale") != null) {

                sale = (Sale) session.getAttribute("sale");
                String paymentType = request.getParameter("paymenttype");

                
                if (paymentType.equals("cash")) {
                    
                    sale.setPaymentType("cashcredit");
                    response.sendRedirect("cashcredit.jsp");
                    
                } else if (paymentType.equals("cashbankdeposit")) {
                    
                    sale.setPaymentType("creditcashbankdeposit");
                    response.sendRedirect("bankamountdeposit.jsp");
                    
                } else if (paymentType.equals("cashtransfer")) {
                    
                      sale.setPaymentType("creditcashtransfer");
                      response.sendRedirect("bankamounttransfer.jsp");
                      
                } else if (paymentType.equals("cashcheque")) {
                    
                      sale.setPaymentType("creditcashcheque");
                      response.sendRedirect("bankchequeamount.jsp");
                      
                } else if (paymentType.equals("bankdeposit")) {
                    
                      sale.setPaymentType("creditbankdeposit");
                      response.sendRedirect("bankamountdeposit.jsp");
                      
                } else if (paymentType.equals("transfer")) {
                    
                      sale.setPaymentType("credittransfer");
                      response.sendRedirect("bankamounttransfer.jsp");
                      
                } else if (paymentType.equals("creditcheque")) {
                    
                    sale.setPaymentType("creditcheque"); 
                    response.sendRedirect("bankchequeamount.jsp");
                }
            }

        %>
    </body>
</html>
