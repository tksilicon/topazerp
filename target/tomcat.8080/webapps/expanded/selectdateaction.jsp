<%-- 
    Document   : banktransactionaction
    Created on : Dec 15, 2014, 3:06:13 PM
    Author     : THANKGOD
--%>


<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
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




            SalesOperations salesOpx = new SalesOperations();

            String next = "";

            if (session.getAttribute("transaction") != null) {

                BankTransaction transaction = null;

                transaction = (BankTransaction) session.getAttribute("transaction");
                salesOpx.insertBankTransaction(transaction);
                next = "banktransactionsmanagement.jsp";


            } else if (session.getAttribute("receipts") != null) {
                next = "generatereceipt.jsp";

            } else if (session.getAttribute("cash") != null) {
                next = "generatecash.jsp";

            } else if (session.getAttribute("expenses") != null) {

                Expenses expenses = (Expenses) session.getAttribute("expenses");

                int bal = salesOpx.getExpensesBal();
                bal = bal - expenses.getAmount();

                expenses.setBalance(bal);
                salesOpx.insertExpensesBalance(bal, expenses);
                salesOpx.insertExpenses(expenses);
                next = "allexpenses.jsp";


            } else if (session.getAttribute("fundexpenses") != null) {

                Expenses expenses = (Expenses) session.getAttribute("fundexpenses");
                salesOpx.insertFundExpenses(expenses);
                next = "allfundexpenses.jsp?fundexpenses=fundexpenses";
            }

            response.sendRedirect(next);










        %>


    </body>
</html>
