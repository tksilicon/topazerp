<%-- 
    Document   : supplyinvoiceaction
    Created on : Jan 17, 2015, 11:51:18 AM
    Author     : THANKGOD
--%>


<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>

<%@page import="java.util.Date"%>
<%@page import="com.topazerp.sales.*"%>
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

            SupplyInvoice supply = new SupplyInvoice();
            supply.setInvoiceno(request.getParameter("supplyinvoice"));
            supply.setBranch(request.getParameter("supplypoint"));
            supply.setSendingBranch(staff.getBranch());


            //DateFormat formater = new SimpleDateFormat("dd-MM-yy HH:mm:ss");
            //supply.setDate());


            java.util.Date dt = new java.util.Date();

            java.text.SimpleDateFormat sdf =
                    new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

            String currentTime = sdf.format(dt);

            java.sql.Date today = OdicUtil.convertJavaDateToSqlDate(sdf.parse(currentTime));            
            
            
            supply.setDate(today);
            SalesOperations salesOpx = new SalesOperations();

            salesOpx.insertSupply(supply);
            salesOpx.setPostedSupply(supply.getInvoiceno());
           
           
           
            response.sendRedirect("dayinvoices.jsp?dateforsupply=" +request.getParameter("dateforsupply"));


        %>
    </body>
</html>
