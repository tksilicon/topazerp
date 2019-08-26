<%-- 
    Document   : checklastreport
    Created on : Feb 22, 2015, 6:47:17 PM
    Author     : THANKGOD
--%>

<%@page import="java.sql.Connection"%>


<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>

<%@page import="java.util.Iterator"%>

<%@page import="com.topazerp.sales.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collections"%>
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
            response.setHeader("Refresh", timeout + "; URL = index.jsp");


            StaffStatus staff = null;



            String username = (String) session.getAttribute("username");

            if (username != null) {

                staff = (StaffStatus) session.getAttribute("LOGIN_USER");



            } else {

                //response.sendRedirect("logout.jsp");
                request.getRequestDispatcher("logout.jsp").forward(request, response);

                return;

            }

            ArrayList<ReportStatus> reports = new SalesOperations().selectRunReportFalse(staff.getBranch());
            Collections.sort(reports);

            Iterator itilMain = reports.iterator();

            ReportStatus status = null;
            Date workingDate = null;
            SalesOperations salesOpx = new SalesOperations();
            ArrayList<Sale> sales = null;
            ArrayList<Receipt> receipts = null;
            ArrayList<BankTransaction> bankTransactions = null;
            ArrayList<Expenses> exp = null;
            ArrayList<CashShop> cashShops = null;


            DailyBalance previousBal = null;
            DailyBalance bal = null;
            Calendar cal = OdicUtil.generateDate();

            Iterator itil = null;



            while (itilMain.hasNext()) {

                status = (ReportStatus) itilMain.next();
                workingDate = status.getDate();

                sales = salesOpx.getTodaySales(staff.getBranch(), workingDate);
                receipts = salesOpx.getTodaysReceipts(workingDate);
                bankTransactions = salesOpx.getTodaysBankTransaction(workingDate);
                exp = salesOpx.getTodaysFundExpenses(workingDate);
                cashShops = salesOpx.getTodaysCashShop(workingDate);

                bal = salesOpx.getDailySalesBalance(staff.getBranch(), workingDate);

                Calendar cal2 = new GregorianCalendar();
                cal2.setTime(workingDate);

                int dayOfYear = cal2.get(cal.DAY_OF_YEAR);

                int j = 0;

                if (dayOfYear < 15) {

                    j = dayOfYear - (dayOfYear - 1);

                } else if (dayOfYear > 15) {

                    j = dayOfYear - 10;
                }


                search:
                for (int i = (dayOfYear - 1); i >= j; i--) {

                    cal2.set(Calendar.DAY_OF_YEAR, i);

                    previousBal = salesOpx.getPreviousDay(staff.getBranch(), cal2.getTime());

                    if (previousBal != null) {
                        break;
                    }

                }


                if (previousBal != null) {

                    bal.setPreviousBal(previousBal.getBalance());

                } else {

                    bal.setPreviousBal(0);
                    bal.setBalance(0);


                }


                double totalSales = 0.0;
                double totalCashSales = 0.0;
                double totalReceipts = 0.0;
                double totalDiscount = 0.0;
                double totalNYP = 0.0;
                double totalPTB = 0.0;
                double totalExpenses = 0.0;
                double totalBankTransaction = 0.0;
                double totalCashShop = 0.0;




                Sale sale = null;
                Receipt receipt = null;
                Expenses fundExpenses = null;
                BankTransaction bankTransac = null;
                CashShop cashShop = null;


                itil = sales.iterator();


                while (itil.hasNext()) {
                    sale = (Sale) itil.next();
                    totalSales += sale.getTotal();
                    totalCashSales += sale.getAmountPaid();
                    totalDiscount += sale.getTotalDiscount();
                    totalNYP += sale.getBalance();

                }
                itil = receipts.iterator();


                while (itil.hasNext()) {
                    receipt = (Receipt) itil.next();
                    totalReceipts += receipt.getAmount();
                }


                itil = exp.iterator();

                while (itil.hasNext()) {
                    fundExpenses = (Expenses) itil.next();
                    totalExpenses += fundExpenses.getAmount();
                }


                itil = bankTransactions.iterator();
                while (itil.hasNext()) {
                    bankTransac = (BankTransaction) itil.next();
                    totalBankTransaction += bankTransac.getAmountpaid();
                }

                itil = cashShops.iterator();

                while (itil.hasNext()) {
                    cashShop = (CashShop) itil.next();
                    totalCashShop += cashShop.getAmount();
                }

                double todayBalance = (bal.getPreviousBal() + totalCashSales + totalReceipts + totalCashShop) - (totalExpenses + totalBankTransaction);

                bal.setBalance(todayBalance);

                SalesConnection salesCon = new SalesConnection();
                Connection con = salesCon.getCon();
                con.setAutoCommit(false);

                salesOpx.updateDailyBalanceReports(bal, con);
                salesOpx.updateDailyReportStatus(status, staff.getBranch(), con);
            }

            if (staff.getBranch().equals("HEADOFFICE_SALES")) {

                response.sendRedirect("dayreport.jsp");
            } else {


                response.sendRedirect("dayreportbranches.jsp");
            }



        %>
    </body>
</html>
