<%-- 
    Document   : dayreport
    Created on : Feb 2, 2015, 8:35:47 PM
    Author     : THANKGOD
--%>

<%@page import="java.util.GregorianCalendar"%>

<%@page import="java.util.Iterator"%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Calendar"%>

<%@page import="com.topazerp.sales.*"%>
<%


    int timeout = session.getMaxInactiveInterval();
    response.setHeader("Refresh", timeout + "; URL = index.jsp");


    StaffStatus staff = null;
    SalesOperations salesOpx = null;
    Calendar cal = null;;

    DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

    String paymentdate = request.getParameter("paymentdate");
    Date workingDate = null;
    SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");

    DailyBalance bal = null;
    double totalInvoiceShops = 0.0;
    double subtotal = 0.0;



    String username = (String) session.getAttribute("username");

    if (username != null) {

        staff = (StaffStatus) session.getAttribute("LOGIN_USER");
        salesOpx = new SalesOperations();

        cal = OdicUtil.generateDate();

        if (request.getParameter("paymentdate") != null) {
            workingDate = formatter.parse(paymentdate);
        } else {
            workingDate = cal.getTime();
        }



    } else {

        //response.sendRedirect("logout.jsp");
        request.getRequestDispatcher("logout.jsp").forward(request, response);

        return;

    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon"  type="image/png" href="images/favicon.png" />





        <title>Odic Sales</title>

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/sb-admin-2.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>

        <div id="wrapper">

            <!-- Navigation -->
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="odicsales.jsp">ODIC SALES</a>
                </div>
                <!-- /.navbar-header -->
                <div class="navbar-brand"> You are logged in as : <%= staff.getUsername().substring(0, 1).toUpperCase() + staff.getUsername().substring(1, staff.getUsername().length())%></div>


                <ul class="nav navbar-top-links navbar-right">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-envelope fa-fw"></i>  <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-messages">
                            <li>
                                <a href="#">
                                    <div>
                                        <strong>John Smith</strong>
                                        <span class="pull-right text-muted">
                                            <em>Yesterday</em>
                                        </span>
                                    </div>
                                    <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <strong>John Smith</strong>
                                        <span class="pull-right text-muted">
                                            <em>Yesterday</em>
                                        </span>
                                    </div>
                                    <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <strong>John Smith</strong>
                                        <span class="pull-right text-muted">
                                            <em>Yesterday</em>
                                        </span>
                                    </div>
                                    <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#">
                                    <strong>Read All Messages</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                        <!-- /.dropdown-messages -->
                    </li>

                    <!-- /.dropdown -->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-bell fa-fw"></i>  <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-alerts">
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-comment fa-fw"></i> New Comment
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                        <span class="pull-right text-muted small">12 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-envelope fa-fw"></i> Message Sent
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-tasks fa-fw"></i> New Task
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#">
                                    <strong>See All Alerts</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                        <!-- /.dropdown-alerts -->
                    </li>
                    <!-- /.dropdown -->
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                            </li>
                            <li>
                                <a href="changepassword.jsp"><i class="fa fa-fw fa-gear"></i> Change Pswd</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="logout.jsp"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                            </li>
                        </ul>
                        <!-- /.dropdown-user -->
                    </li>
                    <!-- /.dropdown -->
                </ul>
                <!-- /.navbar-top-links -->

                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">
                            <li class="sidebar-search">

                                <!-- /input-group -->
                            </li>
                            <li>
                                <a  href="odicsales.jsp"><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                            </li>
                            <li>
                                <a href="invoices.jsp" ><i class="fa fa-fw fa-file"></i> Invoices</a>
                            </li>
                            <li>
                                <a href="pricelistcic.jsp" ><i class="fa fa-fw fa-file"></i> CIC Price List</a>
                            </li>

                        </ul>
                    </div>
                    <!-- /.sidebar-collapse -->
                </div>
                <!-- /.navbar-static-side -->
            </nav>

            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header text-center"><%= format.format(workingDate)%></h1>                          
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <br>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Invoices
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example2">
                                        <thead>
                                            <tr>
                                                <th>No</th>
                                                <th> Invoice No</th>
                                                <th>Total Invoice</th>
                                                <th>Cash Sales</th>
                                                <th>Discount</th>
                                                <th>NYP</th>
                                                <th>PD to Bank</th>
                                                <th>Tellno</th>
                                                <th>Date</th>
                                                <th>Bank</th>


                                            </tr>
                                        </thead>
                                        <tbody>

                                            <%
                                                DecimalFormat f = new DecimalFormat("###,###.00");

                                                DateFormat fd = new SimpleDateFormat("dd-MM-yyyy");
                                                ArrayList<Sale> sales = salesOpx.getTodaySales(staff.getBranch(), workingDate);


                                                Iterator itil = sales.iterator();
                                                Sale sale = null;
                                                int counter = 1;

                                                while (itil.hasNext()) {

                                                    sale = (Sale) itil.next();
                                                    InvoiceDetails details = salesOpx.getTodaysInvoiceDetails(sale.getInvoiceNo());

                                                    sale.setInvoiceType(details.getInvoiceType());


                                                    if (counter % 2 == 0) {

                                            %>

                                            <tr class="odd gradeX">
                                                <td class="left"><%=counter%></td>
                                                <td class="left"><%= sale.getInvoiceNo()%> </td>
                                                <td class="text-right"><%= f.format(sale.getTotal())%></td>                                     
                                                <td class="text-right">

                                                    <% if (sale.getAmountPaid() > 0) {
                                                    %>
                                                    <%=  f.format(sale.getAmountPaid())%>
                                                    <%

                                                    } else {
                                                    %>

                                                    <%                                                        }
                                                    %>

                                                </td>

                                                <td class="text-right"><% if (sale.getTotalDiscount() > 0) {
                                                    %>
                                                    <%= f.format(sale.getTotalDiscount())%>
                                                    <%

                                                    } else {
                                                    %>

                                                    <%                                                        }
                                                    %>
                                                </td>

                                                <td class="text-right"> <% if (details.getInvoiceType().equals("Credit")) {

                                                    %>
                                                    <%=  f.format(sale.getBalance())%>
                                                    <%
                                                    } else {
                                                    %>
                                                    <%                                                        }
                                                    %>
                                                </td>
                                                <td class="text-right">
                                                    <% if (details.getCashInBank() > 0) {
                                                    %>
                                                    <%= f.format(details.getCashInBank())%>
                                                    <%

                                                    } else {
                                                    %>
                                                    <%                                                        }
                                                    %>                                                   

                                                </td>
                                                <td class="text-right">

                                                    <% if (details.getTellerNo() != null) {

                                                    %>
                                                    <%= details.getTellerNo()%>
                                                    <%
                                                        }%>

                                                </td>

                                                <td class="text-right">

                                                    <% if (details.getPaymentDate() != null) {

                                                    %>
                                                    <%= fd.format(details.getPaymentDate())%>
                                                    <%
                                                        }%>

                                                </td>

                                                <td class="text-right">

                                                    <% if (details.getPaymentBank() != null) {

                                                    %>
                                                    <%= details.getPaymentBank()%>
                                                    <%
                                                        }%>

                                                </td> 

                                            </tr>

                                            <%

                                            } else {

                                            %>

                                            <tr class="even gradeX">
                                                <td class="left"><%=counter%></td>
                                                <td class="left"><%= sale.getInvoiceNo()%> </td>
                                                <td class="text-right"><%= f.format(sale.getTotal())%></td>                                     
                                                <td class="text-right"> <% if (sale.getAmountPaid() > 0) {
                                                    %>
                                                    <%=  f.format(sale.getAmountPaid())%>
                                                    <%

                                                    } else {
                                                    %>

                                                    <%                                                        }
                                                    %>
                                                </td>

                                                <td class="text-right"><% if (sale.getTotalDiscount() > 0) {
                                                    %>
                                                    <%= f.format(sale.getTotalDiscount())%>
                                                    <%

                                                    } else {
                                                    %>

                                                    <%                                                        }
                                                    %>
                                                </td>

                                                <td class="text-right"> <% if (details.getInvoiceType().equals("Credit")) {

                                                    %>
                                                    <%=  f.format(sale.getBalance())%>
                                                    <%
                                                    } else {
                                                    %>
                                                    <%                                                        }
                                                    %>
                                                </td>
                                                <td class="text-right">
                                                    <% if (details.getCashInBank() > 0) {
                                                    %>
                                                    <%= f.format(details.getCashInBank())%>
                                                    <%

                                                    } else {
                                                    %>
                                                    <%                                                        }
                                                    %>                                                   

                                                </td>
                                                <td class="text-right">

                                                    <% if (details.getTellerNo() != null) {

                                                    %>
                                                    <%= details.getTellerNo()%>
                                                    <%
                                                        }%>

                                                </td>

                                                <td class="text-right">

                                                    <% if (details.getPaymentDate() != null) {

                                                    %>
                                                    <%= fd.format(details.getPaymentDate())%>
                                                    <%
                                                        }%>

                                                </td>

                                                <td class="text-right">

                                                    <% if (details.getPaymentBank() != null) {

                                                    %>
                                                    <%= details.getPaymentBank()%>
                                                    <%
                                                        }%>

                                                </td> 
                                            </tr>

                                            <%

                                                    }
                                                    counter++;
                                                }
                                            %>




                                        </tbody>
                                    </table>


                                </div>



                                <!-- /.table-responsive -->                               
                            </div>
                            <!-- /.panel-body -->
                        </div>               <!-- /.panel -->



                    </div>

                    <%



                        ArrayList<Receipt> receipts = salesOpx.getTodaysReceipts(workingDate);

                        if (receipts.size() > 0) {
                            counter = 1;

                    %>

                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Receipts
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example2">
                                        <thead>
                                            <tr>
                                                <th>No</th>
                                                <th> Receipt No</th>
                                                <th>Cust Details</th>
                                                <th>Amount</th>



                                            </tr>
                                        </thead>
                                        <tbody>

                                            <%

                                                itil = receipts.iterator();
                                                Receipt receipt = null;

                                                while (itil.hasNext()) {
                                                    receipt = (Receipt) itil.next();

                                                    if (counter % 2 == 0) {

                                            %>
                                            <tr class="odd gradeX">
                                                <td class="left"><%=counter%></td>
                                                <td class="left"><%= receipt.getReceiptNo()%> </td>
                                                <td class="text-right"><%= receipt.getCustID() + "-" + receipt.getCustName()%></td>                                     
                                                <td class="text-right"><%= f.format(receipt.getAmount())%></td>
                                            </tr>

                                            <%

                                            } else {
                                            %>

                                            <tr class="even gradeX">
                                                <td class="left"><%=counter%></td>
                                                <td class="left"><%= receipt.getReceiptNo()%> </td>
                                                <td class="text-right"><%= receipt.getCustID() + "-" + receipt.getCustName()%></td>                                     
                                                <td class="text-right"><%= f.format(receipt.getAmount())%></td>
                                            </tr>


                                            <%

                                                    }

                                                    counter++;

                                                }

                                            %>

                                        </tbody>
                                    </table>
                                </div>                                                        
                            </div>

                        </div>              


                    </div>
                    <%


                        }
                    %>


                    <%



                        ArrayList<CashShop> cashShops = salesOpx.getTodaysCashShop(workingDate);

                        if (cashShops.size() > 0) {
                            counter = 1;

                    %>

                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Cash From Shops
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example2">
                                        <thead>
                                            <tr>
                                                <th>No</th>
                                                <th> Cash No</th>
                                                <th>Holder</th>
                                                <th>Branch</th>
                                                <th>Amount</th>



                                            </tr>
                                        </thead>
                                        <tbody>

                                            <%
                                                //cashno,holder,branch,amount,date
                                                itil = cashShops.iterator();
                                                CashShop cashShop = null;

                                                while (itil.hasNext()) {
                                                    cashShop = (CashShop) itil.next();

                                                    if (counter % 2 == 0) {

                                            %>
                                            <tr class="odd gradeX">
                                                <td class="left"><%=counter%></td>
                                                <td class="left"><%= cashShop.getCashNo()%> </td>
                                                <td class="text-right"><%= cashShop.getHolder()%></td>  
                                                <td class="text-right"><%= cashShop.getBranch()%></td>   
                                                <td class="text-right"><%= f.format(cashShop.getAmount())%></td>
                                            </tr>

                                            <%

                                            } else {
                                            %>

                                            <tr class="even gradeX">
                                                <td class="left"><%=counter%></td>
                                                <td class="left"><%= cashShop.getCashNo()%> </td>
                                                <td class="text-right"><%= cashShop.getHolder()%></td>  
                                                <td class="text-right"><%= cashShop.getBranch()%></td>   
                                                <td class="text-right"><%= f.format(cashShop.getAmount())%></td>
                                            </tr>


                                            <%

                                                    }

                                                    counter++;

                                                }

                                            %>

                                        </tbody>
                                    </table>
                                </div>                                                        
                            </div>

                        </div>              


                    </div>
                    <%


                        }
                    %>

                    <%



                        ArrayList<BankTransaction> bankTransaction = salesOpx.getTodaysBankTransaction(workingDate);

                        if (bankTransaction.size() > 0) {
                            counter = 1;

                    %>

                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Bank Transactions
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example2">
                                        <thead>
                                            <tr>
                                                <th>No</th>
                                                <th> Branch</th>
                                                <th>Amount</th>
                                                <th> Teller No</th>
                                                <th>Bank</th>



                                            </tr>
                                        </thead>
                                        <tbody>

                                            <%
                                                //bankingbranches(branch,amount, tellerno,bank,date, type
                                                itil = bankTransaction.iterator();
                                                BankTransaction transaction = null;

                                                while (itil.hasNext()) {
                                                    transaction = (BankTransaction) itil.next();

                                                    if (counter % 2 == 0) {

                                            %>
                                            <tr class="odd gradeX">
                                                <td class="left"><%=counter%></td>
                                                <td class="left"><%= transaction.getBranch()%> </td>
                                                <td class="text-right"><%= f.format(transaction.getAmountpaid())%></td>  
                                                <td class="text-right"><%= transaction.getTellerno()%></td>   
                                                <td class="text-right"><%= transaction.getBank()%></td>
                                            </tr>

                                            <%

                                            } else {
                                            %>

                                            <tr class="even gradeX">
                                                <td class="left"><%=counter%></td>
                                                <td class="left"><%= transaction.getBranch()%> </td>
                                                <td class="text-right"><%= f.format(transaction.getAmountpaid())%></td>  
                                                <td class="text-right"><%= transaction.getTellerno()%></td>   
                                                <td class="text-right"><%= transaction.getBank()%></td>
                                            </tr>
                                            <%

                                                    }

                                                    counter++;

                                                }

                                            %>

                                        </tbody>
                                    </table>
                                </div>                                                        
                            </div>

                        </div>              


                    </div>
                    <%


                        }
                    %>

                    <%



                        ArrayList<Expenses> exp = salesOpx.getTodaysFundExpenses(workingDate);

                        if (exp.size() > 0) {
                            counter = 1;

                    %>

                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Fund Expenses
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example2">
                                        <thead>
                                            <tr>
                                                <th>No</th>
                                                <th> Amount</th>

                                            </tr>
                                        </thead>
                                        <tbody>

                                            <%
                                                //bankingbranches(branch,amount, tellerno,bank,date, type
                                                itil = exp.iterator();
                                                Expenses expenses = null;

                                                while (itil.hasNext()) {
                                                    expenses = (Expenses) itil.next();

                                                    if (counter % 2 == 0) {

                                            %>
                                            <tr class="odd gradeX">
                                                <td class="left"><%=counter%></td>
                                                <td class="left"><%= f.format(expenses.getAmount())%> </td>

                                            </tr>

                                            <%

                                            } else {
                                            %>

                                            <tr class="even gradeX">
                                                <td class="left"><%=counter%></td>
                                                <td class="left"><%= f.format(expenses.getAmount())%> </td>
                                            </tr>


                                            <%

                                                    }

                                                    counter++;

                                                }

                                            %>

                                        </tbody>
                                    </table>
                                </div>                                                        
                            </div>

                        </div>              


                    </div>
                    <%


                        }
                    %>


                    <%


                        DailyBalance previousBal = null;

                        sales = salesOpx.getTodaySales(staff.getBranch(), workingDate);
                        receipts = salesOpx.getTodaysReceipts(workingDate);
                        bankTransaction = salesOpx.getTodaysBankTransaction(workingDate);
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

                                bal.setPreviousBal(previousBal.getBalance());
                                break;
                            }

                        }

                        double totalSales = 0.0;
                        double totalCashSales = 0.0;
                        double totalReceipts = 0.0;
                        double totalExpenses = 0.0;
                        double totalBankTransaction = 0.0;
                        double totalCashShop = 0.0;




                        sale = null;
                        Receipt receipt = null;
                        Expenses fundExpenses = null;
                        BankTransaction bankTransac = null;
                        CashShop cashShop = null;


                        itil = sales.iterator();


                        while (itil.hasNext()) {
                            sale = (Sale) itil.next();
                            totalSales += sale.getTotal();
                            totalCashSales += sale.getAmountPaid();
                          
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


                        itil = bankTransaction.iterator();
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


                    %>


                    <!-- /.col-lg-12 -->
                    <div class="col-lg-6">

                        <div class="table-responsive">
                            <table class="table table-bordered table-hover table-striped">
                                <thead>
                                    <tr>
                                        <th>Desc</th>
                                        <th>Amount</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>

                                        <td> Total Sales</td>
                                        <td class="text-right"> 

                                            <% if (totalSales > 0) {
                                            %>

                                            <%= f.format(totalSales)%>
                                            <%
                                            } else {
                                            %>

                                            <%                                                }

                                            %>


                                    </tr>
                                    <tr>
                                        <td>Total Cash Sales</td>
                                        <td class="text-right">
                                            <% if (totalCashSales > 0) {
                                            %>

                                            <%= f.format(totalCashSales)%>
                                            <%
                                            } else {
                                            %>

                                            <%                                                }

                                            %>

                                        </td>
                                    </tr>
                                    
                                    
                                  
                                        
                                    <tr>
                                        <td>Total Inv Shops </td>
                                        <td class="text-right">



                                            <% if (totalCashShop > 0) {
                                            %>

                                            <%= f.format(totalCashShop)%>
                                            <%
                                            } else {
                                            %>
                                            <%= totalInvoiceShops%>
                                            <%
                                                }

                                            %>

                                        </td>
                                    </tr>
                                    
                                    
                                      <tr>
                                        <td>B/F </td>
                                        <td class="text-right">

                                            <% if (bal.getPreviousBal() > 0) {
                                            %>

                                            <%= f.format(bal.getPreviousBal())%>
                                            <%
                                            } else {
                                            %>
                                            <%= bal.getPreviousBal()%>
                                            <%
                                                }

                                            %>

                                        </td>
                                    </tr>
                                    
                                    
                                    <tr>
                                        <td>Receipts </td>
                                        <td class="text-right">

                                            <% if (totalReceipts > 0) {
                                            %>

                                            <%= f.format(totalReceipts)%>
                                            <%
                                            } else {
                                            %>
                                            <%= totalReceipts%>
                                            <%
                                                }

                                            %>

                                        </td>
                                    </tr>
                                    <tr>

                                        <td> Subtotal </td>
                                        <td class="text-right">  <% if (subtotal > 0) {
                                            %>

                                            <%= f.format(subtotal)%>
                                            <%
                                            } else {
                                            %>
                                            <%= subtotal%>
                                            <%
                                                }

                                            %> </td>
                                    </tr> 
                                    
                                    <tr>
                                        <td>Less Bank Transaction </td>
                                        <td class="text-right">
                                            <% if (totalBankTransaction > 0) {
                                            %>

                                            <%= f.format(totalBankTransaction)%>
                                            <%
                                            } else {
                                            %>
                                            <%= totalBankTransaction%>
                                            <%
                                                }

                                            %> </td>
                                        
                                    </tr>
                                    <tr>
                                        <td>Less Expenses </td>
                                        <td class="text-right">
                                            <% if (totalExpenses > 0) {
                                            %>

                                            <%= f.format(totalExpenses)%>
                                            <%
                                            } else {
                                            %>
                                            <%= totalExpenses%>
                                            <%
                                                }

                                            %> </td>
                                        
                                    </tr>

                                    <tr>
                                        <td>Balance</td>
                                        <td class="text-right"><% if (todayBalance > 0) {
                                            %>

                                            <%= f.format(todayBalance )%>
                                            <%
                                            } else {
                                            %>
                                            <%= todayBalance %>
                                            <%
                                                }

                                            %> </td>

                                    </tr>

                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
            <!-- /#page-wrapper -->

        </div>
        <!-- /#wrapper -->

        <!-- jQuery Version 1.11.0 -->
        <script src="js/jquery-1.11.0.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="js/plugins/metisMenu/metisMenu.min.js"></script>

        <!-- DataTables JavaScript -->
        <script src="js/plugins/dataTables/jquery.dataTables.js"></script>
        <script src="js/plugins/dataTables/dataTables.bootstrap.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="js/sb-admin-2.js"></script>

        <!-- Page-Level Demo Scripts - Tables - Use for reference -->
        <script>
            $(document).ready(function() {
                $('#dataTables-example2').dataTable();
            });
        </script>


    </body>

</html>

