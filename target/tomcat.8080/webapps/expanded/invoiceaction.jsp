<%-- 
    Document   : invoiceaction
    Created on : Dec 14, 2014, 11:32:19 AM
    Author     : THANKGOD
--%>

<%@page import="java.text.DateFormat"%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.Random"%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Connection"%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%@page import="java.util.Calendar"%>

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

            StaffStatus staff = null;

            if ((String) session.getAttribute("username") != null) {
                staff = (StaffStatus) session.getAttribute("LOGIN_USER");

            } else {
                response.sendRedirect("logout.jsp");
            }

            String invoiceno = null;

            SalesOperations salesOpx = new SalesOperations();
            Sale sale = null;
            if (request.getParameter("setcompleted") != null) {

                invoiceno = request.getParameter("setcompleted");
                salesOpx.setInvoiceCompleted(invoiceno);

            } else if (request.getParameter("voidinvoice") != null) {

                invoiceno = request.getParameter("voidinvoice");

                //Date date = new SimpleDateFormat("yy:MM:dd").parse(request.getParameter("dateforsupply"));

                SalesConnection salesCon = new SalesConnection();
                Connection con = salesCon.getCon();
                con.setAutoCommit(false);



                sale = salesOpx.getSaleForAdjustment(invoiceno, con);

                DailyInvoiceTotal counter = salesOpx.getDailySalesCounterVoidInvoice(staff, sale.getDate(), con);

                int count = counter.getTotalInvoice();
                int counting = count - 1;
               
                counter.setTotalInvoice(counting);
                salesOpx.updateDailySalesCounterVoid(counting, staff, sale.getDate(), con);



                if (sale.getSuppliedFrom().equals("supplied") && sale.getSupplyPoint().equals(staff.getBranch())) {
                    //adjust inventory

                    ArrayList<OdicStock> arr = salesOpx.getBranchStockDetails(staff.getBranch(), invoiceno, con);

                    Iterator itil = arr.iterator();
                    OdicStock prodStock = null;


                    while (itil.hasNext()) {
                        prodStock = (OdicStock) itil.next();
                        Random rand = new Random();


                        prodStock.setStockType("add");

                        prodStock.setDate(OdicUtil.convertJavaDateToSqlDate(new Date()));
                        prodStock.setGoodsReceived(prodStock.getGoodSold());


                        prodStock.setId(OdicUtil.generateStockId(rand.nextInt()));
                        DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:MM:ss");
                        DateFormat formatter2 = new SimpleDateFormat("yyyy-MM-dd");

                        prodStock.setDateString(formatter.format(new Date()));

                        OdicStock lastStockId = null;
                        if (salesOpx.getLastStockId(staff.getBranch(), prodStock.getProductId(), con) == null) {
                            salesOpx.insertBranchStockId(prodStock, con);
                        } else {
                            lastStockId = salesOpx.getLastStockId(staff.getBranch(), prodStock.getProductId(), con);
                        }


                        OdicStock lastStock = salesOpx.getLastStock(lastStockId.getId().trim(), con);
                        int lastbalance = lastStock.getBalance();

                        prodStock.setBalance(lastbalance + Integer.valueOf(prodStock.getGoodSold()));
                        prodStock.setDate(OdicUtil.convertJavaDateToSqlDate(formatter2.parse(prodStock.getDateString())));
                        prodStock.setBranchId(staff.getBranch());


                        salesOpx.insertBranchStocks(prodStock, con);

                        OdicStock stockBalance = salesOpx.getStockBalance(prodStock.getProductId(), staff.getBranch(), con);
                        stockBalance.setBalance(stockBalance.getClosingStock() + prodStock.getGoodSold());

                        salesOpx.updateStockBalance(stockBalance, prodStock.getProductId(), staff.getBranch(), con);
                        salesOpx.updateBranchLastStockId(prodStock, con);
                    }

                    //change supplied status in invoices to supplied
                    //update supllied from to branch or warehouse
                    //update supply status to supply so as to disable the product id button
                    salesOpx.deleteSupply(invoiceno, con);

                } else if (sale.getSuppliedFrom().equals("supplied") && sale.getSupplyPoint().equals("Warehouse")) {

                    ArrayList<OdicStock> arr = salesOpx.getBranchStockDetailsWarehouse("Warehouse", invoiceno, con);



                    Iterator itil = arr.iterator();
                    OdicStock prodStock = null;


                    while (itil.hasNext()) {
                        prodStock = (OdicStock) itil.next();
                        Random rand = new Random();


                        prodStock.setStockType("add");

                        prodStock.setDate(OdicUtil.convertJavaDateToSqlDate(new Date()));
                        prodStock.setGoodsReceived(prodStock.getGoodSold());


                        prodStock.setId(OdicUtil.generateStockId(rand.nextInt()));
                        DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:MM:ss");
                        DateFormat formatter2 = new SimpleDateFormat("yyyy-MM-dd");

                        prodStock.setDateString(formatter.format(new Date()));

                        OdicStock lastStockId = null;
                        if (salesOpx.getLastStockId("Warehouse", prodStock.getProductId(), con) == null) {
                            salesOpx.insertBranchStockId(prodStock, con);
                        } else {
                            lastStockId = salesOpx.getLastStockId("Warehouse", prodStock.getProductId(), con);
                        }


                        OdicStock lastStock = salesOpx.getLastStock(lastStockId.getId().trim(), con);
                        int lastbalance = lastStock.getBalance();

                        prodStock.setBalance(lastbalance + Integer.valueOf(prodStock.getGoodSold()));
                        prodStock.setDate(OdicUtil.convertJavaDateToSqlDate(formatter2.parse(prodStock.getDateString())));
                        prodStock.setBranchId(staff.getBranch());


                        salesOpx.insertBranchStocks2(prodStock, con);

                        OdicStock stockBalance = salesOpx.getStockBalance2(prodStock.getProductId(), "Warehouse", con);


                        stockBalance.setRedColor(stockBalance.getRedColor() + prodStock.getRedColor());
                        stockBalance.setGreenColor(stockBalance.getGreenColor() + prodStock.getGreenColor());
                        stockBalance.setBlueColor(stockBalance.getBlueColor() + prodStock.getBlueColor());
                        stockBalance.setBlackColor(stockBalance.getBlackColor() + prodStock.getBlackColor());
                        stockBalance.setYgColor(stockBalance.getYgColor() + prodStock.getYgColor());
                        stockBalance.setGreyColor(stockBalance.getGreyColor() + prodStock.getGreenColor());
                        stockBalance.setWhiteColor(stockBalance.getWhiteColor() + prodStock.getWhiteColor());
                        stockBalance.setSilverColor(stockBalance.getSilverColor() + prodStock.getSilverColor());



                        stockBalance.setDate(OdicUtil.convertJavaDateToSqlDate(new Date()));
                        stockBalance.setDateString(formatter.format(new Date()));
                        
                        int balance2 = stockBalance.getBalance() + prodStock.getGoodSold();
                        
                        stockBalance.setBalance(balance2);

                        salesOpx.updateStockBalance2(stockBalance, prodStock.getProductId(), "Warehouse", con);
                        salesOpx.updateBranchLastStockId2(prodStock, con);


                        //change supplied status in invoices to supplied
                        //update supllied from to branch or warehouse
                        //update supply status to supply so as to disable the product id button
                       
                    }                    
                    salesOpx.deleteSupply(invoiceno, con);

                }

                salesOpx.deleteSale(invoiceno, con);
                salesOpx.deleteInvoiceBody(invoiceno, con);
                salesOpx.insertVoidedInvoiceNo(invoiceno, staff.getBranch(), con, staff.getUsername());
                
            } else if (request.getParameter("postinvoice") != null) {
                invoiceno = request.getParameter("postinvoice");

                sale = salesOpx.getSaleForAdjustment(invoiceno);
                salesOpx.postInvoice(sale);
                salesOpx.setPosted(sale);

            }


            if (request.getParameter("dateforsupply") != null) {

                response.sendRedirect("dayinvoices.jsp?dateforsupply=" + request.getParameter("dateforsupply"));

            } else {

                response.sendRedirect("dailyinvoices.jsp");

            }


        %>


    </body>
</html>
