<%-- 
    Document   : transactvoidaction
    Created on : Feb 6, 2015, 11:10:10 AM
    Author     : THANKGOD
--%>

<%@page import="com.topazerp.sales.*"%>
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
            response.setHeader("Refresh", 2 + "; URL = logout.jsp");

            StaffStatus staff = null;

            String username = (String) session.getAttribute("username");

            if (username != null) {

                staff = (StaffStatus) session.getAttribute("LOGIN_USER");



            } else {

                //response.sendRedirect("logout.jsp");
                request.getRequestDispatcher("logout.jsp").forward(request, response);

                return;

            }

            String paymentdate = request.getParameter("voiddate");
            SalesOperations salesOpx = new SalesOperations();

            if (request.getParameter("voidreceipts") != null) {
                salesOpx.deleteTransaction(request.getParameter("voidreceipts"), "receipts");
                response.sendRedirect("allreceipts.jsp?paymentdate=" + paymentdate);

            } else if (request.getParameter("voidcash") != null) {
                salesOpx.deleteTransaction(request.getParameter("voidcash"), "cash");
                response.sendRedirect("allcash.jsp?paymentdate=" + paymentdate);

            } else if (request.getParameter("voidbanktransaction") != null) {
                salesOpx.deleteTransaction(request.getParameter("voidbanktransaction"), "banktransaction");
                response.sendRedirect("banktransactionsmanagement.jsp?paymentdate=" + paymentdate);
            } else if (request.getParameter("voidfundexpenses") != null) {
                salesOpx.deleteTransaction(request.getParameter("voidfundexpenses"), "fundexpenses");
                response.sendRedirect("allfundexpenses.jsp?paymentdate=" + paymentdate);
            }
        %>

    </body>
</html>
