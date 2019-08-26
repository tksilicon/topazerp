<%-- 
    Document   : reciptscashaction
    Created on : Jan 29, 2015, 11:30:05 AM
    Author     : THANKGOD
--%>

<%@page import="com.topazerp.sales.StaffStatus"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
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



            String paymentdate = request.getParameter("paymentdate");

            if (request.getParameter("oldreceiptsubmit") != null) {
                response.sendRedirect("allreceipts.jsp?paymentdate=" + paymentdate);

            } else if (request.getParameter("oldcashsubmit") != null) {

                response.sendRedirect("allcash.jsp?paymentdate=" + paymentdate);
            } else if (request.getParameter("oldexpensesubmit") != null) {
                response.sendRedirect("allfundexpenses.jsp?paymentdate=" + paymentdate);
            } else if (request.getParameter("oldbanksubmit") != null) {
                response.sendRedirect("banktransactionsmanagement.jsp?paymentdate=" + paymentdate);
            }
        %>
    </body>
</html>
