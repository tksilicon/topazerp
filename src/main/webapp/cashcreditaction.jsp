<%-- 
    Document   : cashcreditaction
    Created on : Dec 15, 2014, 12:10:39 PM
    Author     : THANKGOD
--%>

<%@page import="com.topazerp.sales.StaffStatus"%>
<%@page import="com.topazerp.sales.CustomerCredit"%>
<%@page import="com.topazerp.sales.SalesOperations"%>
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
        
        
         int timeout = session.getMaxInactiveInterval();
            response.setHeader("Refresh", timeout + "; URL = logout.jsp");

            StaffStatus staff = null;

            String username = (String) session.getAttribute("username");

            if (username != null) {

                staff = (StaffStatus) session.getAttribute("LOGIN_USER");



            } else {

                //response.sendRedirect("logout.jsp");
                request.getRequestDispatcher("logout.jsp").forward(request, response);

                return;

            }


            Sale sale = null;
            if (session.getAttribute("sale") != null) {
                String next = "";

                double amountPaid = Double.parseDouble(request.getParameter("amountpaidinput"));

                sale = (Sale) session.getAttribute("sale");


                SalesOperations salesOpx = new SalesOperations();
                CustomerCredit limit = salesOpx.getCreditLimit(sale.getCust().getRegno());
                int custLimit = 0;





                sale.setAmountPaid(amountPaid);

                sale.setBalance(sale.getTotalAfterDiscount() - sale.getAmountPaid());
                sale.setBalanceForShadow(sale.getTotalAfterShadowDiscount() - sale.getAmountPaid());



                if (limit == null) {
                    next = "invoices.jsp?limiterror=new";
                } else {
                    custLimit = limit.getCreditLimit();


                    if (sale.getBalance() > custLimit) {
                        next = "invoices.jsp?limiterror=error";
                    } else {
                        next = "generateinvoice.jsp";
                    }
                }

                response.sendRedirect(next);

            } else {
                response.sendRedirect("invoices.jsp");
            }



        %>
    </body>
</html>
