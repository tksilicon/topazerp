<%-- 
    Document   : checkavailable
    Created on : Jan 17, 2015, 4:03:44 PM
    Author     : THANKGOD
--%>

<%@page import="java.util.Iterator"%>
<%@page import="com.topazerp.sales.*"%>
<%@page import="java.util.ArrayList"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            StaffStatus staff = null;

            if ((String) session.getAttribute("username") != null) {

                staff = (StaffStatus) session.getAttribute("LOGIN_USER");
            } else {

                //response.sendRedirect("logout.jsp");
                request.getRequestDispatcher("logout.jsp").forward(request, response);

                return;

            }




            String viewinvoice = request.getParameter("viewinvoice");
            SalesOperations salesOpx = new SalesOperations();

            ArrayList<OdicProduct> arr = (ArrayList<OdicProduct>) salesOpx.getSaleInvoiceBody(viewinvoice);

            OdicStock stock = salesOpx.getStockBalance(viewinvoice, staff.getBranch());

            if (stock != null) {


                Iterator itil = arr.iterator();
                OdicProduct prod = null;

                while (itil.hasNext()) {
                    prod = (OdicProduct) itil.next();
                    if (prod.getItemId().equals(stock.getProductId())) {
                        break;
                    }
                }

                if (prod.getQuantity() <= stock.getClosingStock()) {

                    prod.setAvailableStatus("available");
                }

            }

            response.sendRedirect("viewinvoice.jsp?viewinvoice=" + viewinvoice);











        %>



    </body>
</html>
