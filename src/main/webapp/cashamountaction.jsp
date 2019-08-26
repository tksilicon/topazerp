<%-- 
    Document   : cashamountaction
    Created on : Dec 20, 2014, 10:11:13 AM
    Author     : THANKGOD
--%>


<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
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


            DateFormat formatter;

            formatter = new SimpleDateFormat("yyyy-mm-dd");


            Sale sale = null;
            if (session.getAttribute("sale") != null) {

                SalesOperations salesOpx = new SalesOperations();
                sale = (Sale) session.getAttribute("sale");

                CustomerCredit limit = salesOpx.getCreditLimit(sale.getCust().getRegno());
                String next = "";
                int custLimit = 0;
                if (limit == null) {
                    next = "invoices.jsp?limiterror=new";
                } else {
                    custLimit = limit.getCreditLimit();


                    if (sale.getPaymentType().equals("cashbankdeposit") || sale.getPaymentType().equals("creditcashbankdeposit")) {


                        String amountpaidinput = request.getParameter("amountpaidinput");
                        String depositbank = request.getParameter("depositbank");
                        String paymentdate = request.getParameter("paymentdate");
                        String tellerno = request.getParameter("tellerno");

                        sale.setCashAmount(Double.parseDouble(amountpaidinput));
                        sale.setPaymentBank(depositbank);
                        sale.setPaymentDate(OdicUtil.convertJavaDateToSqlDate(formatter.parse(paymentdate)));
                        sale.setTellerNo(tellerno);

                        sale.setAmountPaid(sale.getCashAmount());
                        sale.setBalance(sale.getTotalAfterDiscount() - sale.getCashAmount());
                        sale.setCashInbank(sale.getTotalAfterDiscount() - sale.getCashAmount());

                        sale.setBalanceForShadow(sale.getTotalAfterShadowDiscount() - sale.getCashAmount());

                        if (sale.getBalance() > custLimit) {
                            next = "invoices.jsp?limiterror=error";
                        } else {
                            next = "generateinvoice.jsp";
                        }





                    } else if (sale.getPaymentType().equals("cashtransfer") || sale.getPaymentType().equals("creditcashbankdeposit")) {

                        String amountpaidinput = request.getParameter("amountpaidinput");
                        String depositbank = request.getParameter("depositbank");
                        String paymentdate = request.getParameter("paymentdate");


                        sale.setCashAmount(Double.parseDouble(amountpaidinput));
                        sale.setPaymentBank(depositbank);
                        sale.setPaymentDate(OdicUtil.convertJavaDateToSqlDate(formatter.parse(paymentdate)));


                        sale.setAmountPaid(sale.getCashAmount());
                        sale.setBalance(sale.getTotalAfterDiscount() - sale.getCashAmount());
                        sale.setCashInbank(sale.getTotalAfterDiscount() - sale.getCashAmount());

                        sale.setBalanceForShadow(sale.getTotalAfterShadowDiscount() - sale.getCashAmount());

                        if (sale.getBalance() > custLimit) {
                            next = "invoices.jsp?limiterror=error";
                        } else {
                            next = "generateinvoice.jsp";
                        }


                    } else if (sale.getPaymentType().equals("cashcheque") || sale.getPaymentType().equals("creditcashtransfer")) {



                        String amountpaidinput = request.getParameter("amountpaidinput");
                        String depositbank = request.getParameter("depositbank");
                        String paymentdate = request.getParameter("paymentdate");
                        String chequeno = request.getParameter("chequeno");

                        sale.setCashAmount(Double.parseDouble(amountpaidinput));
                        sale.setBankOfCheque(depositbank);
                        sale.setDateonCheque(OdicUtil.convertJavaDateToSqlDate(formatter.parse(paymentdate)));
                        sale.setChequeNo(chequeno);

                        sale.setAmountPaid(sale.getCashAmount());
                        sale.setBalance(sale.getTotalAfterDiscount() - sale.getCashAmount());
                        sale.setCashInbank(sale.getTotalAfterDiscount() - sale.getCashAmount());

                        sale.setBalanceForShadow(sale.getTotalAfterShadowDiscount() - sale.getCashAmount());

                        if (sale.getBalance() > custLimit) {
                            next = "invoices.jsp?limiterror=error";
                        } else {
                            next = "generateinvoice.jsp";
                        }




                    } else if (sale.getPaymentType().equals("bankdeposit") || sale.getPaymentType().equals("creditbankdeposit")) {


                        String depositbank = request.getParameter("depositbank");
                        String paymentdate = request.getParameter("paymentdate");
                        String tellerno = request.getParameter("tellerno");


                        sale.setPaymentBank(depositbank);
                        sale.setPaymentDate(OdicUtil.convertJavaDateToSqlDate(formatter.parse(paymentdate)));
                        sale.setTellerNo(tellerno);

                        sale.setAmountPaid(0.0);
                        sale.setBalance(sale.getTotalAfterDiscount());
                        sale.setCashInbank(sale.getTotalAfterDiscount());
                        sale.setCashAmount(0.0);

                        sale.setBalanceForShadow(sale.getTotalAfterShadowDiscount() - sale.getCashAmount());

                        if (sale.getBalance() > custLimit) {
                            next = "invoices.jsp?limiterror=error";
                        } else {
                            next = "generateinvoice.jsp";
                        }



                    } else if (sale.getPaymentType().equals("transfer") || sale.getPaymentType().equals("credittransfer")) {


                        String depositbank = request.getParameter("depositbank");
                        String paymentdate = request.getParameter("paymentdate");



                        sale.setPaymentBank(depositbank);
                        sale.setPaymentDate(OdicUtil.convertJavaDateToSqlDate(formatter.parse(paymentdate)));

                        sale.setAmountPaid(0.0);
                        sale.setBalance(sale.getTotalAfterDiscount());
                        sale.setCashInbank(sale.getTotalAfterDiscount());


                        sale.setCashAmount(0.0);

                        sale.setBalanceForShadow(sale.getTotalAfterShadowDiscount() - sale.getCashAmount());


                        if (sale.getBalance() > custLimit) {
                            next = "invoices.jsp?limiterror=error";
                        } else {
                            next = "generateinvoice.jsp";
                        }


                    } else if (sale.getPaymentType().equals("cheque") || sale.getPaymentType().equals("creditcheque")) {


                        String depositbank = request.getParameter("depositbank");
                        String paymentdate = request.getParameter("paymentdate");
                        String chequeno = request.getParameter("chequeno");


                        sale.setBankOfCheque(depositbank);
                        sale.setDateonCheque(OdicUtil.convertJavaDateToSqlDate(formatter.parse(paymentdate)));
                        sale.setChequeNo(chequeno);


                        sale.setAmountPaid(0.0);
                        sale.setBalance(sale.getTotalAfterDiscount());
                        sale.setCashInbank(sale.getTotalAfterDiscount());

                        sale.setCashAmount(0.0);

                        sale.setBalanceForShadow(sale.getTotalAfterShadowDiscount() - sale.getCashAmount());

                        if (sale.getBalance() > custLimit) {
                            next = "invoices.jsp?limiterror=error";
                        } else {
                            next = "generateinvoice.jsp";
                        }

                    }


                }


                response.sendRedirect(next);

            } else {
                response.sendRedirect("invoices.jsp");
            }




        %>
    </body>
</html>
