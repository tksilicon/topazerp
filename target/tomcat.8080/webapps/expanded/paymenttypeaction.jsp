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
                    
                    sale.setPaymentType("cash");                    
                    sale.setAmountPaid(sale.getTotalAfterDiscount());
                    response.sendRedirect("generateinvoice.jsp");
                    
                } else if (paymentType.equals("cashbankdeposit")) {
                    
                    sale.setPaymentType("cashbankdeposit");
                    response.sendRedirect("bankamountdeposit.jsp");
                    
                } else if (paymentType.equals("cashtransfer")) {
                    
                      sale.setPaymentType("cashtransfer");
                      response.sendRedirect("bankamounttransfer.jsp");
                      
                } else if (paymentType.equals("cashcheque")) {
                    
                      sale.setPaymentType("cashcheque");
                      response.sendRedirect("bankchequeamount.jsp");
                      
                } else if (paymentType.equals("bankdeposit")) {
                    
                      sale.setPaymentType("bankdeposit");
                      response.sendRedirect("bankamountdeposit.jsp");
                      
                } else if (paymentType.equals("transfer")) {
                    
                      sale.setPaymentType("transfer");
                      response.sendRedirect("bankamounttransfer.jsp");
                      
                } else if (paymentType.equals("cheque")) {
                    
                    sale.setPaymentType("cheque"); 
                    response.sendRedirect("bankchequeamount.jsp");
                }
            }

        %>
    </body>
</html>
