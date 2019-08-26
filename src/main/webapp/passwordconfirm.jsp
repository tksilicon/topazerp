<%-- 
    Document   : passwordconfirm
    Created on : Jan 20, 2015, 2:54:34 AM
    Author     : THANKGOD
--%>


<%@page import="com.topazerp.sales.StaffStatus"%>
<%@page import="com.topazerp.sales.SalesOperations"%>
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

            String username2 = (String) session.getAttribute("username");

            if (username2 != null) {

                staff = (StaffStatus) session.getAttribute("LOGIN_USER");



            } else {

                //response.sendRedirect("logout.jsp");
                request.getRequestDispatcher("logout.jsp").forward(request, response);

                return;

            }
       
          String password = request.getParameter("pwd1");
          String username = request.getParameter("username");
        
          
          SalesOperations invenOpx = new SalesOperations();
          invenOpx.updatePassword(username, password);
          
          response.sendRedirect("logout.jsp");
       

        %>
    </body>
</html>
