<%-- 
    Document   : salesdispatchcic
    Created on : Dec 15, 2014, 10:17:36 AM
    Author     : THANKGOD
--%>


<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.LinkedHashSet"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.topazerp.sales.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sales Dispatch</title>
    </head>
    <body>

        <%

            //SalesOperations sales = (SalesOperations) session.getAttribute("sales");

            InvoiceId newinvoice = null;
            StaffStatus staff = (StaffStatus) session.getAttribute("LOGIN_USER");
            Sale sale = new Sale();

            sale.setStaff(staff);

            Customer cust = (Customer) session.getAttribute("cust");



            sale.setCust(cust);

            Date today = new Date();

            DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");


            if (session.getAttribute("oldproduct").equals("true")) {

                String dateString = (String) session.getAttribute("oldinvoicedate");
                sale.setDate(OdicUtil.convertJavaDateToSqlDate(formatter.parse(dateString)));

            } else if (session.getAttribute("oldproduct").equals("false")) {
                sale.setDate(OdicUtil.convertJavaDateToSqlDate(today));
            }
          




            String invoiceType = "";

            LinkedHashSet<OdicProduct> selectedProducts =
                    (LinkedHashSet<OdicProduct>) session.getAttribute("selectedProductsCIC");



            double totalDiscount = 0.0;
            double total = 0.0;

            Iterator itil = selectedProducts.iterator();

            OdicProduct prod = null;
            int totalQty = 0;

           

            while (itil.hasNext()) {
                prod = (OdicProduct) itil.next();

                total += prod.getSubtotal();
                totalDiscount += prod.getTotalProductDiscount();

                totalQty += 1;
            }

            sale.setTotalQty(totalQty);

            sale.setTotal(total);
            sale.setTotalAfterDiscount(total - totalDiscount);



            String next = "";
            if (request.getParameter("cashcreditinvoice") != null) {
                next = "cashcredit.jsp";
                invoiceType = "Cash/Credit";
                request.setAttribute("cashcreditinvoice", "cashcreditinvoice");

            } else if (request.getParameter("creditinvoice") != null) {
                invoiceType = "Credit";
                next = "generateinvoicecic.jsp";


                sale.setAmountPaid(0.0);
                sale.setBalance(sale.getTotalAfterDiscount());
                request.setAttribute("creditinvoice", "creditinvoice");
                sale.setPaymentType("credit");


            } else if (request.getParameter("cashinvoice") != null) {
                //sale.setAmountPaid(total);
                sale.setBalance(0.0);
                invoiceType = "Cash";
                next = "paymenttype.jsp";
                request.setAttribute("cashinvoice", "cashinvoice");


            }
            sale.setCust(cust);



            

            sale.setInvoiceType(invoiceType);
            sale.setSoldProducts(selectedProducts);
            sale.setTotalDiscount(totalDiscount);
            sale.setTotal(total);
            sale.setCicOthers("cic");


            if (staff.getBranch().equals("HEADOFFICE_SALES")) {
                newinvoice = sale.getInvoice("HQS");
            } else if (staff.getBranch().equals("PLAZA")) {
                newinvoice = sale.getInvoice("PLZ");
            } else if (staff.getBranch().equals("CA19")) {
                newinvoice = sale.getInvoice("CA1");
            } else if (staff.getBranch().equals("B/25 No 26")) {
                newinvoice = sale.getInvoice("B25");
            }

            sale.setInvoice(newinvoice);

            session.setAttribute("sale", sale);




            request.getRequestDispatcher(next).forward(request, response);


            

        %>

    </body>
</html>